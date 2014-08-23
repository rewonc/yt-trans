class AddVotesEtcToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :votes, :integer
    add_column :videos, :durationString, :string
    add_column :videos, :percent, :integer
  end
end
