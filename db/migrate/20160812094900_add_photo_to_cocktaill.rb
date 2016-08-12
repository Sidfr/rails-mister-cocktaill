class AddPhotoToCocktaill < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktaills, :photo, :string
  end
end
