require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FiscalProjectionsController do

  # This should return the minimal set of attributes required to create a valid
  # FiscalProjection. As you add validations to FiscalProjection, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all fiscal_projections as @fiscal_projections" do
      fiscal_projection = FiscalProjection.create! valid_attributes
      get :index
      assigns(:fiscal_projections).should eq([fiscal_projection])
    end
  end

  describe "GET show" do
    it "assigns the requested fiscal_projection as @fiscal_projection" do
      fiscal_projection = FiscalProjection.create! valid_attributes
      get :show, :id => fiscal_projection.id.to_s
      assigns(:fiscal_projection).should eq(fiscal_projection)
    end
  end

  describe "GET new" do
    it "assigns a new fiscal_projection as @fiscal_projection" do
      get :new
      assigns(:fiscal_projection).should be_a_new(FiscalProjection)
    end
  end

  describe "GET edit" do
    it "assigns the requested fiscal_projection as @fiscal_projection" do
      fiscal_projection = FiscalProjection.create! valid_attributes
      get :edit, :id => fiscal_projection.id.to_s
      assigns(:fiscal_projection).should eq(fiscal_projection)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FiscalProjection" do
        expect {
          post :create, :fiscal_projection => valid_attributes
        }.to change(FiscalProjection, :count).by(1)
      end

      it "assigns a newly created fiscal_projection as @fiscal_projection" do
        post :create, :fiscal_projection => valid_attributes
        assigns(:fiscal_projection).should be_a(FiscalProjection)
        assigns(:fiscal_projection).should be_persisted
      end

      it "redirects to the created fiscal_projection" do
        post :create, :fiscal_projection => valid_attributes
        response.should redirect_to(FiscalProjection.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved fiscal_projection as @fiscal_projection" do
        # Trigger the behavior that occurs when invalid params are submitted
        FiscalProjection.any_instance.stub(:save).and_return(false)
        post :create, :fiscal_projection => {}
        assigns(:fiscal_projection).should be_a_new(FiscalProjection)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        FiscalProjection.any_instance.stub(:save).and_return(false)
        post :create, :fiscal_projection => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested fiscal_projection" do
        fiscal_projection = FiscalProjection.create! valid_attributes
        # Assuming there are no other fiscal_projections in the database, this
        # specifies that the FiscalProjection created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        FiscalProjection.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => fiscal_projection.id, :fiscal_projection => {'these' => 'params'}
      end

      it "assigns the requested fiscal_projection as @fiscal_projection" do
        fiscal_projection = FiscalProjection.create! valid_attributes
        put :update, :id => fiscal_projection.id, :fiscal_projection => valid_attributes
        assigns(:fiscal_projection).should eq(fiscal_projection)
      end

      it "redirects to the fiscal_projection" do
        fiscal_projection = FiscalProjection.create! valid_attributes
        put :update, :id => fiscal_projection.id, :fiscal_projection => valid_attributes
        response.should redirect_to(fiscal_projection)
      end
    end

    describe "with invalid params" do
      it "assigns the fiscal_projection as @fiscal_projection" do
        fiscal_projection = FiscalProjection.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FiscalProjection.any_instance.stub(:save).and_return(false)
        put :update, :id => fiscal_projection.id.to_s, :fiscal_projection => {}
        assigns(:fiscal_projection).should eq(fiscal_projection)
      end

      it "re-renders the 'edit' template" do
        fiscal_projection = FiscalProjection.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FiscalProjection.any_instance.stub(:save).and_return(false)
        put :update, :id => fiscal_projection.id.to_s, :fiscal_projection => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested fiscal_projection" do
      fiscal_projection = FiscalProjection.create! valid_attributes
      expect {
        delete :destroy, :id => fiscal_projection.id.to_s
      }.to change(FiscalProjection, :count).by(-1)
    end

    it "redirects to the fiscal_projections list" do
      fiscal_projection = FiscalProjection.create! valid_attributes
      delete :destroy, :id => fiscal_projection.id.to_s
      response.should redirect_to(fiscal_projections_url)
    end
  end

end