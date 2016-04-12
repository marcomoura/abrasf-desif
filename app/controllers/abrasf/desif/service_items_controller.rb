# frozen_string_literal: true

require_dependency 'abrasf/desif/application_controller'

module Abrasf
  module Desif
    class ServiceItemsController < ApplicationController
      # GET /service_items
      def index
        @service_items = ServiceItem.all
      end
    end
  end
end
