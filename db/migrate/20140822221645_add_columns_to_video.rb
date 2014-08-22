class AddColumnsToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :code, :string
    add_column :videos, :tags, :string
    add_column :videos, :duration, :integer
  end
end
