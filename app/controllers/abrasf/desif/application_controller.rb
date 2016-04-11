# frozen_string_literal: true

module Abrasf
  module Desif
    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception
    end
  end
end
