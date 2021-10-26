//
//  ViewController.swift
//  Homework3
//
//  Created by Tipachel on 26.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let login = "Shinji"
    let password = "ikari"
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButtonPressed() {
        
        if userNameTF.text == "" && passwordTF.text == ""{
            showAlert(title: "Acces denied", message:"Fill the fields ")
        }else if userNameTF.text != login || passwordTF.text != password {
            showAlert(title: "Accec denied", message: "User name or password is incorrect!")
            
        }
    }
    
    @IBAction func forgotUsername() {
        showAlert(title: "Forgot your name", message: "Your name is \(login)")
    }
    
    
    @IBAction func forgotPassword() {
        showAlert(title: "Forgot your password", message: "Your password is \(password) ")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let accountVC = segue.destination as? AccountViewController else { return }
        
        accountVC.username = userNameTF.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with:event)
    }
}




extension ViewController {
    private func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default){ _ in
            
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
