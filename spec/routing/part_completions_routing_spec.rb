require "rails_helper"

RSpec.describe PartCompletionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/part_completions").to route_to("part_completions#index")
    end

    it "routes to #new" do
      expect(:get => "/part_completions/new").to route_to("part_completions#new")
    end

    it "routes to #show" do
      expect(:get => "/part_completions/1").to route_to("part_completions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/part_completions/1/edit").to route_to("part_completions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/part_completions").to route_to("part_completions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/part_completions/1").to route_to("part_completions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/part_completions/1").to route_to("part_completions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/part_completions/1").to route_to("part_completions#destroy", :id => "1")
    end

  end
end
