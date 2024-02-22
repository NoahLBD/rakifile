class CreateAudioPosts < ActiveRecord::Migration[7.1]
  def change
    create_table :audio_posts do |t|
      t.string :Name
      t.string :Author_name
      t.text :Image
      t.string :Description

      t.timestamps
    end
  end
end
