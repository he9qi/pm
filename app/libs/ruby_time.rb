class RubyTime

  def self.to_nsdate(dateString)
    date_formatter = NSDateFormatter.alloc.init
    date_formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    date_formatter.dateFromString dateString
  end

end