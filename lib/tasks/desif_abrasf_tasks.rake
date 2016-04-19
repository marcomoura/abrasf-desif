# frozen_string_literal: true

require 'abrasf/desif/tax_code_to_city'

namespace 'abrasf-desif' do
  namespace :db do
    desc 'Load the seed data from DesifAbrasf'
    task seed: :environment do
      Abrasf::Desif::Engine.load_seed
    end
  end

  namespace :city_tax_code do
    desc 'Load the seed data from DesifAbrasf'
    task :seed, [:city_id] => :environment do |_, args|
      ActiveRecord::Migration.say_with_time 'seeding City Tax code ABRASF' do
        Abrasf::Desif::TaxCodeToCity.create city_id: args[:city_id]
      end
    end
  end
end
