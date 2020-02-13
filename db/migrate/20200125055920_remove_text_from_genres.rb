class RemoveTextFromGenres < ActiveRecord::Migration[5.2]
  def change
    remove_column :genres, :text, :string
  end
end
