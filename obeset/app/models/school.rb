class School

  def self.service
    @service ||= SchoolistService.new
  end

  def self.all
    service.schools
  end
end
