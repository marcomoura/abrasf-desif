# frozen_string_literal: true

module Abrasf
  module Desif
    class City < ActiveRecord::Base
      validates_presence_of :id
      validates :name,
                presence: true,
                length: { maximum: 50, allow_blank: true }
      validates :federative_unit,
                presence: true,
                length: { is: 2, allow_blank: true }
    end
  end
end
