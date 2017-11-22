TrackRate::Engine.routes.draw do
  namespace :send_grid do
    post 'open' => 'send_grid#open'
  end
end
