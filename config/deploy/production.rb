# Single server example
role :app, %w{webpages@ec2-34-207-254-66.compute-1.amazonaws.com}
role :web, %w{webpages@ec2-34-207-254-66.compute-1.amazonaws.com}
role :db,  %w{webpages@ec2-34-207-254-66.compute-1.amazonaws.com}

set :ssh_options, {
  forward_agent: false,
  auth_methods: %w(publickey)
}
