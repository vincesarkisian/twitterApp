require 'rspec'

describe 'create a tweet' do
  it 'should create tweet object' do
    tweet = Tweet.new({content: 'tweet content', timestamp: 'today'})
    expect.(tweet.content).to eq('tweet content')
    expect.(tweet.timestamp).to eq('today')
  end
end