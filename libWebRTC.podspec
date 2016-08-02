Pod::Spec.new do |s|
    s.name             = 'libWebRTC'
    s.version          = '0.1.0'
    s.summary          = 'webrtc'


    s.description      = <<-DESC
                        webrtc
                       DESC

    s.homepage         = 'https://github.com/notedit'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'notedit' => 'notedit@gmail.com' }
    s.source           = { :git => 'https://github.com/notedit/libWebRTC.git', :tag => s.version.to_s }

    s.source_files =  'headers/*.h'
    s.public_header_files = "headers/*.h"
    s.preserve_paths = 'libWebRTC-LATEST-Universal-Release.a'
    s.vendored_libraries = 'libWebRTC-LATEST-Universal-Release.a'
 

    s.ios.framework = 'AVFoundation', 'AudioToolbox', 'CoreGraphics', 'CoreMedia', 'GLKit', 'UIKit', 'VideoToolbox'
    s.libraries = 'c', 'sqlite3', 'stdc++'
    s.requires_arc = true
    s.ios.deployment_target = '8.0'
end
