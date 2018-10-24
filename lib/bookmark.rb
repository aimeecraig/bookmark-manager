require 'pg'

class Bookmark
  attr_reader :title, :url

  def initialize(title, url)
    @title = title
    @url = url
  end

  def self.all
    # if ENV['TEST_DATABASE'] == 'bookmark_manager_test'
    #   connection = PG.connect(dbname: 'bookmark_manager_test')
    # else
    #   connection = PG.connect(dbname: 'bookmark_manager')
    # end
    result = connection.exec("SELECT * FROM bookmarks;")
    create_object_array(result)
  end

  def self.create(title:, url:)
    # if ENV['TEST_DATABASE'] == 'bookmark_manager_test'
    #   connection = PG.connect(dbname: 'bookmark_manager_test')
    # else
    #   connection = PG.connect(dbname: 'bookmark_manager')
    # end
    result = connection.exec("INSERT INTO bookmarks(url, title) VALUES('#{url}', '#{title}') RETURNING id, title, url;")
    create_object_array(result)
  end

  def self.create_object_array(result)
    arr = []
    result.each { |bookmark|
      arr.push(Bookmark.new(bookmark['title'], bookmark['url']))
    }
    arr
  end

  def self.connection
    if ENV['TEST_DATABASE'] == 'bookmark_manager_test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    connection
  end
end
