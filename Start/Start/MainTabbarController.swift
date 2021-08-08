//
//  MainTabbarController.swift
//  Start
//
//  Created by 김응진 on 2021/08/05.
//

import UIKit

class MainTabbarController: UITabBarController {
    override func viewDidLoad() {
        print("MainTabbarController - viewDidLoad() called")
        setUpTabbar()
    }
    
    func setUpTabbar() {
        view.backgroundColor = UIColor(named: "white_black")
        tabBar.barTintColor = UIColor(named: "white_black")
        tabBar.unselectedItemTintColor = UIColor(named: "gray_white")
        tabBar.tintColor = .orange
        
        let homeVC = navigationControllerSetup(unselectedImage: #imageLiteral(resourceName: "co_tabBar_home_nor"), selectedImage: #imageLiteral(resourceName: "co_tabBar_home_sel"), title: "Home", rootViewController: PostViewController())
        let searchVC = navigationControllerSetup(unselectedImage: #imageLiteral(resourceName: "co_tabBar_search_nor"), selectedImage: #imageLiteral(resourceName: "co_tabBar_search_sel"), title: "Search", rootViewController: SearchViewController())
        let matchVC = navigationControllerSetup(unselectedImage: #imageLiteral(resourceName: "cell_match_nor"), selectedImage: #imageLiteral(resourceName: "co_tabBar_match_sel"), title: "Match", rootViewController: MatchViewController())
        let practiceVC = navigationControllerSetup(unselectedImage: #imageLiteral(resourceName: "co_tabBar_practice_nor"), selectedImage: #imageLiteral(resourceName: "co_tabBar_practice_sel"), title: "Practice", rootViewController: PracticeViewController())
        let profileVC = navigationControllerSetup(unselectedImage: #imageLiteral(resourceName: "co_tabBar_profile_nor") , selectedImage: #imageLiteral(resourceName: "co_tabBar_profile_sel"), title: "Profile", rootViewController: ProfileViewController())
        
        viewControllers = [homeVC,searchVC,matchVC,practiceVC,profileVC]

    }
    
    func navigationControllerSetup(unselectedImage: UIImage, selectedImage: UIImage, title: String, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.tabBarItem.title = title
        nav.navigationBar.tintColor = UIColor(named: "black_white")
        return nav
    }
}

// 처음 시작할 때 쓴 코드 - > 효율적이지 못함 test
//func setUpTabbar() {
//    print("MainTabbarController - setUpTabbar() called")
//    let firstNC = UINavigationController.init(rootViewController: ViewController(title: "첫번째", bgColor: .blue))
//    let secondNC = UINavigationController.init(rootViewController: ViewController(title: "두번째", bgColor: .red))
//    let thirdNC = UINavigationController.init(rootViewController: ViewController(title: "세번째", bgColor: .yellow))
//    let fourthNC = UINavigationController.init(rootViewController: ViewController(title: "네번째", bgColor: .gray))
//    let fifthNC = UINavigationController.init(rootViewController: ViewController(title: "다섯번째", bgColor: .green))
//
//    self.viewControllers = [firstNC,secondNC,thirdNC,fourthNC,fifthNC]
//
//    let firstTabbarItem = UITabBarItem(title: "하나", image: UIImage(systemName: "airplayaudio"), tag: 0)
//    let secondTabbarItem = UITabBarItem(title: "둘", image: UIImage(systemName: "airplayvideo"), tag: 1)
//    let thirdTabbarItem = UITabBarItem(title: "셋", image: UIImage(systemName: "arrow.clockwise.icloud.fill"), tag: 2)
//    let fourthTabbarItem = UITabBarItem(title: "넷", image: UIImage(systemName: "arrow.down.left.video.fill"), tag: 3)
//    let fifthTabbarItem = UITabBarItem(title: "다섯", image: UIImage(systemName: "safari.fill"), tag: 4)
//
//    firstNC.tabBarItem = firstTabbarItem
//    secondNC.tabBarItem = secondTabbarItem
//    thirdNC.tabBarItem = thirdTabbarItem
//    fourthNC.tabBarItem = fourthTabbarItem
//    fifthNC.tabBarItem = fifthTabbarItem
//}
