module Api
  module V1
    class DonationCentersController < Api::V1::ApiController
      def index
        @pharmacies = Pharmacy.all
        @general_supplies = GeneralSupply.all
      end
    end
  end
end
