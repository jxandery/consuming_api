
class County

  def self.service
    @service ||= SchoolistService.new
  end

  def self.all
    service.counties
  end

  def self.find(id)
    service.county(id)
  end


end
