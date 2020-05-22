# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'HelloFireBase' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for HelloFireBase
  pod 'Firebase/Core', :inhibit_warnings => true
  pod 'Firebase/Database', :inhibit_warnings => true
  pod 'Firebase/Auth', :inhibit_warnings => true

  $local_path = 'Development'

  # Declare a local (development) pod used in the project.
  # This function is preferred over "pod <MyPod>, :path => <Parent dir>".
  # Note that the dir structure of the podspec must following this structure:
  # ----- ParentDir/
  #           |
  #            ---- MyPod/ ---- Classes/
  #                    |
  #                     ------- MyPod.podspec
  def local_pod(name, *args, **kwargs)
    kwargs_cloned = kwargs.clone
    kwargs_cloned[:path] = "#{kwargs[:path]}/#{name}"
    pod name, *args, **kwargs_cloned
  end

  local_pod 'Login', :path => $local_path

  target 'HelloFireBaseTests' do
    inherit! :search_paths
    # Pods for testing
  end

end
