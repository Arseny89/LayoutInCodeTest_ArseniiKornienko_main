//
//  SceneDelegate.swift
//  LayoutInCodeTest_ArseniiKornienko
//
//  Created by Арсений Корниенко on 4/26/24.
//

import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = LoginController()
        window?.makeKeyAndVisible()
    }

}

