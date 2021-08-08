configure do
  # Log queries to STDOUT in development
  if Sinatra::Application.development?
    ActiveRecord::Base.logger = Logger.new(STDOUT)
  end

if Sinatra::Application.development?
  set :database, {
    adapter: "sqlite3",
    database: "db/db.sqlite3"
  }
else
  db_url = 'postgres://eetamzdtdjtvuu:3ea08b171b323a3c8018c98e762a95ef768c0035797e51a6fe3fcdc89cc27f55@ec2-54-243-92-68.compute-1.amazonaws.com:5432/de2altdnnbm2l4'
  db = URI.parse(ENV['DATABASE_URL'] || db_url)
  set :database, {
    adapter: "postgresql",
    host: db.host,
    username: db.user,
    password: db.password,
    database: db.path[1..-1],
    encoding: 'utf8'
  }
end

  # Load all models from app/models, using autoload instead of require
  # See http://www.rubyinside.com/ruby-techniques-revealed-autoload-1652.html
  Dir[APP_ROOT.join('app', 'models', '*.rb')].each do |model_file|
    filename = File.basename(model_file).gsub('.rb', '')
    autoload ActiveSupport::Inflector.camelize(filename), model_file
  end

end
