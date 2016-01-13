class ProducersController < ApplicationController
	def index
		@producers= Producer.all
    @categories=Category.all
    @producers=Producer.all
	end
  def show
    @categories=Category.all
     @producer = Producer.find(params[:id])
    @producers=Producer.all
     @products=Product.all
  end
  def edit
     @producer = Producer.find(params[:id])
     @categories=Category.all
     @producers=Producer.all
     @products=Product.all
  end
	def new
    @categories=Category.all
    @producers=Producer.all
    @producer = Producer.new
  end

  def create
@product = Product.new
    @categories=Category.all
    @producer = Producer.new(producer_params)

    respond_to do |format|
      if @producer.save
        format.html { redirect_to producers_url, notice: 'producer was successfully created.' }
        format.json { render :show, status: :created, location: @producer }
      else
        format.html { render :new }
        format.json { render json: @producer.errors, status: :unprocessable_entity }
      end
    end
  end

   def destroy
  	@producer = Producer.find(params[:id])
    @producer.destroy
    respond_to do |format|
      format.html { redirect_to producers_url, notice: 'producer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

 private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @producer = Producer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producer_params
      params.require(:producer).permit(:name,:photo)
    end
end