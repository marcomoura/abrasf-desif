# frozen_string_literal: true

module Abrasf
  module Desif
    class Engine < ::Rails::Engine
      isolate_namespace Abrasf::Desif

      initializer :append_migrations do |app|
        unless app.root.to_s.match root.to_s
          config.paths['db/migrate'].expanded.each do |expanded_path|
            app.config.paths['db/migrate'] << expanded_path
          end
        end
      end

      config.generators do |g|
        g.test_framework :rspec, fixture: false
        g.assets false
        g.helper false
      end
    end
  end
end
