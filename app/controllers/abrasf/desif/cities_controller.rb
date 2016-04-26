# frozen_string_literal: true

module Abrasf
  module Desif
    class CitiesController < ApplicationController
      # GET /desif/cities
      def index
        @cities = Desif::City.all
      end
    end
  end
end
