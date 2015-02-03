require 'spec_helper'
require 'mg_hotdog/parts/hello_part'


  describe HelloPart do
    describe "#process" do
      before :each do
        mock_message_and_robot
      end
      it "should say hello to the author of the message" do

        @robot.should_receive(:speak).with(/Hello #{@user.name}/)
        HelloPart.new.process(@message, @robot)
      end
    end
  end

