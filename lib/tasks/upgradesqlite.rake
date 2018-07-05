namespace :upgradesqlite do
	desc "Update SQLite tables as part of rails 5.2 upgrade"
  task default_task: :environment do
  	ExampleModel.where("boolean_column = 't'").update_all(boolean_column: 1)
  	ExampleModel.where("boolean_column = 'f'").update_all(boolean_column: 0)
  end

end
