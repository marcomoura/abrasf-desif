# frozen_string_literal: true

module DesifAbrasf
  class ServiceItem < ActiveRecord::Base
    validates_presence_of :id, :description
  end
end
