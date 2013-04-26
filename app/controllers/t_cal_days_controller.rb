class TCalDaysController < ApplicationController
  # GET /t_cal_days
  # GET /t_cal_days.json
  def index
    @t_cal_days = TCalDay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @t_cal_days }
    end
  end

  # GET /t_cal_days/1
  # GET /t_cal_days/1.json
  def show
    @t_cal_day = TCalDay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @t_cal_day }
    end
  end

  # GET /t_cal_days/new
  # GET /t_cal_days/new.json
  def new
    @t_cal_day = TCalDay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @t_cal_day }
    end
  end

  # GET /t_cal_days/1/edit
  def edit
    @t_cal_day = TCalDay.find(params[:id])
  end

  # POST /t_cal_days
  # POST /t_cal_days.json
  def create
    @t_cal_day = TCalDay.new(params[:t_cal_day])

    respond_to do |format|
      if @t_cal_day.save
        format.html { redirect_to @t_cal_day, notice: 'T cal day was successfully created.' }
        format.json { render json: @t_cal_day, status: :created, location: @t_cal_day }
      else
        format.html { render action: "new" }
        format.json { render json: @t_cal_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /t_cal_days/1
  # PUT /t_cal_days/1.json
  def update
    @t_cal_day = TCalDay.find(params[:id])

    respond_to do |format|
      if @t_cal_day.update_attributes(params[:t_cal_day])
        format.html { redirect_to @t_cal_day, notice: 'T cal day was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @t_cal_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_cal_days/1
  # DELETE /t_cal_days/1.json
  def destroy
    @t_cal_day = TCalDay.find(params[:id])
    @t_cal_day.destroy

    respond_to do |format|
      format.html { redirect_to t_cal_days_url }
      format.json { head :no_content }
    end
  end
end
