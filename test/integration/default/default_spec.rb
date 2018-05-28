# encoding: utf-8

# ntp
describe package('ntp') do
  it { should be_installed }
end

describe service('ntp') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe ntp_conf do
  its('driftfile') { should eq '/var/lib/ntp/ntp.drift' }
  its('server') { should eq [
      '0.sg.pool.ntp.org',
      '0.asia.pool.ntp.org',
      '1.asia.pool.ntp.org',
      '2.asia.pool.ntp.org',
      'ntp.ubuntu.com'
  ]}
  its('server') { should_not include 'iburst' }
end