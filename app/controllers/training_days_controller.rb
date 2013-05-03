class TrainingDaysController < ApplicationController
  # GET /training_days
  # GET /training_days.json
  def index
    @training_days = TrainingDay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @training_days }
    end
  end

  # GET /training_days/1
  # GET /training_days/1.json
  def show
    @training_day = TrainingDay.includes(:tsessions).find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @training_day }
    end
  end

  # GET /training_days/new
  # GET /training_days/new.json
  def new
    @training_day = TrainingDay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @training_day }
    end
  end

  # GET /training_days/1/edit
  def edit
    @training_day = TrainingDay.find(params[:id])
  end

  # POST /training_days
  # POST /training_days.json
  def create
    @training_day = TrainingDay.new(params[:training_day])

    respond_to do |format|
      if @training_day.save
        # This code is to create a new tsession for the specified date for each trade and each period.
        # @trades = Trade.all
        # @periods = Period.all
        # @trades.each do |i|
          # @tsession = Tsession.new(:training_day_id => i., :trade_id => )
          # @tsession.save
          # if @training_day.params[:weekday] = "Thursday"
            #need some code
          # else if @training_day.params[:weekday] = "Saturday"
            #need more code
          # else
            #and lastely
          # end
        # end
        format.html { redirect_to @training_day, notice: 'Training day was successfully created.' }
        format.json { render json: @training_day, status: :created, location: @training_day }
      else
        format.html { render action: "new" }
        format.json { render json: @training_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /training_days/1
  # PUT /training_days/1.json
  def update
    @training_day = TrainingDay.find(params[:id])

    respond_to do |format|
      if @training_day.update_attributes(params[:training_day])
        format.html { redirect_to @training_day, notice: 'Training day was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @training_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_days/1
  # DELETE /training_days/1.json
  def destroy
    @training_day = TrainingDay.find(params[:id])
    @training_day.destroy

    respond_to do |format|
      format.html { redirect_to training_days_url }
      format.json { head :no_content }
    end
  end
end
