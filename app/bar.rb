class Bar

  attr_accessor :name, :lat, :lng

  def initialize(options)
    self.name = options[:name]
    self.lat = options[:location][:lat]
    self.lng = options[:location][:lng]
    @coordinate = CLLocationCoordinate2D.new
    @coordinate.latitude = self.lat
    @coordinate.longitude = self.lng
  end

  def title
    @name
  end

  def coordinate
    @coordinate
  end

  def self.closest(lat, lon)
    error_ptr = Pointer.new(:object)
    data = NSData.alloc.initWithContentsOfURL(NSURL.URLWithString((buildUrl(lat, lon))), options:NSDataReadingUncached, error:error_ptr)
    #bars_file = NSBundle.mainBundle.pathForResource('offline_bars', ofType:'json')
    #errorPointer = Pointer.new(:object)
    #data = NSData.alloc.initWithContentsOfFile(bars_file, options:NSDataReadingUncached, error:errorPointer)
    #unless data
    #  printError errorPointer[0]
    #  return defaultAnswers
    #end
    json = BubbleWrap::JSON.parse(data)
    json[:response][:venues].map do |bar_json|
      Bar.new(bar_json)
    end
  end

  private

  def self.buildUrl(lat, lon)
    data = { client_id: "WEGMHW0AXTRXXVBQOTBVMG0IWP0B54DA1CE5NEDGYPDKOQVG", client_secret: "A5VASCFN2AE5YW2CMXXBTK2KKEUIFUOCNCLQN5343X2FCKLX", v: "20120501", ll: [lat, lon].join(','), radius: 5000, categoryId: "4bf58dd8d48988d116941735", intent: "browse"}
    url = "https://api.foursquare.com/v2/venues/search?"
    data.each do |key, value|
      url += "#{key}=#{value}&"
    end
    url
  end

end
