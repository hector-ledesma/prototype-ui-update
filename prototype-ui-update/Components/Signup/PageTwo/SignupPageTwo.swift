//
//  SignupPageTwo.swift
//  prototype-ui-update
//
//  Created by Karen Rodriguez on 11/8/20.
//

import UIKit

class SignupPageTwo: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var contentView: UIView!

    let educationInput = CustomTextInputView().loadView() as! CustomTextInputView
    let lookingForInput = CustomTextInputView().loadView() as! CustomTextInputView
    let currentJobInput = CustomTextInputView().loadView() as! CustomTextInputView
    let skillsInput = CustomTextInputView().loadView() as! CustomTextInputView

    override func layoutSubviews() {
        super.layoutSubviews()
        layoutOutlets()
    }

    /// After all outlets are rendered onto the view, layout their constraints programmatically.
    private func layoutOutlets() {

        //  Title
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            self.titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
        ])

        //  Description
        self.descriptionTextView.translatesAutoresizingMaskIntoConstraints = false
//        self.descriptionTextView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)

        NSLayoutConstraint.activate([
            self.descriptionTextView.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 20),
            self.descriptionTextView.leadingAnchor.constraint(equalTo: self.titleLabel.leadingAnchor),
            self.descriptionTextView.trailingAnchor.constraint(equalTo: self.titleLabel.trailingAnchor),
            self.descriptionTextView.bottomAnchor.constraint(equalTo: self.descriptionTextView.topAnchor, constant: 70)
        ])

        //  ContentView
        self.contentView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            self.contentView.topAnchor.constraint(equalTo: self.descriptionTextView.bottomAnchor, constant: 20),
            self.contentView.leadingAnchor.constraint(equalTo: self.titleLabel.leadingAnchor),
            self.contentView.trailingAnchor.constraint(equalTo: self.titleLabel.trailingAnchor)
        ])

        //  Once content view is set up, load up text fields nibs.
        layoutCustomTextFields()
    }

    private func layoutCustomTextFields() {
        //  Education Field
        self.educationInput.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.educationInput)

        NSLayoutConstraint.activate([
            self.educationInput.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            self.educationInput.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            self.educationInput.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor)
        ])

        self.educationInput.inputTextField.placeholder = "Bachelor's Degree"
        self.educationInput.titleLabel.text = "Education"

        //  Looking For Field
        self.lookingForInput.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.lookingForInput)

        NSLayoutConstraint.activate([
            self.lookingForInput.topAnchor.constraint(equalTo: self.educationInput.bottomAnchor),
            self.lookingForInput.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            self.lookingForInput.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor)
        ])

        self.lookingForInput.inputTextField.placeholder = "Full Time"
        self.lookingForInput.titleLabel.text = "Looking For"

        //  Current Job Field
        self.currentJobInput.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.currentJobInput)

        NSLayoutConstraint.activate([
            self.currentJobInput.topAnchor.constraint(equalTo: self.lookingForInput.bottomAnchor),
            self.currentJobInput.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            self.currentJobInput.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor)
        ])

        self.currentJobInput.inputTextField.placeholder = "Designer"
        self.currentJobInput.titleLabel.text = "Current Job"

        //  My Skills Field
        self.skillsInput.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.skillsInput)

        NSLayoutConstraint.activate([
            self.skillsInput.topAnchor.constraint(equalTo: self.currentJobInput.bottomAnchor),
            self.skillsInput.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            self.skillsInput.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
        ])

//        self.backgroundColor = UIColor.red

        self.skillsInput.inputTextField.placeholder = "Communication, Leadership"
        self.skillsInput.titleLabel.text = "My Skills"

    }
}
