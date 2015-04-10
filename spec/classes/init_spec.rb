require 'spec_helper'
describe 'manifest' do

  context 'with defaults for all parameters' do
    it { should contain_class('manifest') }
    it do 
      should contain_file('/etc/jabil_manifest.txt').with(
        'ensure'  => 'file',
        'owner'   => 'root',
        'group'   => 'wheel',
        'mode'    => '0550',
    ) end 
  end
end
