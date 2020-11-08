//
//  CustomTextInputView.swift
//  prototype-ui-update
//
//  Created by Karen Rodriguez on 11/7/20.
//

import Foundation
import UIKit

class CustomTextInputView: UIView {

    // MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var bottomBarView: UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        setUpConstraints()
//        self.bounds = CGRect(x: 0, y: 0, width: 200, height: 125)
    }

    private func commonInit() {
    }

    public func loadView() -> UIView {
        let bundleName = Bundle(for: type(of: self))
        let nibName = String(describing: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundleName)
        let view = nib.instantiate(withOwner: nil, options: nil).first as! UIView
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }

    private func setUpConstraints() {

        // Set Up Title Label
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 1),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 1)
        ])

        // Set Up Text Input
        inputTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            inputTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            inputTextField.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: 5),
            inputTextField.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
        ])

        // Set Up Bottom Bar
        bottomBarView.translatesAutoresizingMaskIntoConstraints = false
        bottomBarView.frame = CGRect(x: bottomBarView.frame.minX, y: bottomBarView.frame.minY, width: bottomBarView.frame.width, height: 2)
        NSLayoutConstraint.activate([
            bottomBarView.topAnchor.constraint(equalTo: inputTextField.bottomAnchor, constant: 15),
            bottomBarView.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            bottomBarView.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            bottomBarView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20)
        ])
    }
}
