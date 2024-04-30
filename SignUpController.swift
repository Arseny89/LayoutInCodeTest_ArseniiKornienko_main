//
//  File.swift
//  
//
//  Created by Арсений Корниенко on 4/27/24.
//

import UIKit
import SnapKit

final class SignUpController: UIViewController {
    private let dataView = SignUpDataView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgrnd
        dataView.switchViewButton.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        setupDataView()
    }
    
    private func setupDataView() {
        view.addSubview(dataView)
        dataView.snp.makeConstraints {make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
    
    @objc private func clickButton() {
        let viewController = LoginController()
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: false)
    }
}
