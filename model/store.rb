class Store
  attr_accessor :database

  def initialize
    @database = []
  end

  def self.init
    @store = Store.new
  end

  def self.create(data)
    @store.database << data
    @store.save_to_file(data)
  end

  def self.find(search_key)
    @store.database.select do |item|
      item.has_key?(search_key)
    end
  end

  def save_to_file(array)
    File.open('database.txt', 'a') do |f|
      array.each do |line|
        f << line
        f.puts
      end
    end
  end

end
