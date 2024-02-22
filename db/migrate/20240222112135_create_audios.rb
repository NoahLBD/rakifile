class CreateAudios < ActiveRecord::Migration[7.1]
  def change
    create_table :audios do |t|
      t.string :name=string
      t.string :author_name=string
      t.string :image=text
      t.string :audio=file
      t.string :duration=float
      t.string :description=string

      t.timestamps
    end
  end
end
