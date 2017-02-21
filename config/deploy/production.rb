# Single server example
role :app, %w{webpages@107.170.186.52}
role :web, %w{webpages@107.170.186.52}
role :db,  %w{webpages@107.170.186.52}

set :ssh_options, {
  keys: %w(/home/users/dave/.ssh/id_rsa.pub),
  forward_agent: false,
  auth_methods: %w(publickey password)
}
