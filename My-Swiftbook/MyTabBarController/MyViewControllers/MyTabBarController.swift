//
//  MyTabBarController.swift
//  My-Swiftbook
//
//  Created by Aren Musayelyan on 08.06.23.
//

import UIKit

class MyTabBarController: UITabBarController {
    
    var vc1: WelcomeToSwiftViewController?
    var vc2: SwiftGuideViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        vc1 = storyBoard.instantiateViewController(withIdentifier: "WelcomeToSwiftViewControllerID") as? WelcomeToSwiftViewController
        vc2 = storyBoard.instantiateViewController(withIdentifier: "SwiftGuideViewControllerID") as? SwiftGuideViewController
        vc2?.delegate = self
        if let vc1 = vc1, let vc2 = vc2 {
            setViewControllers([vc1, vc2], animated: false)
        }
    }
}

extension MyTabBarController: SwiftGuideViewControllerDelegate {
    func celDidSelect(method: LanguageGuide) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "GuidlinePresentViewControllerID") as! GuidlinePresentViewController
        vc.method = method
//        let nav = UINavigationController(rootViewController: vc)
//        self.present(nav, animated: true, completion: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
}



