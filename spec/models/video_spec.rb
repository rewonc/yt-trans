require 'spec_helper'

describe Video do
  before do
    @video = Video.new(name: "Momofuku")
  end

  subject { @video }

  it { should respond_to(:name) }
  it { should be_valid }

  describe "when name is not present" do
    before { @video.name = " " }
    it { should_not be_valid }
  end

  describe "when name is already taken" do
    before do
      video_with_same_name = @video.dup
      video_with_same_name.name = @video.name.upcase
      video_with_same_name.save
    end

    it { should_not be_valid }
  end
end
