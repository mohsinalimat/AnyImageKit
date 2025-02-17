Pod::Spec.new do |s|
    s.name = 'AnyImageKit'
    s.version = '0.6.3'
    s.license = 'MIT'
    s.summary = 'AnyImageKit is a toolbox for picking and editing photos.'
    s.homepage = 'https://github.com/AnyImageProject/AnyImageKit'
    s.authors = {
        'anotheren' => 'liudong.edward@gmail.com',
        'RayJiang16' => '1184731421@qq.com',
    }
    s.source = { :git => 'https://github.com/AnyImageProject/AnyImageKit.git', :tag => s.version }
    s.ios.deployment_target = '10.0'
    s.swift_versions = ['5.0', '5.1']
    s.frameworks = 'Foundation'
    
    s.default_subspecs = 'Core', 'Picker', 'Editor'
    
    s.subspec 'Core' do |core|
        core.source_files = 'Sources/Core/**/*'
        core.dependency 'SnapKit'
    end
    
    s.subspec 'Picker' do |picker|
        picker.source_files = 'Sources/Picker/**/*.swift'
        picker.resources = 'Sources/Picker/Resources/**/*'
        picker.dependency 'AnyImageKit/Core'
    end
    
    s.subspec 'Editor' do |editor|
        editor.source_files = 'Sources/Editor/**/*.swift'
        editor.resources = 'Sources/Editor/Resources/**/*'
        editor.dependency 'AnyImageKit/Core'
        editor.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'ANYIMAGEKIT_ENABLE_EDITOR' }
    end
    
end
