class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
			t.references :user, index: true, null: false

      t.timestamps null: false
    end
  end
end
