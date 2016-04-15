# frozen_string_literal: true

module Abrasf
  module Desif
    class CityTaxCodesController < ApplicationController
      before_action :set_city_tax_code,
                    only: [:show, :edit, :update, :destroy]

      # GET /city_tax_codes
      def index
        @city_tax_codes = CityTaxCode.all
      end

      # GET /city_tax_codes/1
      def show
      end

      # GET /city_tax_codes/new
      def new
        @city_tax_code = CityTaxCode.new
      end

      # GET /city_tax_codes/1/edit
      def edit
      end

      # POST /city_tax_codes
      def create
        @city_tax_code = CityTaxCode.new(city_tax_code_params)

        if @city_tax_code.save
          redirect_to @city_tax_code, notice: t('.created')
        else
          render :new
        end
      end

      # PATCH/PUT /city_tax_codes/1
      def update
        if @city_tax_code.update(city_tax_code_params)
          redirect_to @city_tax_code, notice: t('.updated')
        else
          render :edit
        end
      end

      # DELETE /city_tax_codes/1
      def destroy
        @city_tax_code.destroy
        redirect_to city_tax_codes_url, notice: t('.destroyed')
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_city_tax_code
        @city_tax_code = CityTaxCode.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def city_tax_code_params
        params.require(:city_tax_code)
              .permit :city_id, :city,
                      :tax_code, :tax_code_id,
                      :city_tax_code, :aliquot, :since, :expiry
      end
    end
  end
end
