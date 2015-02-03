require 'spec_helper'
require 'mg_hotdog/parts/pablo_part.rb'

describe PabloPart do

  before :each do
    mock_message_and_robot
  end
  it "should shout PABLO!!!!! when paul enters" do
    @message.stub(:type).and_return("EnterMessage")
    @user.stub(:name).and_return( "Paul Panarese" )

    @robot.should_receive(:speak).with(/PABLO!!!!!/)

    PabloPart.new.process(@message,@robot)
  end

  it "should not respond to paul's text messages" do
    @message.stub(:type).and_return( "TextMessage")
    @user.stub(:name).and_return( "Paul Panarese")

    @robot.should_not_receive :speak

    PabloPart.new.process(@message,@robot)

  end

  it "should not respond to someone else's enter message" do
    @message.stub(:type).and_return( "EnterMessage")

    @robot.should_not_receive :speak

    PabloPart.new.process(@message,@robot)
  end
end
