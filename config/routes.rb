Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  resources :blogs
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/your/endpoint"
  end
end