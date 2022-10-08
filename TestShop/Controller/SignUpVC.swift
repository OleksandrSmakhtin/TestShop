//
//  SignUpVC.swift
//  TestShop
//
//  Created by Oleksandr Smakhtin on 08.10.2022.
//

import UIKit

class SignUpVC: UIViewController {

    
    @IBOutlet weak var loginTextField: CustomPlaceholderTextField!
    
    @IBOutlet weak var passwordTextField: CustomPlaceholderTextField!
    
    @IBOutlet weak var confirmTextField: CustomPlaceholderTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func signUpBtnPressed(_ sender: Any) {
    }
    
    
    @IBAction func signInBtnPressed(_ sender: Any) {
        dismiss(animated: false)
    }
    

}
