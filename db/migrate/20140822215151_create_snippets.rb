class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.float :starttime
      t.float :endtime
      t.belongs_to :video, index: true

      t.timestamps
    end
  end
end
