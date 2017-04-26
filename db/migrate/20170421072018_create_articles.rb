class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :summary
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
