require 'pg'

class Bookmark
  attr_reader :id, :url, :title

  def initialize(id, url, title)
    @title = title
    @url = url
    @id = id
  end

  def self.all
    result = connection.exec("SELECT * FROM bookmarks;")
    create_object_array(result)
  end

  def self.create(title:, url:)
    result = connection.exec("INSERT INTO bookmarks(url, title) VALUES('#{url}',
     '#{title}') RETURNING id, url, title;")
    create_object_array(result)
  end

  def self.delete(id)
    connection.exec("DELETE FROM bookmarks WHERE id = #{id};")
  end

  def self.edit(id)

  end

  def self.create_object_array(result)
    arr = []
    result.each { |bookmark|
      arr.push(Bookmark.new(bookmark['id'], bookmark['url'], bookmark['title']))
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
