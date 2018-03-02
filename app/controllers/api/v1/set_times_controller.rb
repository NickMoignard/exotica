module Api 
  module V1
    class SetTimesController < ApplicationController
      before_action :set_set_time, only: [:show, :edit, :update, :destroy]
    
      # GET /set_times
      # GET /set_times.json
      def index
        get_data

        respond_to do |format|
          format.html {  }
          format.json { json_response(@set_times) }
        end
      end
    
      # GET /set_times/1
      # GET /set_times/1.json
      def show
        get_data
      end
    
      # GET /set_times/new
      def new
        @set_time = SetTime.new
      end
    
      # GET /set_times/1/edit
      def edit
      end
    
      # POST /set_times
      # POST /set_times.json
      def create
        @set_time = SetTime.new(set_time_params)
    
        respond_to do |format|
          if @set_time.save
            format.html { redirect_to @set_time, notice: 'Set time was successfully created.' }
            format.json { render :show, status: :created, location: @set_time }
          else
            format.html { render :new }
            format.json { render json: @set_time.errors, status: :unprocessable_entity }
          end
        end
      end
    
      # PATCH/PUT /set_times/1
      # PATCH/PUT /set_times/1.json
      def update
        set_time = SetTime.find(params[:id])
        respond_to do |format|
          if set_time.update_attributes(set_time_params)
            format.html { redirect_to @set_time, notice: 'Set time was successfully updated.' }
            format.json { render json: @set_time, status: :ok }
          else
            format.html { render :edit }
            format.json { render json: @set_time.errors, status: :unprocessable_entity }
          end
        end
      end

    
      # DELETE /set_times/1
      # DELETE /set_times/1.json
      def destroy
        get_data
        @set_time.destroy
        respond_to do |format|
          format.html { redirect_to set_times_url, notice: 'Set time was successfully destroyed.' }
          format.json { render json: @set_times, status: :ok }
        end
      end
    
      private
        # Variables
        @success = "Success"
        @failure = "Failure"

        def get_data

          # trying not to repeat myself
          @set_times = SetTime.all
          @dancers = Dancer.all
          @stages = Stage.all
        end

        # Use callbacks to share common setup or constraints between actions.
        def set_set_time
          @set_time = SetTime.find(params[:id])
        end
    
        # Never trust parameters from the scary internet, only allow the white list through.
        def set_time_params
          params.permit(:fake_name, :stage_name, :time)
        end
    end
    
  end
end


