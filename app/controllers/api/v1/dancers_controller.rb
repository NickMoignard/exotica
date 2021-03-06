module Api 
  module V1
    class DancersController < ApiController
      before_action :set_dancer, only: [:show, :edit, :update, :destroy]
    
      # GET /dancers
      # GET /dancers.json
      def index
        @dancers = Dancer.all
        respond_to do |format|
          format.html {  }
          format.json { json_response(@dancers) }
        end
      end
    
      # GET /dancers/1
      # GET /dancers/1.json
      def show
        get_data
      end
    
      # GET /dancers/new
      def new
        @dancer = Dancer.new
      end
    
      # GET /dancers/1/edit
      def edit
      end
    
      # POST /dancers
      # POST /dancers.json
      def create
        @dancer = Dancer.new(dancer_params)
    
        respond_to do |format|
          if @dancer.save
            format.html { redirect_to @dancer, notice: 'Dancer was successfully created.' }
            format.json { render :show, status: :created, location: @dancer }
          else
            format.html { render :new }
            format.json { render json: @dancer.errors, status: :unprocessable_entity }
          end
        end
      end
    
      # PATCH/PUT /dancers/1
      # PATCH/PUT /dancers/1.json
      def update
        respond_to do |format|
          if @dancer.update(dancer_params)
            format.html { redirect_to @dancer, notice: 'Dancer was successfully updated.' }
            format.json { render json: @dancer, status: :ok }
          else
            format.html { render :edit }
            format.json { render json: @dancer.errors, status: :unprocessable_entity }
          end
        end
      end
    
      # DELETE /dancers/1
      # DELETE /dancers/1.json
      def destroy
        get_data
        @dancer.destroy
        respond_to do |format|
          format.html { redirect_to dancers_url, notice: 'Dancer was successfully destroyed.' }
          format.json { render json: @dancers, status: :ok }
        end
      end
    
      private

      
        def get_data
          # trying not to repeat myself
          @set_times = SetTime.all
          @dancers = Dancer.all
          @stages = Stage.all
        end
        # Use callbacks to share common setup or constraints between actions.
        def set_dancer
          @dancer = Dancer.find(params[:id])
        end
    
        # Never trust parameters from the scary internet, only allow the white list through.
        def dancer_params
          params.permit(:full_name, :fake_name, :account)
        end
    end
    
  end
end
