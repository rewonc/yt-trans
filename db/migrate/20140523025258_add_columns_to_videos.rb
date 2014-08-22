class AddColumnsToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :url, :string
    add_column :videos, :title, :string
    add_column :videos, :description, :string
    add_column :videos, :views, :integer
    add_column :videos, :language, :string
  end
end
