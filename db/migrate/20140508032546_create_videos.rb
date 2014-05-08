class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name

      t.timestamps
    end
    #make sure names are unique
    add_index :videos, :name, unique: true
  end
end
