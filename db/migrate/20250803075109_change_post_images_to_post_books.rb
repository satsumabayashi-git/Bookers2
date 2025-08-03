class ChangePostImagesToPostBooks < ActiveRecord::Migration[6.1]
  def change
    rename_table :post_images, :post_books
  end
end
