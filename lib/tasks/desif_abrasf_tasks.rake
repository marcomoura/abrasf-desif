# frozen_string_literal: true

require 'csv'

namespace :abrasf do
  namespace :desif do
    namespace :db do
      desc 'Load the seed data from DesifAbrasf'
      task seed: :environment do
        Abrasf::Desif::Engine.load_seed
      end
    end
  end
end
