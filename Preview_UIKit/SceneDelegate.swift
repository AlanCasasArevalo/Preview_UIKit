import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let initialVC = HomeViewController(nibName: "HomeViewController", bundle: nil)
        let navVC = UINavigationController(rootViewController: initialVC)

        window?.makeKeyAndVisible()
        window?.rootViewController = navVC
        window?.windowScene = windowScene
    }

}

