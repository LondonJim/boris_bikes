require 'docking_station'

describe DockingStation do

    it { is_expected.to respond_to(:release_bike) }

    it 'responds to #release_bike' do 
    expect(subject).to respond_to :release_bike
    end

    it 'creates a new object of the .bike class when #release_bike is called against it' do 
    expect(subject.release_bike.working?).to eq true
    end

    # the below test is from the walkthrough - maybe a nicer way of writing the above test? 
    it 'releases working bikes' do
        bike = subject.release_bike
        expect(bike).to be_working
    end

end