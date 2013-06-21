class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @home_view_controller = HomeViewController.alloc.init
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(@home_view_controller)
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible
    true
  end
end
