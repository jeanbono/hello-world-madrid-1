require 'grape'

module MyApp
  class API < Grape::API
    version 'v1', using: :header, vendor: 'myapp'
    format :json
    prefix :api

    desc 'Hello World'
    get :hello do
      {:hello => 'World'}
    end
  end
end

run MyApp::API
