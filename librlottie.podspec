Pod::Spec.new do |spec|
  spec.name         = 'librlottie'
  spec.version      = '0.1.7'
  spec.license      =  { :type => 'Apache 2',  }
  spec.homepage     = 'http://texturegroup.org'
  spec.authors      = { 'tangtao' => '412145540@qq.com' }
  spec.summary      = 'Smooth asynchronous user interfaces for iOS apps.'
  spec.source       = { :git => 'https://github.com/tangtaoit/librlottie.git' }
  spec.module_name  = 'librlottie'
  spec.header_dir   = 'librlottie'

  spec.ios.deployment_target = '10.0'
  spec.platform     = :ios, '10.0'
  spec.source_files = 'rlottie/src/**/*.cpp','rlottie/src/**/*.h','rlottie/inc/**/*.h','config.h','PublicHeaders/**/*','LottieInstance.mm'
  spec.exclude_files='rlottie/src/vector/vdrawhelper_neon.cpp','rlottie/src/vector/stb/**/*','rlottie/src/lottie/rapidjson/msinttypes/**/*'
  spec.public_header_files='PublicHeaders/**/*'
  spec.libraries = "stdc++","z","c++"
  spec.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
      'DEFINES_MODULE' => 'YES'
    }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  # spec.pod_target_xcconfig = {
  #     'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  #     'DEFINES_MODULE' => 'YES'
  # }
  # spec.pod_target_xcconfig = {
  #   'DEFINES_MODULE' => 'NO'
  # }
  spec.pod_target_xcconfig = { 'OTHER_CFLAGS' => ["-Dpixman_region_selfcheck(x)=1","-DLOTTIE_DISABLE_ARM_NEON=1","-DLOTTIE_THREAD_SAFE=1", "-DLOTTIE_IMAGE_MODULE_DISABLED=1"] }
  
end
