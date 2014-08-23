class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :category
      t.string :content
      t.integer :votes
      t.belongs_to :snippet, index: true

      t.timestamps
    end
  end
end
