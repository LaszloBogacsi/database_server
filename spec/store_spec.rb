require './spec/spec_helper.rb'
require './model/store.rb'

describe 'Store' do

    let(:store) {Store.new}

  it 'has an empty database hash by default' do
    expect(store.database).to eq([])
  end
  it 'can read/write to database' do
    store.database << "new item"
    expect(store.database). to eq(["new item"])
  end


end

describe 'Store class methods' do

  it '.init' do
    expect(Store.init).to be_instance_of(Store)
  end
  context 'initialized Store' do
    before do
      @store = Store.init
      @data = {'key' => 'value'}
      @data2 = {'somekey' => 'somevalue'}
    end

    it '.return itself' do
      expect(Store.return).to eq(@store)
    end
    it '.create a new data item in store database' do
      Store.create(@data)
      expect(@store.database).to eq([@data])
    end
    it '.find the data item' do
      Store.create(@data)
      Store.create(@data2)

      expect(Store.find('key')).to eq([@data])
    end

  end

end
