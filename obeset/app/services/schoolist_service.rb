class SchoolistService
  attr_reader :connection

  def initialize
    @connection = Hurley::Client.new('http://localhost:3000/v1')
  end

  def schools
    JSON.parse(connection.get('schools').body, sybmolize_names: true)
  end

end
