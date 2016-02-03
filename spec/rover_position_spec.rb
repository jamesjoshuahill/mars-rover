require 'rover_position'

RSpec.describe RoverPosition do
   it 'returns a default position' do
     rp = RoverPosition.new

     expect(rp.position).to eq([0,0,:n])
   end
end
