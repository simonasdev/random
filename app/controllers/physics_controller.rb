class PhysicsController < ApplicationController
  # GET /physics
  # GET /physics.json
  def index
    @physics = Physic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @physics }
    end
  end

  # GET /physics/1
  # GET /physics/1.json
  def show
    @physic = Physic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @physic }
    end
  end

  # GET /physics/new
  # GET /physics/new.json
  def new
    @physic = Physic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @physic }
    end
  end

  # GET /physics/1/edit
  def edit
    @physic = Physic.find(params[:id])
  end

  # POST /physics
  # POST /physics.json
  def create
    @physic = Physic.new(params[:physic])

    respond_to do |format|
      if @physic.save
        format.html { redirect_to @physic, notice: 'Physic was successfully created.' }
        format.json { render json: @physic, status: :created, location: @physic }
      else
        format.html { render action: "new" }
        format.json { render json: @physic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /physics/1
  # PUT /physics/1.json
  def update
    @physic = Physic.find(params[:id])

    respond_to do |format|
      if @physic.update_attributes(params[:physic])
        format.html { redirect_to @physic, notice: 'Physic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @physic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physics/1
  # DELETE /physics/1.json
  def destroy
    @physic = Physic.find(params[:id])
    @physic.destroy

    respond_to do |format|
      format.html { redirect_to physics_url }
      format.json { head :no_content }
    end
  end
end
