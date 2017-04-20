require 'rails_helper'

RSpec.describe Establishment, type: :model do
  before(:each) do
    @establishment = build(:establishment)
  end
  describe Establishment do
    it "is valid with a name, adress, kind, telephone and delivery status" do
        expect(@establishment).to be_valid
    end
    it "is invalid without a name" do
        @establishment.name = nil
        @establishment.valid?
        expect(@establishment.errors[:name]).to include("can't be blank")
    end
    it "is invalid without a adress" do
        @establishment.adress = nil
        @establishment.valid?
        expect(@establishment.errors[:adress]).to include("can't be blank")
    end
    it "is invalid without a telephone" do
        @establishment.telephone = nil
        @establishment.valid?
        expect(@establishment.errors[:telephone]).to include("can't be blank")
    end
    it "is invalid without a delivery status" do
         @establishment.delivery = nil
         @establishment.valid?
         expect(@establishment.errors[:delivery]).to include("is not included in the list")
    end
    it "is invalid with a duplicate name and adress" do
        Establishment.create(
            name: "MyString",
            adress: "MyString",
            kind: "MyString",
            telephone: "MyString",
            delivery: false,
            description: "MyText"
        )
        establishment = Establishment.new(
            name: "MyString",
            adress: "MyString",
            kind: "MyString",
            telephone: "MyString",
            delivery: false,
            description: "MyText"
        )
        establishment.valid?
        expect(establishment.errors[:name]).to include("has already been taken")
    end
    it "can have many products" do
        reflection = Establishment.reflect_on_association(:products).macro
        expect(reflection).to eq :has_many
    end
  end
end
