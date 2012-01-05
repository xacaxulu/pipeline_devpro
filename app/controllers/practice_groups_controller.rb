class PracticeGroupsController < ApplicationController
  # GET /practice_groups
  # GET /practice_groups.json
  def index
    @practice_groups = PracticeGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @practice_groups }
    end
  end

  # GET /practice_groups/1
  # GET /practice_groups/1.json
  def show
    @practice_group = PracticeGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @practice_group }
    end
  end

  # GET /practice_groups/new
  # GET /practice_groups/new.json
  def new
    @practice_group = PracticeGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @practice_group }
    end
  end

  # GET /practice_groups/1/edit
  def edit
    @practice_group = PracticeGroup.find(params[:id])
  end

  # POST /practice_groups
  # POST /practice_groups.json
  def create
    @practice_group = PracticeGroup.new(params[:practice_group])

    respond_to do |format|
      if @practice_group.save
        format.html { redirect_to @practice_group, notice: 'Practice group was successfully created.' }
        format.json { render json: @practice_group, status: :created, location: @practice_group }
      else
        format.html { render action: "new" }
        format.json { render json: @practice_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /practice_groups/1
  # PUT /practice_groups/1.json
  def update
    @practice_group = PracticeGroup.find(params[:id])
    
    respond_to do |format|
      if @practice_group.update_attributes(params[:practice_group])
        format.html { redirect_to @practice_group, notice: 'Practice group was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @practice_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practice_groups/1
  # DELETE /practice_groups/1.json
  def destroy
    @practice_group = PracticeGroup.find(params[:id])
    @practice_group.destroy

    respond_to do |format|
      format.html { redirect_to practice_groups_url }
      format.json { head :ok }
    end
  end
end
