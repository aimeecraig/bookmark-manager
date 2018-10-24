def setup_test_database
  connection = PG.connect(dbname: ENV['TEST_DATABASE'])
  connection.exec("TRUNCATE bookmarks;")
end
