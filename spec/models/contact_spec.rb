require 'rails_helper'
require 'spec_helper'

RSpec.describe Contact, type: :model do
  describe "readability of attributes" do
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
   
  describe "writeability of attributes" do
    let (:contact) { Contact.create(first_name: "Jonathan", last_name: "Warshaw", email: "jonathan.warshaw@gmail.com", message: "and now for something completely different...") }

    it "has a writeable first name" do
      contact.first_name = "Peter"
      expect(contact.first_name).to eq "Peter"
    end

    it "has a writeable last name" do
      contact.last_name = "Pan"
      expect(contact.last_name).to eq "Pan"
    end

    it "has a writeable email" do
      contact.email = "peter.pan@gmail.com"
      expect(contact.email).to eq "peter.pan@gmail.com"
    end

    it "has a writeable message" do
      contact.message = "To die will be an awfully big adventure."
      expect(contact.message).to eq "To die will be an awfully big adventure."
    end
  end
  
  describe "validations" do
      it "is not valid without a first name" do
        contact = Contact.new(last_name: "Warshaw", email: "jonathan.warshaw@gmail.com", message: "and now for something completely different...")
        expect(contact.valid?).to eq false
      end

      it "is not valid without a last name" do
        contact = Contact.new(first_name: "Jonathan", email: "jonathan.warshaw@gmail.com", message: "and now for something completely different...")
        expect(contact.valid?).to eq false
      end

      it "is not valid without an email" do
        contact = Contact.new(first_name: "Jonathan", last_name: "Warshaw", message: "and now for something completely different...")
        expect(contact.valid?).to eq false
      end

      it "is not valid without a message" do
        contact = Contact.new(first_name: "Jonathan", last_name: "Warshaw", email: "jonathan.warshaw@gmail.com")
        expect(contact.valid?).to eq false
      end

      it "is valid with all fields entered" do
        contact = Contact.new(first_name: "Jonathan", last_name: "Warshaw", email: "jonathan.warshaw@gmail.com", message: "and now for something completely different...")
        expect(contact.valid?).to eq true
      end
    end
end