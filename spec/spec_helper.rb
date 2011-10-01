$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__) + '/../lib')

require 'mg_hotdog'

def mock_message_and_room
        @robot = double()
        @room = double()
        @robot.stub(:room).and_return(@room)

        @user = double()
        @user.stub(:name).and_return('bob')

        @message = double()
        @message.stub(:user).and_return(@user)
end
