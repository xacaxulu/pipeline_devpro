require 'spec_helper'

describe "FiscalProjections" do
  describe "GET /fiscal_projections" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get fiscal_projections_path
      response.status.should be(200)
    end
  end
end
