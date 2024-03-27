//
//  RMTabBarViewController.swift
//  RickAndMorty
//
//  Created by Pinocchio on 2024/3/26.
//

import UIKit

/// RMTabBarViewController：用於顯示包含RM角色、地點、劇集和設置的選項卡介面。
final class RMTabBarViewController: UITabBarController {
    
    /// 覆蓋視圖載入後的設置，設置選項卡。
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    
    /// 設置選項卡的功能。
    private func setUpTabs() {
        // 創建要顯示在選項卡中的視圖控制器。
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        // 設置大標顯示模式。
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        // 創建導航控制器並設置根視圖控制器。
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        // 設置選項卡項目。
        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        // 設置導航欄是否偏好大標題。
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        // 設置選項卡的視圖控制器。
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
    }
}

#Preview("mainVC", body: {
    RMTabBarViewController()
})


