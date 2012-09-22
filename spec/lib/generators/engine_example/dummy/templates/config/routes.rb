Rails.application.routes.draw do
  mount EngineExample::Engine, :at => "/engine_example"
end

