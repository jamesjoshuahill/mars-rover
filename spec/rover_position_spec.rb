require 'rover_position'

RSpec.describe RoverPosition do
   it 'returns a default position' do
     rp = RoverPosition.new

     expect(rp.position).to eq([0,0,:n])
   end

   it '#l' do
     rp = RoverPosition.new
     rp.l
     expect(rp.position).to eq([0,0,:w])
   end

    it '#r' do
     rp = RoverPosition.new
     rp.r
     expect(rp.position).to eq([0,0,:e])
   end
end
