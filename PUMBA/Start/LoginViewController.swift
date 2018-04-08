//
//  ViewController.swift
//  PUMBA
//
//  Created by apple on 21/03/18.
//  Copyright © 2018 Sonkar. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        if email.text == "" || password.text == ""{
            displayAlert(title: "Error!", message: "Fields can't be empty.")
        }else{
            
            if let email = email.text{
                if let password = password.text{
                    
                    Auth.auth().signIn(withEmail: email, password: password, completion: { (user, error) in
                        
                        
                        if error != nil{
                            self.displayAlert(title: "Error", message: error!.localizedDescription)
                        }
                        else{
                             self.displayAlert(title: "Success", message: "Login Successful")
                           // self.performSegue(withIdentifier: "loginSegue", sender: nil)
                        }
                    })
                    
        
                }
            }}}
    func displayAlert(title: String, message: String){
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
        
    }
    
}

