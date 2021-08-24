//
//  HomeViewController.swift
//  Start
//
//  Created by 김응진 on 2021/08/05.
//

import UIKit

class HomeViewController: BaseViewcontroller{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.title = "Home"
        self.navigationController?.navigationBar.isTranslucent = false
        view.backgroundColor = .orange
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "home_navigation_bell") ,style: .plain, target: self, action: #selector(goToNoticeVC))
        
        let uploadBT = UIBarButtonItem(image: #imageLiteral(resourceName: "home_navigation_upload"), style: .plain, target: self, action: #selector(goToUploadVC))
        let messageBT = UIBarButtonItem(image: #imageLiteral(resourceName: "home_navigation_message"), style: .plain, target: self, action: #selector(goToMessageVC))
        navigationItem.rightBarButtonItems = [uploadBT,messageBT]
    }
    
    @objc fileprivate func goToNoticeVC() {
        let noticeVC = NoticeViewController()
        self.navigationController?.pushViewController(noticeVC, animated: true)
    }
    @objc fileprivate func goToUploadVC() {
        let noticeVC = UploadViewController()
        self.navigationController?.pushViewController(noticeVC, animated: true)
    }
    @objc fileprivate func goToMessageVC() {
        let noticeVC = MessageViewController()
        self.navigationController?.pushViewController(noticeVC, animated: true)
    }
}
