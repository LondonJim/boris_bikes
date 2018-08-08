require 'docking_station'
require 'bike'

describe DockingStation do

    it { is_expected.to respond_to(:release_bike) }

    it 'responds to #release_bike' do 
    expect(subject).to respond_to :release_bike
    end


    # the below test is from the walkthrough - maybe a nicer way of writing the above test? 
    it 'releases working bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
    end


    it "#dock method takes an argument" do 
        is_expected.to respond_to(:dock).with(1).argument 
    end

    it { is_expected.to respond_to(:bikes) }

    it 'returns docked bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bikes).to eq bike
    end

    it "if has #dock called on it then expect #bikes to return the bike" do
        bike2 = Bike.new
        station = DockingStation.new
        station.dock(bike2)
        expect(station.bikes).to eq(bike2)
    end


    it "#release_bikes fails if docking station holds no bike" do
        # if subject.bikes == nil
        expect { subject.release_bike }.to raise_error 'No bikes available'
    end

end