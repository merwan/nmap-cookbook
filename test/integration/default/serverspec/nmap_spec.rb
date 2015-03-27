require 'serverspec'

set :backend, :exec

describe package('nmap') do
  it { should be_installed }
end

describe command('nmap -p 80 -n 127.0.0.1') do
  its(:exit_status) { should eq 0 }
end
