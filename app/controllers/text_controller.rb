require 'rubygems'
require 'rest_client'
require 'tropo-webapi-ruby'

class TextController < ApplicationController
  def sendSMS
    RestClient.get 'https://api.tropo.com/1.0/sessions',
      {
        :params => {
        :action => 'create',
        #Insert token below, which may be SMS or voice.  It will correspond to a project on your
        #tropo account
        :token => '183571955e6e5945ac4a37c8762c5e928af42bccdc187a2df99051b259052fb68a9afc8d85ccaa99acf25eae',
        #Insert number with the +1 in front of it and message below
        :phonenumber => "+12019257712",
        :message => "All"
    }
    }
  end

end
