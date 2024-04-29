//
//  File.swift
//  
//
//  Created by Арсений Корниенко on 4/27/24.
//

import UIKit
import SnapKit

class SignUpViewController: UIViewController {
    private let dataView = SignUpDataView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(named: "backgrndColor")
        
        setupDataView()
    }
    
    private func setupDataView() {
        view.addSubview(dataView)
        dataView.action = {
            let viewController = LoginViewController()
            viewController.modalPresentationStyle = .fullScreen
            self.present(viewController, animated: false)
        }
        dataView.snp.makeConstraints {make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }

}
