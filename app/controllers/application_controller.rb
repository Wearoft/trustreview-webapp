class ApplicationController < ActionController::Base
  before_action :get_sectors

private

  def get_sectors
    @sectors = Sector.order :name
  end
end
