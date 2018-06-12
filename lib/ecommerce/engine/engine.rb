module Ecommerce
  module Engine
    class Engine < ::Rails::Engine
      isolate_namespace Ecommerce::Engine
    end
  end
end
