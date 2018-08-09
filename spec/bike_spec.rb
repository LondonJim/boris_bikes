require 'bike'

describe Bike do

    it { is_expected.to respond_to(:working) }

    it 'allows bikes to be reported broken' do
        bike = Bike.new
        bike.report_broken
        expect(bike.working).to be false
    end

end