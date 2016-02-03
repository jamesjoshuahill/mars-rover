require 'rover_position'

RSpec.describe RoverPosition do

  let(:rp) { RoverPosition.new }
   it 'returns a default position' do
     expect(rp.position).to eq([0,0,:n])
   end

   it '#l' do
     rp.l
     expect(rp.position).to eq([0,0,:w])
   end

    it '#r' do
     rp.r
     expect(rp.position).to eq([0,0,:e])
   end
end
