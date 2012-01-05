class FiscalProjectionsController < ApplicationController
  
  
  # GET /fiscal_projections
  # GET /fiscal_projections.json
  def index
    @funnel_stages = FunnelStage.all

    @all_programs = Program.order("name")
    
    @programs = Program.includes(:division => :client)
    
    @programs = @programs.where(:id => params[:program_id]) if params[:program_id].present?
    
    @programs = @programs.page(params[:page]).per(25)
    
    @fiscal_projections = FiscalProjection.find_current(@programs)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fiscal_projections }
    end
  end
  
  
  # GET /fiscal_projections/1
  # GET /fiscal_projections/1.json
  def show
    @fiscal_projection = FiscalProjection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fiscal_projection }
    end
  end

  # GET /fiscal_projections/new
  # GET /fiscal_projections/new.json
  def new
    @fiscal_projection = FiscalProjection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fiscal_projection }
    end
  end

  # GET /fiscal_projections/1/edit
  def edit
    @fiscal_projection = FiscalProjection.find(params[:id])
  end

  # POST /fiscal_projections
  # POST /fiscal_projections.json
  def create
    @fiscal_projection = FiscalProjection.new(params[:fiscal_projection])

    respond_to do |format|
      if @fiscal_projection.save
        format.html { redirect_to "/" }
        format.json { render json: @fiscal_projection, status: :created, location: @fiscal_projection }
      else
        format.html { render action: "new" }
        format.json { render json: @fiscal_projection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fiscal_projections/1
  # PUT /fiscal_projections/1.json
  def update
    @fiscal_projection = FiscalProjection.find(params[:id])

    respond_to do |format|
      if @fiscal_projection.update_attributes(params[:fiscal_projection])
        format.html { redirect_to @fiscal_projection, notice: 'Fiscal Projection was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @fiscal_projection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fiscal_projections/1
  # DELETE /fiscal_projections/1.json
  def destroy
    @fiscal_projection = FiscalProjection.find(params[:id])
    @fiscal_projection.destroy

    respond_to do |format|
      format.html { redirect_to fiscal_projections_url }
      format.json { head :ok }
    end
  end
end
