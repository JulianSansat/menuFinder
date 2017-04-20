require 'rails_helper'

RSpec.describe Product, type: :model do
    before(:each) do
        @product = build(:product)
        @product.establishment = create(:establishment)
    end
    describe Product do
        it "is valid with a name, kind, description, price, image and establishment" do
            expect(@product).to be_valid
        end
        it "is invalid without a name" do
            @product.name = nil
            @product.valid?
            expect(@product.errors[:name]).to include("can't be blank")
        end
        it "is invalid without a kind" do
            @product.kind = nil
            @product.valid?
            expect(@product.errors[:kind]).to include("can't be blank")
        end
        it "is invalid without a description" do
            @product.description = nil
            @product.valid?
            expect(@product.errors[:description]).to include("can't be blank")
        end
        it "is invalid without a price" do
            @product.price = nil
            @product.valid?
            expect(@product.errors[:price]).to include("can't be blank")
        end
        it "is invalid without a image" do
            @product.image = nil
            @product.valid?
            expect(@product.errors[:image]).to include("can't be blank")
        end
        it "is invalid without a establishment" do
            @product.establishment = nil
            @product.valid?
            expect(@product.errors[:establishment]).to include("must exist")
        end
        it "belongs to a establishment" do
            establishment = create(:establishment)
            @product.establishment = establishment
            expect(@product.establishment).to eq(establishment)
        end
    end
end
