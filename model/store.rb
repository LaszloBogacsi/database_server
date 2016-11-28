class Store
  attr_accessor :database

  def initialize
    @database = []
  end

  def self.init
    @store = Store.new
  end

  def self.return
    @store
  end

  def self.create(data)
    @store.database << data
  end

  def self.find(search_key)
    @store.database.select do |item|
      item.has_key?(search_key)
    end
  end

end
