require 'rover_position'

RSpec.describe RoverPosition do

  let(:rp) { RoverPosition.new }
   it 'returns a default state' do
     expect(rp.state).to eq([0,0,:n])
   end

   it '#l' do
     rp.l
     expect(rp.state).to eq([0,0,:w])
   end

    it '#r' do
     rp.r
     expect(rp.state).to eq([0,0,:e])
   end

   it "#m" do
     rp.m
     expect(rp.state).to eq([0,1,:n])
   end

   it "r + m" do
     rp.r
     rp.m
     expect(rp.state).to eq([1,0,:e])
   end

   it "l m l" do
     rp.l
     rp.m
     rp.l
     expect(rp.state).to eq([-1, 0,:s])
   end

    it "r + r + m" do
     2.times { rp.r }
     rp.m
     expect(rp.state).to eq([0, -1,:s])
   end

   it 'exec string cmd' do
     rp.cmd 'rmmlm'
     expect(rp.state).to eq([2,1,:n])
   end

 end
