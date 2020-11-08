//
//  CustomTextInputTableViewCell.swift
//  prototype-ui-update
//
//  Created by Karen Rodriguez on 11/6/20.
//

import UIKit

class CustomTextInputTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var inputTextField: UITextField!
    @IBOutlet private weak var bottomBarView: UIView!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    public func setUpViews(title: String, placeholder: String) {
        self.titleLabel.text = title
        self.inputTextField.placeholder = placeholder
    }
    
}
