class ReviewsController < ApplicationController
  before_action :get_partner, only: [:create]

  def create
    @review = @partner.reviews.new(review_params)
    @review.client = Client.first
    if @review.save
      cmd = 'curl --data-binary \'{"jsonrpc": "1.0", "id":"curltest", "method": "sendtoaddress", "params": ["MBUbPSjL5whbRXezPrw9jXQuszewab3qxK", 1]}\' -H "content-type: text/plain;" http://mchainuser:hola@192.168.100.52:3779'
      logger.debug '-'*100
      logger.debug cmd
      system(cmd)
      redirect_to @partner
    end
  end

private

  def get_partner
    @partner = Partner.find params[:partner_id]
  end

  def review_params
    params.require(:review).permit(:review, :starts)
  end

end
