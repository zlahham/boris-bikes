require "bike"

describe Bike do
  it "should tell if working" do
    expect(subject).to respond_to :working?
  end

  it 'can be reported as broken' do
    subject.report_broken
    expect(subject).to be_broken
  end

  it 'should tell if broken' do
    expect(subject).to respond_to :broken?
  end
end
