require 'rails_helper'

RSpec.describe QuestionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "categories/category_id/questions").to route_to("questions#index", category_id: "category_id")
    end

    it "routes to #new" do
      expect(:post => "/categories/category_id/questions").to route_to("questions#create", category_id: "category_id")
    end
  end
end
