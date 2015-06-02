class School < OpenStruct

  def self.service
    @service ||= SchoolistService.new
  end

  def self.all
    service.schools.map {|data| new(data)}
  end

  def self.find(id)
    new(service.school(id))
  end

  def self.create(params)
    new(service.create_school(params))
  end
end
