require 'elasticsearch/model'

class Product < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  belongs_to :category
  has_many   :orders

  mount_uploader :imagen, ImageUploader

  settings index: { number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :name,        analyzer: 'english'
      indexes :description, analyzer: 'english'
    end
  end

  def lookup
  end

  class << self
    def search(*args,&block)
      __elasticsearch__.search(*args, &block)
    end
  end

end
Product.import
