class SchoolistService
  attr_reader :connection

  def initialize
    @connection = Hurley::Client.new('http://localhost:3000/v1')
  end

  def schools
    parse(connection.get('schools').body)
  end

  def school(id)
   parse(connection.get("schools/#{id}").body)
  end

  def counties
    parse(connection.get('counties').body)
  end

  def county(id)
   parse(connection.get("counties/#{id}").body)
  end

  private

    def parse(response)
     JSON.parse(response, symbolize_names: true)
    end

  private

    def parse(response)
     JSON.parse(response, symbolize_names: true)
    end

end
