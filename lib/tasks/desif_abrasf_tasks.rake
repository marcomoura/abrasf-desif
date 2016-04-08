require 'csv'

namespace :desif_abrasf do
  namespace :db do
    desc 'Load the seed data from DesifAbrasf'
    task seed: :environment do
      DesifAbrasf::Engine.load_seed
    end
  end
end
