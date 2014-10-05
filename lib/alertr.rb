require 'httparty'
require "alertr/version"

class AlertrClient

  def self.alert(list, title, body, level = :info)

    alert = {
      :title => title,
      :body => body,
      :list => list,
      :level => level.to_s
    }

    HTTParty.post('http://alertr.co/api/v1/alerts', :body => alert )

  end
end
