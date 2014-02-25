require 'httparty'
require "alertr/version"

class AlertrClient

  def self.alert(title, body, list, level = :info)

    alert = {
      :title => title,
      :body => body,
      :list => list,
      :level => level.to_s
    }

    HTTParty.post('http://alertr.co/api/v1/notifications', :body => alert )

  end
end
