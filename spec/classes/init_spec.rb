require 'spec_helper'
describe 'manifest' do

  context 'with defaults for all parameters' do
    it { should contain_class('manifest') }
  end
end
