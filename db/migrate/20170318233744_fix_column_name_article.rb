class FixColumnNameArticle < ActiveRecord::Migration
  def change
    rename_column :articles, :descripton, :description
  end
end
