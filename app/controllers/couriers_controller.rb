# frozen_string_literal: true

class CouriersController < ApplicationController
  before_action :set_courier, only: %i[show edit update destroy]

  # GET /couriers
  def index
    @couriers = Courier.all.order(updated_at: :desc)
  end

  # GET /couriers/1
  def show; end

  # GET /couriers/new
  def new
    @courier = Courier.new
  end

  # GET /couriers/1/edit
  def edit; end

  # POST /couriers
  def create
    @courier = Courier.new(courier_params)

    respond_to do |format|
      if @courier.save
        format.html { redirect_to courier_url(@courier), notice: "Courier was successfully created." }
        format.turbo_stream
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /couriers/1
  def update
    respond_to do |format|
      if @courier.update(courier_params)
        format.html { redirect_to courier_url(@courier), notice: "Courier was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /couriers/1
  def destroy
    @courier.destroy

    respond_to do |format|
      format.html { redirect_to couriers_url, notice: "Courier was successfully destroyed." }
      format.turbo_stream
    end
  end

  private

  def set_courier
    @courier = Courier.find(params[:id])
  end

  def courier_params
    params.require(:courier).permit(:first_name, :last_name, :phone, :status)
  end
end
