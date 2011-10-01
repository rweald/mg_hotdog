require 'spec_helper'
require 'mg_hotdog/parts/hello_part'

module MgHotDog

  describe HelloPart do
    describe "#process" do
      before :each do
        mock_message_and_room
      end
      it "should say hello" do

        @room.should_receive(:speak).with(/Hello/)

        HelloPart.new.process(@message, @robot)
      end
    end
  end
end

