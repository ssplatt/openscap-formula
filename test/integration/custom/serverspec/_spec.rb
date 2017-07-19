require 'serverspec'

# Required by serverspec
set :backend, :exec

describe package("libopenscap8") do
  it { should be_installed }
end

describe package("ssg-base") do
  it { should be_installed }
end

describe package("ssg-debian") do
  it { should be_installed }
end
