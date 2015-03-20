require "spec_helper"

describe RequirementItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/requirement_items").should route_to("requirement_items#index")
    end

    it "routes to #new" do
      get("/requirement_items/new").should route_to("requirement_items#new")
    end

    it "routes to #show" do
      get("/requirement_items/1").should route_to("requirement_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/requirement_items/1/edit").should route_to("requirement_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/requirement_items").should route_to("requirement_items#create")
    end

    it "routes to #update" do
      put("/requirement_items/1").should route_to("requirement_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/requirement_items/1").should route_to("requirement_items#destroy", :id => "1")
    end

  end
end
