# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'bundler'
require 'motion-calabash'

Bundler.setup
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'property management'
  app.identifier = 'com.heyook.pm'
  app.provisioning_profile = '/Users/he9qi/Library/MobileDevice/Provisioning Profiles/CA34EA36-37C4-407D-9AF7-D38D0F99B310.mobileprovision'
  
  app.icons = ['logo.png', 'logo@2x.png']
  
  # Podfile
  app.pods do
    pod 'JSONKit'
  end
  
  # spec color
  app.redgreen_style = :full # default: :focused
  
end
