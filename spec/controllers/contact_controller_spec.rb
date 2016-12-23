require 'rails_helper'
require 'spec_helper'

RSpec.describe ContactController, type: :controller do
	describe "GET #index" do
	  it "responds with status code 200" do
	  	get :index
	  	expect(response).to have_http_status 200
		end
	end
	
	describe "POST #create" do
    it "responds with status code 200" do
      post :create, :contact => {first_name: "Jonathan", last_name: "Warshaw", email: "jonathan.warshaw@gmail.com", message: "and now for something completely different..."}
      expect(response).to have_http_status 200
    end
    
	  context "when valid params are passed" do
      it "creates a new contact in the database" do
        expect{ post :create, :contact => {first_name: "Jonathan", last_name: "Warshaw", email: "jonathan.warshaw@gmail.com", message: "and now for something completely different..."} }.to change{Contact.all.count}.by 1
      end

      it "assigns the newly created contact as @contact" do
        post :create, :contact => {first_name: "Jonathan", last_name: "Warshaw", email: "jonathan.warshaw@gmail.com", message: "and now for something completely different..."}
        expect(assigns(:contact)).to eq Contact.last
      end
    end

    context "when invalid params are passed" do
      it "does not create a new contact in the database" do
        expect{ post :create, :contact => {first_name: "Jonathan", last_name: "Warshaw", email: "jonathan.warshaw@gmail.com"} }.to_not change{Contact.all.count}
      end

      it "does not assign the submitted contact information as @contact" do
        post :create, :contact => {first_name: "Jonathan", email: "jonathan.warshaw@gmail.com", message: "and now for something completely different..."}
        expect(assigns(:contact)).to_not eq Contact.last
      end
    end
	end
end