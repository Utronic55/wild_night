class AddTextToGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :text, :longtext
  end
end
