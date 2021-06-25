class SellersController < ApplicationController
  before_action :set_seller, only: %i[ show edit update destroy ]

  before_action :authenticate_user!, except:[:index, :show]

  before_action :correct_user, only: [:edit, :update, :destroy]



  # GET /sellers or /sellers.json
  def index
    @sellers = Seller.all
  end

  # GET /sellers/1 or /sellers/1.json
  def show
  end

  # GET /sellers/new
  def new
    #@seller = Seller.new
    @seller = current_user.seller.build
  end

  # GET /sellers/1/edit
  def edit
  end

  # POST /sellers or /sellers.json
  def create
    #@seller = Seller.new(seller_params)
    @seller = current_user.seller.build(seller_params)

    respond_to do |format|
      if @seller.save
        format.html { redirect_to @seller, notice: "Seller was successfully created." }
        format.json { render :show, status: :created, location: @seller }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @seller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sellers/1 or /sellers/1.json
  def update
    respond_to do |format|
      if @seller.update(seller_params)
        format.html { redirect_to @seller, notice: "Seller was successfully updated." }
        format.json { render :show, status: :ok, location: @seller }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @seller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sellers/1 or /sellers/1.json
  def destroy
    @seller.destroy
    respond_to do |format|
      format.html { redirect_to sellers_url, notice: "Seller was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  def correct_user
    @seller = current_user.seller.find_by(id: params[:id])
    redirect_to sellers_path, notice: "Not authorized" if @seller.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seller
      @seller = Seller.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def seller_params
      params.require(:seller).permit(:fullname, :DoB, :Cid, :contact_no, :email, :address, :user_id)
    end
end
