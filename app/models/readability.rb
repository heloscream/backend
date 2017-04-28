class Readabilty<ActiveRecord::Base

  require 'odyssey'

  def self.readabilty_score(text)
    Odyssey.flesch_kincaid_re(text, true)
  end

end