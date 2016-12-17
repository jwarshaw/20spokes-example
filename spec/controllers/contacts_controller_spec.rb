require 'rails_helper'
require 'spec_helper'

RSpec.describe ContactController, type: :controller do
	describe "GET #index" do
	  it "responds with status code 200" do
	  	get :index
	  	expect(response).to have_http_status 200
		end
	end
end