# frozen_string_literal: true

module Abrasf
  module Desif
    class ServiceItem < ActiveRecord::Base
      validates_presence_of :id, :description
    end
  end
end
