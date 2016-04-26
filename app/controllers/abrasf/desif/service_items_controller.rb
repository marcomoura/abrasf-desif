# frozen_string_literal: true

require 'csv'

module Abrasf
  module Desif
    class ServiceItemsController < ApplicationController
      before_action :set_service_items

      # GET /service_items
      def index
        respond_to do |format|
          format.html
          format.csv do
            send_data @service_items.to_csv,
                      type: Mime::CSV,
                      disposition: 'attachment; filename=attachament_4.csv'
          end
        end
      end

      private

      def set_service_items
        @service_items = ServiceItem.all
      end
    end
  end
end
