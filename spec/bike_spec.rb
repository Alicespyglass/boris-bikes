require './lib/bike.rb'

describe Bikes do
  it { is_expected.to respond_to :working? }

  it 'Can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
  end

end
