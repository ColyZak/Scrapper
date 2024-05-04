require_relative '../lib/dark_trader'



describe "the dark_trader method" do

    it "should return an array of hashes" do

        expect(dark_trader).to be_an_instance_of(Array)
    end

 end