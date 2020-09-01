class PhoenixFacade
  def self.members_from_house(house)
    members = potter_service.find_order_of_the_phoenix_members(house)
    @members = members.map do |member|
      Character.new(member)
    end
  end

  private

  def self.potter_service
    @potter_service ||= PotterService.new
  end
end
