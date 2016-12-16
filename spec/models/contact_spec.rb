require 'rails_helper'
require 'spec_helper'

RSpec.describe Contact, type: :model do
  describe "reader attributes" do
    let (:contact) { Contact.create(first_name: "Jonathan", last_name: "Warshaw", email: "jonathan.warshaw@gmail.com", message: "and now for something completely different...") }

    it "has a readable first name" do
      expect(contact.first_name).to eq "Jonathan"
    end

    it "has a readable last name" do
      expect(contact.last_name).to eq "Warshaw"
    end

    it "has a readable email" do
      expect(contact.email).to eq "jonathan.warshaw@gmail.com"
    end

    it "has a readable message" do
      expect(contact.message).to eq "and now for something completely different..."
    end
  end
end