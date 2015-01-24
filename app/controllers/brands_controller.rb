class BrandsController < ApplicationController
  def armalite
    @brand = "Armalite"
    @product_s = Product.where(brand: @brand ).last(4)

  end

  def ruger
    @brand = "Ruger"
    @product_s = Product.where(brand: @brand ).last(4)

  end

  def triplek
    @brand = "Triple K"
    @product_s = Product.where(brand: @brand ).last(6)

  end

  def stagarms
    @brand = "Stag Arms"
    @product_s = Product.where(brand: @brand ).last(4)

  end

  def glock
    @brand = "Glock"
    @product_s = Product.where(brand: @brand ).last(4)

  end
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:name, :price, :description, :cost, :qty, :image, :brand, :slug)
  end
end

