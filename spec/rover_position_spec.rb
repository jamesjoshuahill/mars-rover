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

   it "l m" do
     rp.l
     rp.m
     expect(rp.state).to eq([-1, 0,:w])
   end

 end
