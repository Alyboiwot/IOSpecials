//
//  ViewController.swift
//  FaceAuotantication
//
//  Created by Ali Ünal UZUNÇAYIR on 22.05.2025.
//

import UIKit
import LocalAuthentication
class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SaveCli(_ sender: Any) {
        
        let authContext = LAContext()
        var error : NSError?
        
        if authContext.canEvaluatePolicy(.deviceOwnerAuthentication, error: &error){
            authContext.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: "Authenticate to proceed"){
                (success , error) in
                if success == true {
                    DispatchQueue.main.async {
                        self.performSegue(withIdentifier: "toSecond", sender: self)
                    }
                    
                }
                else {
                    DispatchQueue.main.async {
                        self.label.text = "Failed"
                    }
                }
                
            }
        }
        
        
    }
    
}
