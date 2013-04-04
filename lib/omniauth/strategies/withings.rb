require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies

    class Withings < OmniAuth::Strategies::OAuth
      
      option :name, "withings"

      option :client_options, {
          :site               => 'https://oauth.withings.com',
          :request_token_path => '/account/request_token',
          :access_token_path  => '/account/access_token',
          :authorize_path     => '/account/authorize'
      }

      uid do
        access_token.params['userid']
      end
    end
  end
end