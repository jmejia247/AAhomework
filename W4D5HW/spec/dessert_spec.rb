require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:brownie) { Dessert.new("brownie", 50)}
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq("brownie")
    end

    it "sets a quantity" do 
      expect(brownie.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do 
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect { Dessert.new("borwnie", "twinkie") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(brownie.ingredients).to_not include("eggs")
      brownie.add_ingredient("eggs")
      expect(brownie.ingredients).to include("eggs")
    end
  end

  describe "#mix!" do
    before(:each) { brownie.ingredients}
    it "shuffles the ingredient array" do 
      expect(brownie.ingredients).to be(brownie.ingredients)
      brownie.ingredients.mix!
      expect(brownie.ingredients)to_not be(brownie.ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      expect(brownie.quantity).to eq(50)
      brownie.quantity.eat(25)
      expect(brownie.quantity).to eq(25)
    end

    it "raises an error if the amount is greater than the quantity" do 
      expect(brownie.quantity.eats(50)).to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      expect(brownie.serve).to include(@chef.titleize)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      expect(brownie.make_more).to receive(@chef.bake(self))
    end
  end
end
