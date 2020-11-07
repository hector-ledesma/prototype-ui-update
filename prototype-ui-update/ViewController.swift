//
//  ViewController.swift
//  prototype-ui-update
//
//  Created by Karen Rodriguez on 11/6/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameField: CustomTextInputTableViewCell! {
        didSet {
            firstNameField.setUpViews(title: "First Name", placeholder: "John")
        }
    }

    @IBOutlet weak var lastNameField: CustomTextInputTableViewCell! {
        didSet {
            lastNameField.setUpViews(title: "Last Name", placeholder: "Driver")
        }
    }

    @IBOutlet weak var emailField: CustomTextInputTableViewCell! {
        didSet {
            emailField.setUpViews(title: "Email", placeholder: "johndriver@mail.com")
        }
    }

    @IBOutlet weak var locationField: CustomTextInputTableViewCell! {
        didSet {
            locationField.setUpViews(title: "Location", placeholder: "Los Angeles, CA")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

