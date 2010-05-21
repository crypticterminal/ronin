require 'spec_helper'
require 'platform/helpers/overlays'
require 'ronin/platform'

Spec::Runner.configure do |spec|
  include Helpers::Overlays

  spec.before(:suite) do
    Platform::Overlay.create!(
      :path => File.join(OVERLAYS_DIR,'hello'),
      :name => 'hello',
      :domain => Platform::Overlay::LOCAL_DOMAIN
    )

    Platform::Overlay.create!(
      :path => File.join(OVERLAYS_DIR,'random'),
      :uri => 'git@github.com/path/to/random.git',
      :installed => true,
      :name => 'random',
      :domain => 'github.com'
    )

    Platform::Overlay.create!(
      :path => File.join(OVERLAYS_DIR,'test1'),
      :uri => 'git@github.com/path/to/test1.git',
      :name => 'test1',
      :domain => 'github.com'
    )

    Platform::Overlay.create!(
      :path => File.join(OVERLAYS_DIR,'test2'),
      :uri => 'git@github.com/path/to/test2.git',
      :name => 'test2',
      :domain => 'github.com'
    )
  end
end
