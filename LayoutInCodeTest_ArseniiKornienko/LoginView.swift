//
//  ViewController.swift
//  LayoutInCodeTest_ArseniiKornienko
//
//  Created by Арсений Корниенко on 4/26/24.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    private let dataView = LoginDataView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(named: "backgrndColor")
        
        setupDataView()
    }
    
    private func setupDataView() {
        view.addSubview(dataView)
        dataView.action = {
            let viewController = SignUpViewController()
            viewController.modalPresentationStyle = .fullScreen
            self.present(viewController, animated: false)
        }
        dataView.snp.makeConstraints {make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
    
}

