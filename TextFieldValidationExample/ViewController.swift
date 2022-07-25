//
//  ViewController.swift
//  TextFieldValidationExample
//
//  Created by Erika C. Matesz Bueno on 25/07/22.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    // MARK: - UI Customization

    // Initial state
    private func setup() {
        textField.layer.masksToBounds = true
        textField.layer.borderWidth = 1
        button.isEnabled = false
        label.textColor = .red
    }

    // Empty state
    private func displayAsEmpty() {
        textField.layer.borderColor = UIColor.systemGray.cgColor
        label.text = ""
        button.isEnabled = false
    }

    // Valid state
    private func displayAsValid() {
        textField.layer.borderColor = UIColor.systemBlue.cgColor
        label.text = ""
        button.isEnabled = true
    }

    // Invalid state
    private func displayAsInvalid() {
        textField.layer.borderColor = UIColor.red.cgColor
        label.text = "invalid email"
        button.isEnabled = false
    }

    // MARK: - Validation Logic

    @IBAction func textFieldChanged(_ sender: Any) {
        if let textFieldValue = textField.text {
            if textFieldValue.isEmpty {
                displayAsEmpty()
                return
            }
            textFieldValue.isEmail ? displayAsValid() : displayAsInvalid()
        }
    }

}
