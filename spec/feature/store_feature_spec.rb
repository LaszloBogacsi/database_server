require './spec/spec_helper.rb'
require './model/store.rb'

describe 'DbServer' do

  it "has a '/' path to setup the database" do
    visit '/'
    expect(page.status_code).to be(200)
  end

  context ' database initialized' do
    before do
      visit '/'
    end


    it "has a '/set' path" do
      visit '/set'
      expect(page.status_code).to be(200)
    end

    it 'can accept a query string on the /set path and store it in memory' do
      visit '/set?somekey=somevalue'
      expect(page).to have_content('You saved: {"somekey"=>"somevalue"}')

    end

    it "has a '/get' path " do
      visit '/get'
      expect(page.status_code).to be(200)
    end

    it "returns the value stored in the key for a request on '/get?key=somekey' path" do
      visit '/set?somekey=somevalue'
      visit '/get?key=somekey'
      expect(page).to have_content("somevalue")
    end
  end
end
