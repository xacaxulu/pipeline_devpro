require "spec_helper"

describe PracticeGroupsController do
  describe "routing" do

    it "routes to #index" do
      get("/practice_groups").should route_to("practice_groups#index")
    end

    it "routes to #new" do
      get("/practice_groups/new").should route_to("practice_groups#new")
    end

    it "routes to #show" do
      get("/practice_groups/1").should route_to("practice_groups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/practice_groups/1/edit").should route_to("practice_groups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/practice_groups").should route_to("practice_groups#create")
    end

    it "routes to #update" do
      put("/practice_groups/1").should route_to("practice_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/practice_groups/1").should route_to("practice_groups#destroy", :id => "1")
    end

  end
end
