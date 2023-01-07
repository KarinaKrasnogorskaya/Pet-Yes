//
//  SellerViewController.swift
//  Pet-Yes
//
//  Created by Карина on 24.12.2022.
//

import UIKit

//MARK: - Seller View Controller
class SellerViewController: UIViewController {
    
    //MARK: - Private property
    
    private let logoImage = UIImageView()
    private let subtitleLabel = CustomLabel(title: "Предлагаем вам зарегистрироваться:")
    
    private let kannelLabel = CustomLabel(title: "Название питомника")
    private let nameLabel = CustomLabel(title: "Имя")
    private let surnameLabel = CustomLabel(title: "Фамилия")
    private let emailLabel = CustomLabel(title: "Email")
    private let cityLabel = CustomLabel(title: "Город")
    private let passwordLabel = CustomLabel(title: "Пароль")
    
    private let kannelTF = CustomTextField(placeholder: "Введите название", isPrivate: false)
    private let nameTF = CustomTextField(placeholder: "Имя", isPrivate: false)
    private let surnameTF = CustomTextField(placeholder: "Фамилия", isPrivate: false)
    private let emailTF = CustomTextField(placeholder: "Email", isPrivate: false)
    private let cityTF = CustomTextField(placeholder: "Город", isPrivate: false)
    private let passwordTF = CustomTextField(placeholder: "Пароль", isPrivate: false)
    
    private let conteinerKannel = UIStackView()
    private let conteinerName = UIStackView()
    private let conteinerSurname = UIStackView()
    private let conteinerEmail = UIStackView()
    private let conteinerCity = UIStackView()
    private let conteinerPassword = UIStackView()
    

    // MARK: - Override method
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}


// MARK: - Setting View

private extension SellerViewController {
    func setupView() {
        view.backgroundColor = .white
        addSubview()
        setupImage()
        setupConteiner(stackView: conteinerKannel,
                       andLabel: kannelLabel,
                       andTF: kannelTF)
        setupConteiner(stackView: conteinerName,
                       andLabel: nameLabel,
                       andTF: nameTF)
        setupConteiner(stackView: conteinerSurname,
                       andLabel: surnameLabel,
                       andTF: surnameTF)
        setupConteiner(stackView: conteinerEmail,
                       andLabel: emailLabel,
                       andTF: emailTF)
        setupConteiner(stackView: conteinerCity,
                       andLabel: cityLabel,
                       andTF: cityTF)
        setupConteiner(stackView: conteinerPassword,
                       andLabel: passwordLabel,
                       andTF: passwordTF)
        setupLayout()
        
    }
    
}

// MARK: - Setting

private extension SellerViewController {
    
    func addSubview() {
        [logoImage, subtitleLabel, kannelLabel, kannelTF, conteinerKannel, nameLabel, nameTF, conteinerName,
         surnameLabel, surnameTF, conteinerSurname, emailLabel, emailTF, conteinerEmail, cityLabel, cityTF, conteinerCity, passwordLabel, passwordTF, conteinerPassword].forEach { subviews in
            view.addSubview(subviews)
        }
    }
    
    func setupImage() {
        logoImage.image = UIImage(named: "Pet-Yes")
        logoImage.contentMode = .scaleAspectFill
    }
    
    func setupConteiner(stackView: UIStackView, andLabel: UILabel, andTF: UITextField) {
        stackView.axis = .vertical
        stackView.addArrangedSubview(andLabel)
        stackView.addArrangedSubview(andTF)
    }
}

// MARK: - Layout

private extension SellerViewController {
    
    func setupLayout() {
        [logoImage, subtitleLabel, kannelLabel, kannelTF, conteinerKannel, nameLabel, nameTF, conteinerName,
         surnameLabel, surnameTF, conteinerSurname, emailLabel, emailTF, conteinerEmail, cityLabel, cityTF, conteinerCity, passwordLabel, passwordTF, conteinerPassword].forEach { subview in
            subview.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            subtitleLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 10),
            subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            conteinerKannel.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 10),
            conteinerKannel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            conteinerKannel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80),
            
            conteinerName.topAnchor.constraint(equalTo: conteinerKannel.bottomAnchor, constant: 10),
            conteinerName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            conteinerName.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80),
            
            conteinerSurname.topAnchor.constraint(equalTo: conteinerName.bottomAnchor, constant: 10),
            conteinerSurname.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            conteinerSurname.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80),
            
            conteinerEmail.topAnchor.constraint(equalTo: conteinerSurname.bottomAnchor, constant: 10),
            conteinerEmail.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            conteinerEmail.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80),
            
            conteinerCity.topAnchor.constraint(equalTo: conteinerEmail.bottomAnchor, constant: 10),
            conteinerCity.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            conteinerCity.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80),
            
            conteinerPassword.topAnchor.constraint(equalTo: conteinerCity.bottomAnchor, constant: 10),
            conteinerPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            conteinerPassword.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80)
        ])
    }
}
