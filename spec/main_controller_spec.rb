require File.expand_path("#{File.dirname(__FILE__)}/spec_helper")

describe MainController do
  it 'shows start page' do
    get('/').status.should == 200
    last_response['Content-Type'].should == 'text/html'
    last_response.should =~ /<h1>Welcome to Ramaze!<\/h1>/
  end

  it 'shows /notemplate' do
    get('/notemplate').status.should == 200
    last_response['Content-Type'].should == 'text/html'
    last_response.should =~ /there is no 'notemplate\.xhtml' associated with this action/
  end
end
