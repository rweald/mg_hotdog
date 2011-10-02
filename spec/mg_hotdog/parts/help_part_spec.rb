require 'spec_helper'
require 'mg_hotdog/parts/help_part'

describe HelpPart do
  describe "#process" do
    before :each do
      mock_message_and_robot
    end

    it "should identify itself" do
      @robot.should_receive(:speak).with(/I AM THE MAGNESIUM HOTDOG/)
      HelpPart.new.process(@message, @robot)
      
    end

  end
end


