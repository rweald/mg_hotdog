module MgHotdog
  class Connection
    def self.open(room_id)
      campfire = Tinder::Campfire.new("iclab", "3c2e8c4d871e61c081e3b86f03daca373cf39f63")
      campfire.room.first
    end
  end
end
