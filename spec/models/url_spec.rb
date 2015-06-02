require 'spec_helper'

describe Url, :type => :model do

  it "can create a unique key" do
    url = Url.new(original: "www.google.com")
    url.generate_key
    expect(url.key).not_to be nil
  end

  it "can create a shortened URL with the unique key" do
    url = Url.new(original: "www.google.com")
    url.generate_key
    url.shorten
    expect(url.shortened).to eq current_path + url.key
  end



end