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
        :token => '',
        #Insert number with the +1 in front of it and message below
        :phonenumber => "",
        :message => "All page properties for Writer text documents, like for example the page orientation, are defined by page styles.
By default, a new text document uses the 'Default' page style for all pages.
If you open an existing text document, different page styles may have been applied to the different pages."
    }
    }
  end

end
