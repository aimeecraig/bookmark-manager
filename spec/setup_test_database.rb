def setup_test_database
  connection = PG.connect(dbname: ENV['TEST_DATABASE'])
  connection.exec("TRUNCATE bookmarks;")
  # connection.exec("CREATE TABLE bookmarks( id SERIAL PRIMARY KEY, url VARCHAR(60));")
end
