require 'rover_position'

RSpec.describe RoverPosition do
   it 'returns a default state' do
     rp = RoverPosition.new

     expect(rp.get).to eq([0,0,:n])
   end
end
