require "spec_helper"

describe CtaBusApi do
  let(:subject) { described_class.new(key: "hello") }
  it "gets the current time from the api" do
    expect(subject.current_time).to eq("20090611 14:42:32")
  end

  it "gets all the available routes" do
    expect(subject.routes).to eq(["Indiana/Hyde Park", "Hyde Park Express", "King Drive", "King Drive Express"])
  end
end
