require 'spec_helper'

describe VideosController, "video api" do
  it "#index returns json" do
    videos = Video.all.to_json
    status = get "api/videos.json"
    status.should eq(200)
    response.body.should eq(videos)
  end

  it "#show returns json" do
    video = Video.first
    status = get "api/videos/#{video.id}.json"
    status.should eq(200)
    response.body.should eq(video.to_json)
  end
end