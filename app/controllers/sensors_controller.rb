class SensorsController < ApplicationController
	before_action :set_sensor, only: [:name, :serial_number, :model, :brand, :status, :comment, :image]
  def index
    @sensors = Sensor.all
  end

  def show
    @sensor = Sensor.find(params[:id])
  end

  def new
    @sensor = Sensor.new
  end

  def create
    @sensor = Sensor.new(sensor_params)
    @sensor.save
    redirect_to sensors_path
  end

  def edit
    @sensor = Sensor.find(params[:id])
  end

  def update
    @sensor = Sensor.find(params[:id])
    @sensor.update(sensor_params)
    @sensor.save
    redirect_to sensor_path(@sensor)
  end

  def destroy
    @sensor = Sensor.find(params[:id])
    @sensor.destroy

    redirect_to sensors_path
  end

  private

  def set_sensor
    @sensor = Sensor.find(params[:id])
  end

  def sensor_params
  params.require(:sensor).permit(:name, :serial_number, :model, :brand, :status, :comment, :image)
  end
end
