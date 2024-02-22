class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :author_name
      t.text :image
      t.float :duration
      t.string :description

      t.timestamps
    end
  end
end
