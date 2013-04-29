class Gramp::Client

  attr_accessor :tracking_id

  # Initializes the Gramp::Client. Properly formatted tracking_id required
  def initialize(tracking_id)
    raise ArgumentError, "Invalid tracking ID" unless valid_tracking_id?(tracking_id)

    @tracking_id = tracking_id 
  end

  # Validates the incoming string according to a regular expression that
  # represents the UA id format, as specified by Google
  def self.valid_tracking_id?(tracking_id)
    !Regexp.new(/\bUA-\d{4,10}-\d{1,4}\b/).match(tracking_id).nil?
  end

end
