require "spec_helper"

describe CtaBusApi do
  let(:subject) { described_class.new(key: "hello") }
  it "gets the current time from the api" do
    expect(subject.current_time).to eq("20090611 14:42:32")
  end
end