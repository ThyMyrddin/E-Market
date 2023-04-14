class AddLocalisationToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :localisation, :string
  end
end
