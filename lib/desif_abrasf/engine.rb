module DesifAbrasf
  class Engine < ::Rails::Engine
    isolate_namespace DesifAbrasf

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
