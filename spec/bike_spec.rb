require './lib/bike.rb'

describe Bikes do
  it { is_expected.to respond_to :working? }

end
