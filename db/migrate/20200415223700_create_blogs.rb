class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.integer :views, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
