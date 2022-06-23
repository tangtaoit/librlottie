Pod::Spec.new do |spec|
  spec.name         = 'librlottie'
  spec.version      = '0.1.5'
  spec.license      =  { :type => 'Apache 2',  }
  spec.homepage     = 'http://texturegroup.org'
  spec.authors      = { 'tangtao' => '412145540@qq.com' }
  spec.summary      = 'Smooth asynchronous user interfaces for iOS apps.'
  spec.source       = { :git => 'https://github.com/tangtaoit/librlottie.git' }
  spec.module_name  = 'librlottie'
  spec.header_dir   = 'librlottie'

  spec.ios.deployment_target = '10.0'
  # spec.osx.deployment_target = '10.10'
  # spec.tvos.deployment_target = '9.0'
  # spec.watchos.deployment_target = '2.0'
  spec.swift_version = '5.0'
  spec.source_files = 'Module/*.swft','rlottie/src/**/*.{h,c,cpp}','rlottie/src/**/*.{h,c,cpp}','rlottie/inc/**/*.{h,c,cpp}','generate/**/*.{h,c,cpp}', 'include/**/*.h','PublicHeaders/**/*','Xcode/librlottie.h','LottieInstance.mm'
  spec.exclude_files='rlottie/src/vector/vdrawhelper_neon.cpp','rlottie/src/vector/stb/**/*','rlottie/src/lottie/rapidjson/msinttypes/**/*'
  spec.public_header_files='PublicHeaders/**/*','include/rlottie/rlottie_capi.h', 'include/rlottie/rlottiecommon.h','Xcode/librlottie.h'
 
  spec.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.module_map = "Xcode/module.modulemap"
  
  
  spec.pod_target_xcconfig = { 
    'OTHER_CFLAGS' => ["-Dpixman_region_selfcheck(x)=1","-DLOTTIE_DISABLE_ARM_NEON=1","-DLOTTIE_THREAD_SAFE=1", "-DLOTTIE_IMAGE_MODULE_DISABLED=1"] ,
    'HEADER_SEARCH_PATHS' => '$(inherited) ${PODS_TARGET_SRCROOT}/generate ${PODS_TARGET_SRCROOT}/PublicHeaders'
  }

  spec.libraries = 'c++'
  spec.preserve_paths = 'rlottie','include', 'generate'
  
end
