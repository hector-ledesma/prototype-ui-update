//
//  SignupPageOne.swift
//  prototype-ui-update
//
//  Created by Karen Rodriguez on 11/7/20.
//

import UIKit

class SignupPageOne: UIView {

    @IBOutlet weak var saveButton: UIButton! {
        didSet {
            saveButton.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
                self.saveButton.topAnchor.constraint(equalTo: emailInput.bottomAnchor, constant: 1),
                self.saveButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                self.saveButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
            ])
            
        }
    }

    let firstNameInput = CustomTextInputView().loadView() as! CustomTextInputView
    let lastNameInput = CustomTextInputView().loadView() as! CustomTextInputView
    let emailInput = CustomTextInputView().loadView() as! CustomTextInputView


    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        setUpInputs()
    }

    private func setUpInputs() {

        // Set up First Name
        self.firstNameInput.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(self.firstNameInput)

        NSLayoutConstraint.activate([
            self.firstNameInput.topAnchor.constraint(equalTo: self.topAnchor, constant: 150),
            self.firstNameInput.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.firstNameInput.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
        ])

        firstNameInput.inputTextField.placeholder = "John"
        firstNameInput.titleLabel.text = "First Name"

        // Set up Last Name
        self.lastNameInput.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(self.lastNameInput)

        NSLayoutConstraint.activate([
            self.lastNameInput.topAnchor.constraint(equalTo: firstNameInput.bottomAnchor, constant: 1),
            self.lastNameInput.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.lastNameInput.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
        ])

        lastNameInput.inputTextField.placeholder = "Doe"
        lastNameInput.titleLabel.text = "Last Name"

        // Set up Last Name
        self.emailInput.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(self.emailInput)

        NSLayoutConstraint.activate([
            self.emailInput.topAnchor.constraint(equalTo: lastNameInput.bottomAnchor, constant: 1),
            self.emailInput.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.emailInput.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
        ])

        emailInput.inputTextField.placeholder = "johndoe@email.com"
        emailInput.titleLabel.text = "Email"
    }

}
