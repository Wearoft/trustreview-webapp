class PartnersController < ApplicationController
  before_action :get_partner, only: [:show, :update, :delete]

  def index
    @partners = Partner.order :name
    unless params[:sector].nil?
      @sector = Sector.find params[:sector] 
      @partners = @partners.where sector: @sector 
    end
  end

  def show
    @reviews = @partner.reviews.order created_at: :desc
    @new_review = @partner.reviews.new
  end
  
private

  def get_partner
    @partner = Partner.find params[:id]
  end

end
