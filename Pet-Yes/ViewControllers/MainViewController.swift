//
//  ViewController.swift
//  Pet-Yes
//
//  Created by Карина on 21.12.2022.
//

import UIKit

// MARK: - Main View Controller
 class MainViewController: UIViewController {
    
    // MARK: - Private property
    
    private let logoMain = UIImageView()
    private let subtitle = CustomLabel(title: "Ищите дом для питомца? Или мечтаете завести друга? Выберите:")
    private let sellerButton = CustomButton(title: "Я заводчик",
                                            backgroundColor: .systemGreen, isShadow: true)
    private let customerButton = CustomButton(title: "Хочу питомца",
                                              backgroundColor: .systemGreen, isShadow: true)
    
    private let conteinerButton = UIStackView()

    // MARK: - Override method
    override func viewDidLoad() {
        super.viewDidLoad()
        settingView()
    }
}

// MARK: - Setting view

private extension MainViewController {
    func settingView() {
        view.backgroundColor = .white
        addSubview()
        setupLogoImage()
        setupConteiner()
        setupSubtitle()
        setupLayout()
        settingSeller()
        settingCustomer()
    }
    
}

// MARK: - Setting

private extension MainViewController {
    
    func addSubview() {
        [logoMain, sellerButton, customerButton, conteinerButton, subtitle].forEach { subview in
            view.addSubview(subview)
        }
    }
    
    func setupLogoImage() {
        logoMain.image = UIImage(named: "logoMain")
        logoMain.contentMode = .scaleAspectFill
    }
    
    func setupConteiner() {
        conteinerButton.axis = .vertical
        conteinerButton.addArrangedSubview(sellerButton)
        conteinerButton.addArrangedSubview(customerButton)
        conteinerButton.spacing = 40
    }
    
    func setupSubtitle() {
        subtitle.numberOfLines = 0
        subtitle.textAlignment = .center
    }
    
    func settingCustomer() {
        customerButton.addTarget(self,
                                 action: #selector(showCustomerViewController),
                                 for: .touchUpInside)
    }
    
    func settingSeller() {
        sellerButton.addTarget(self,
                               action: #selector(showSellerViewController),
                               for: .touchUpInside)
    }
}

//MARK: - Action
private extension MainViewController {
    
    @objc
    func showCustomerViewController() {
        let customerVC = CustomerViewController()
        present(customerVC, animated: true)
    }
    
    @objc
    func showSellerViewController() {
        let sellerVC = SellerViewController()
        sellerVC.modalTransitionStyle = .crossDissolve
        sellerVC.modalPresentationStyle = .overFullScreen
        present(sellerVC, animated: true)
    }
    
}

// MARK: - Layout

private extension MainViewController {
    func setupLayout() {
        [logoMain, subtitle, sellerButton, customerButton, conteinerButton].forEach { subview in
            subview.translatesAutoresizingMaskIntoConstraints = false
        }
        NSLayoutConstraint.activate([
            logoMain.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            logoMain.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoMain.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.60),
            logoMain.heightAnchor.constraint(equalTo: logoMain.widthAnchor),
            
            subtitle.topAnchor.constraint(equalTo: logoMain.bottomAnchor, constant: 20),
            subtitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subtitle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80),
            subtitle.heightAnchor.constraint(equalTo: subtitle.heightAnchor),
            
            conteinerButton.topAnchor.constraint(equalTo: subtitle.bottomAnchor, constant: 20),
            conteinerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            conteinerButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80)
            
        ])
    }
}


