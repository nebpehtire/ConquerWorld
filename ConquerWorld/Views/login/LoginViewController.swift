//
//  LoginViewController.swift
//  ConquerWorld
//
//  Created by Manu on 12/12/17.
//  Copyright © 2017 Manu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var psswdTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emailTextField.text = "prueba@prueba.com"
        psswdTextField.text = "pruebaprueba"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(_ sender: Any) {
//        Service_Auth().createUserByEmail(emailTextField.text, psswdTextField.text) { (error, object) in
//            if error != nil {
//                print(error)
//            } else {
//                self.performSegue(withIdentifier: "showMain", sender: nil)
//            }
//        }
        performSegue(withIdentifier: "showMain", sender: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
