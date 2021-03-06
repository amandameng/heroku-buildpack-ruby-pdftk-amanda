require_relative 'spec_helper'

describe "Ruby Versions" do
  it "should deploy ruby 1.8.7 properly" do
    Hatchet::AnvilApp.new("mri_187").deploy do |app|
      version = '1.8.7'
      expect(app.output).to match(version)
      expect(app.run('ruby -v')).to match(version)
    end
  end

  it "should deploy ruby 1.9.2 properly" do
    Hatchet::AnvilApp.new("mri_192").deploy do |app|
      version = '1.9.2'
      expect(app.output).to match(version)
      expect(app.run('ruby -v')).to match(version)
    end
  end

  it "should deploy ruby 1.9.2 properly (git)" do
    Hatchet::GitApp.new("mri_192", buildpack: git_repo).deploy do |app|
      version = '1.9.2'
      expect(app.output).to match(version)
      expect(app.run('ruby -v')).to match(version)
    end
  end

  it "should deploy ruby 1.9.3 properly" do
    Hatchet::AnvilApp.new("mri_193").deploy do |app|
      version = '1.9.3'
      expect(app.output).to match(version)
      expect(app.run('ruby -v')).to match(version)
    end
  end

  it "should deploy ruby 2.0.0 properly" do
    Hatchet::AnvilApp.new("mri_200").deploy do |app|
      version = '2.0.0'
      expect(app.output).to match(version)
      expect(app.run('ruby -v')).to match(version)
    end
  end
end
