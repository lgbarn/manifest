require 'spec_helper_acceptance'

describe 'manifest class' do
  describe 'apply manifest module' do
    it 'should apply with no errors' do
      pp = <<-EOS
      class { 'manifest': }
      EOS

      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes => true)
    end
  end
  
  describe 'manifest class' do
    describe file('/etc/jabil_manifest.txt') do
      it { should be_file }
      it { should be_owned_by 'root' }
      it { should be_grouped_into 'wheel' }
      it { should be_mode '550' }
    end
  end
  
end
