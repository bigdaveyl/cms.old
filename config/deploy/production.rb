# Single server example
role :app, %w{webpages@206.81.13.145}
role :web, %w{webpages@206.81.13.145}
role :db,  %w{webpages@206.81.13.145}

set :ssh_options, {
  forward_agent: false,
  auth_methods: %w(publickey)
}
