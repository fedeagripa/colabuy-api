module Api
  module V1
    class DonationCentersController < Api::V1::ApiController
      skip_before_action :authenticate_user!

      def index
        @pharmacies = Pharmacy.all
        @general_supplies = GeneralSupply.all
      end
    end
  end
end
