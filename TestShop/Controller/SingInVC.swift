//
//  ViewController.swift
//  TestShop
//
//  Created by Oleksandr Smakhtin on 08.10.2022.
//

import UIKit

class SingInVC: UIViewController {

    
    @IBOutlet weak var loginTextField: CustomPlaceholderTextField!
    @IBOutlet weak var passwordTextField: CustomPlaceholderTextField!
    @IBOutlet weak var errorLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func signInBtnPressed(_ sender: Any) {
        guard let login = loginTextField.text else { return }
        if !login.contains("@") {
            errorLbl.text = "Incorrect email"
            errorLbl.isHidden = false
        } else {
            errorLbl.isHidden = true
        }
    }
    
    
    @IBAction func signUpBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "ToSignUp", sender: self)
    }
    
    
}

