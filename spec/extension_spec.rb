require 'spec_helper'

describe Sinatra::Presence do
  it "should initialize with :local_authority set to 127.0.0.1" do
    expect(TestApp.local_authority).to eq('http://127.0.0.1:9292')
  end

  # validate rack-test is working
  it "should respond to '/'" do
    get '/'
    expect(last_response.body).to eq("Hellocal")
  end

  it "should respond to '/local'" do
    get '/local'
  end

  it "should redirect requests to '/local'" do
    get '/local'
    expect(last_response).to be_redirect
  end

  it "should set a cookie" do
    get '/' 
    expect(rack_mock_session.cookie_jar["local_url"]).to eq("http://127.0.0.1:9292/")
  end

end

