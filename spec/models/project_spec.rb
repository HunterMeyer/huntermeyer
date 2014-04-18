require 'spec_helper'

describe Project do
  before(:each) do
    @project = Project.new
  end
  
  describe 'urls' do
    it 'should add http:// if it is not present' do
      @project.demo_url = 'huntermeyer.com'
      @project.save
      @project.demo_url.should eq 'http://huntermeyer.com'
    end

    it 'should not do anything if https:// is present' do
      @project.repo_url = 'https://huntermeyer.com'
      @project.save
      @project.repo_url.should eq 'https://huntermeyer.com'
    end

    it 'should not do anything when no url is present' do
      @project.demo_url = nil
      @project.save
      @project.demo_url.should eq nil
    end
  end

end
