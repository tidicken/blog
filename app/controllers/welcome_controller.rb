class WelcomeController < ApplicationController

require 'open-uri'
require 'json'

  def index
  end

  def home
	@results = JSON.parse(open("http://developer.itsmarta.com/BRDRestService/BRDRestService.svc/GetAllBus").read)
	  	
  end

  def about
  end

  def contact
  end

  def ajax
  end
end

