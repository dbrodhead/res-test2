class TsessionsController < ApplicationController
  # GET /tsessions
  # GET /tsessions.json
  def index
    @tsessions = Tsession.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tsessions }
    end
  end

  # GET /tsessions/1
  # GET /tsessions/1.json
  def show
    @tsession = Tsession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tsession }
    end
  end

  # GET /tsessions/new
  # GET /tsessions/new.json
  def new
    @tsession = Tsession.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tsession }
    end
  end

  # GET /tsessions/1/edit
  def edit
    @tsession = Tsession.find(params[:id])
  end

  # POST /tsessions
  # POST /tsessions.json
  def create
    @tsession = Tsession.new(params[:tsession])

    respond_to do |format|
      if @tsession.save
        format.html { redirect_to @tsession, notice: 'Tsession was successfully created.' }
        format.json { render json: @tsession, status: :created, location: @tsession }
      else
        format.html { render action: "new" }
        format.json { render json: @tsession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tsessions/1
  # PUT /tsessions/1.json
  def update
    @tsession = Tsession.find(params[:id])

    respond_to do |format|
      if @tsession.update_attributes(params[:tsession])
        format.html { redirect_to @tsession, notice: 'Tsession was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tsession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tsessions/1
  # DELETE /tsessions/1.json
  def destroy
    @tsession = Tsession.find(params[:id])
    @tsession.destroy

    respond_to do |format|
      format.html { redirect_to tsessions_url }
      format.json { head :no_content }
    end
  end
end
