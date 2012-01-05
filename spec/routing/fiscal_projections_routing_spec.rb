require "spec_helper"

describe FiscalProjectionsController do
  describe "routing" do

    it "routes to #index" do
      get("/fiscal_projections").should route_to("fiscal_projections#index")
    end

    it "routes to #new" do
      get("/fiscal_projections/new").should route_to("fiscal_projections#new")
    end

    it "routes to #show" do
      get("/fiscal_projections/1").should route_to("fiscal_projections#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fiscal_projections/1/edit").should route_to("fiscal_projections#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fiscal_projections").should route_to("fiscal_projections#create")
    end

    it "routes to #update" do
      put("/fiscal_projections/1").should route_to("fiscal_projections#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fiscal_projections/1").should route_to("fiscal_projections#destroy", :id => "1")
    end

  end
end
