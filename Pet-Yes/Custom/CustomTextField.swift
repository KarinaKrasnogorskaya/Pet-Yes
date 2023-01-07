//
//  CustomTextField.swift
//  Pet-Yes
//
//  Created by Карина on 25.12.2022.
//

import UIKit

//MARK: - Custom Text Field
final class CustomTextField: UITextField {
    
    private let padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 40)
    
    //MARK: - Initilizator
    
    init(placeholder: String, isPrivate: Bool = false) {
        super.init (frame: .zero)
        setupTextField(placeholder: placeholder, isPrivate: isPrivate)
    }
    
    @available (*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Override Methods
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    //MARK: - Private Methods
    
    private func setupTextField(placeholder: String, isPrivate: Bool) {
        textColor = .black
        
        layer.cornerRadius = 10
        layer.borderWidth = 1.5
        layer.borderColor = UIColor.white.cgColor
        layer.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        font = .boldSystemFont(ofSize: 18)
        heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        if isPrivate {
            isSecureTextEntry = true
        }
    }
}
