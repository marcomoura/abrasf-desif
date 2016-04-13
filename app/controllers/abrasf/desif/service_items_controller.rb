# frozen_string_literal: true

require 'csv'

module Abrasf
  module Desif
    class ServiceItemsController < ActionController::Base
      # GET /service_items
      def index
        @service_items = ServiceItem.all

        respond_to do |format|
          format.html
          format.csv do
            send_data @service_items.to_csv,
                      type: Mime::CSV,
                      disposition: 'attachment; filename=attachament_4.csv'
          end
        end
      end
    end
  end
end
