RSpec.describe Gollum::Elasticsearch do
  it 'has a version number' do
    expect(Gollum::Elasticsearch::VERSION).not_to be nil
  end

  it 'overrides the /gollum/search path' do
    get '/gollum/search'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('TODO: Overriden search results go here.')
  end
end
