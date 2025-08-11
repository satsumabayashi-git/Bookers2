class RenameOpinionColumnToPostBooks < ActiveRecord::Migration[6.1]
  def change
    rename_column :post_books, :opinion, :body
  end
end
