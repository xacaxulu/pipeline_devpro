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

describe PracticeGroupsController do

  # This should return the minimal set of attributes required to create a valid
  # PracticeGroup. As you add validations to PracticeGroup, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all practice_groups as @practice_groups" do
      practice_group = PracticeGroup.create! valid_attributes
      get :index
      assigns(:practice_groups).should eq([practice_group])
    end
  end

  describe "GET show" do
    it "assigns the requested practice_group as @practice_group" do
      practice_group = PracticeGroup.create! valid_attributes
      get :show, :id => practice_group.id.to_s
      assigns(:practice_group).should eq(practice_group)
    end
  end

  describe "GET new" do
    it "assigns a new practice_group as @practice_group" do
      get :new
      assigns(:practice_group).should be_a_new(PracticeGroup)
    end
  end

  describe "GET edit" do
    it "assigns the requested practice_group as @practice_group" do
      practice_group = PracticeGroup.create! valid_attributes
      get :edit, :id => practice_group.id.to_s
      assigns(:practice_group).should eq(practice_group)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PracticeGroup" do
        expect {
          post :create, :practice_group => valid_attributes
        }.to change(PracticeGroup, :count).by(1)
      end

      it "assigns a newly created practice_group as @practice_group" do
        post :create, :practice_group => valid_attributes
        assigns(:practice_group).should be_a(PracticeGroup)
        assigns(:practice_group).should be_persisted
      end

      it "redirects to the created practice_group" do
        post :create, :practice_group => valid_attributes
        response.should redirect_to(PracticeGroup.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved practice_group as @practice_group" do
        # Trigger the behavior that occurs when invalid params are submitted
        PracticeGroup.any_instance.stub(:save).and_return(false)
        post :create, :practice_group => {}
        assigns(:practice_group).should be_a_new(PracticeGroup)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PracticeGroup.any_instance.stub(:save).and_return(false)
        post :create, :practice_group => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested practice_group" do
        practice_group = PracticeGroup.create! valid_attributes
        # Assuming there are no other practice_groups in the database, this
        # specifies that the PracticeGroup created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PracticeGroup.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => practice_group.id, :practice_group => {'these' => 'params'}
      end

      it "assigns the requested practice_group as @practice_group" do
        practice_group = PracticeGroup.create! valid_attributes
        put :update, :id => practice_group.id, :practice_group => valid_attributes
        assigns(:practice_group).should eq(practice_group)
      end

      it "redirects to the practice_group" do
        practice_group = PracticeGroup.create! valid_attributes
        put :update, :id => practice_group.id, :practice_group => valid_attributes
        response.should redirect_to(practice_group)
      end
    end

    describe "with invalid params" do
      it "assigns the practice_group as @practice_group" do
        practice_group = PracticeGroup.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PracticeGroup.any_instance.stub(:save).and_return(false)
        put :update, :id => practice_group.id.to_s, :practice_group => {}
        assigns(:practice_group).should eq(practice_group)
      end

      it "re-renders the 'edit' template" do
        practice_group = PracticeGroup.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PracticeGroup.any_instance.stub(:save).and_return(false)
        put :update, :id => practice_group.id.to_s, :practice_group => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested practice_group" do
      practice_group = PracticeGroup.create! valid_attributes
      expect {
        delete :destroy, :id => practice_group.id.to_s
      }.to change(PracticeGroup, :count).by(-1)
    end

    it "redirects to the practice_groups list" do
      practice_group = PracticeGroup.create! valid_attributes
      delete :destroy, :id => practice_group.id.to_s
      response.should redirect_to(practice_groups_url)
    end
  end

end
