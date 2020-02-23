class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :image
      t.string :title
      t.string :story
      t.integer :user_id

      t.timestamps
    end
  end
end
