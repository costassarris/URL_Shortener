require 'spec_helper'

describe Url, :type => :model do

  it "can create a unique key" do
    url = Url.new(original: "www.google.com")
    url.generate_key
    expect(url.key).not_to be nil
  end

end