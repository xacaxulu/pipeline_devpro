class FunnelStagesController < ApplicationController
  # GET /funnel_stages
  # GET /funnel_stages.json
  def index
    @funnel_stages = FunnelStage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @funnel_stages }
    end
  end

  # GET /funnel_stages/1
  # GET /funnel_stages/1.json
  def show
    @funnel_stage = FunnelStage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @funnel_stage }
    end
  end

  # GET /funnel_stages/new
  # GET /funnel_stages/new.json
  def new
    @funnel_stage = FunnelStage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @funnel_stage }
    end
  end

  # GET /funnel_stages/1/edit
  def edit
    @funnel_stage = FunnelStage.find(params[:id])
  end

  # POST /funnel_stages
  # POST /funnel_stages.json
  def create
    @funnel_stage = FunnelStage.new(params[:funnelstage])

    respond_to do |format|
      if @funnel_stage.save
        format.html { redirect_to @funnel_stage, notice: 'FunnelStage was successfully created.' }
        format.json { render json: @funnel_stage, status: :created, location: @funnel_stage }
      else
        format.html { render action: "new" }
        format.json { render json: @funnel_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /funnel_stages/1
  # PUT /funnel_stages/1.json
  def update
    @funnel_stage = FunnelStage.find(params[:id])

    respond_to do |format|
      if @funnel_stage.update_attributes(params[:funnelstage])
        format.html { redirect_to @funnel_stage, notice: 'FunnelStage was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @funnel_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funnel_stages/1
  # DELETE /funnel_stages/1.json
  def destroy
    @funnel_stage = FunnelStage.find(params[:id])
    @funnel_stage.destroy

    respond_to do |format|
      format.html { redirect_to funnel_stages_url }
      format.json { head :ok }
    end
  end
end
