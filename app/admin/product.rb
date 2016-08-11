ActiveAdmin.register Product do
  permit_params :name, :description, :price, :imagen, :category_id, :stock

end
