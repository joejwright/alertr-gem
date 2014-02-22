require 'httparty'
require "alertr/version"

module Alertr

  def send(title, body, list, level=:info)

    alert = {
      :title => title,
      :body => body,
      :list => list,
      :level => level
    }

    HTTParty.post('http://alertr.co/api/v1/notifications', :body => alert )

  end
end
