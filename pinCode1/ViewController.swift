//
//  ViewController.swift
//  pinCode1
//
//  Created by ST13 on 30.12.2017.
//  Copyright © 2017 Kugim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let passCode = "4321"
    
    @IBOutlet weak var successView: UIView!
    @IBOutlet weak var pinCodeImage1: UIImageView!
    
    @IBOutlet weak var pinCodeImage2: UIImageView!
    
    @IBOutlet weak var pinCodeImage3: UIImageView!
    
    @IBOutlet weak var pinCodeImage4: UIImageView!
    
    var userPinCodeInput = ""
    
    func passCodeCheck() {
        if userPinCodeInput.count == 4 && passCode == userPinCodeInput {
            loginButtonOutlet.isEnabled = true
            successView.isHidden = false
        }
    }
    
    func pinCodeImage() {
        if userPinCodeInput.count == 0 {
            pinCodeImage1.image = #imageLiteral(resourceName: "deactive")
            pinCodeImage2.image = #imageLiteral(resourceName: "deactive")
            pinCodeImage3.image = #imageLiteral(resourceName: "deactive")
            pinCodeImage4.image = #imageLiteral(resourceName: "deactive")
        }
        if userPinCodeInput.count == 1 {
            pinCodeImage1.image = #imageLiteral(resourceName: "active")
            pinCodeImage2.image = #imageLiteral(resourceName: "deactive")
            pinCodeImage3.image = #imageLiteral(resourceName: "deactive")
            pinCodeImage4.image = #imageLiteral(resourceName: "deactive")
            
        }
        if userPinCodeInput.count == 2 {
            pinCodeImage1.image = #imageLiteral(resourceName: "active")
            pinCodeImage2.image = #imageLiteral(resourceName: "active")
            pinCodeImage3.image = #imageLiteral(resourceName: "deactive")
            pinCodeImage4.image = #imageLiteral(resourceName: "deactive")
        }
        if userPinCodeInput.count == 3 {
            pinCodeImage1.image = #imageLiteral(resourceName: "active")
            pinCodeImage2.image = #imageLiteral(resourceName: "active")
            pinCodeImage3.image = #imageLiteral(resourceName: "active")
            pinCodeImage4.image = #imageLiteral(resourceName: "deactive")
        }
        if userPinCodeInput.count == 4 {
            pinCodeImage1.image = #imageLiteral(resourceName: "active")
            pinCodeImage2.image = #imageLiteral(resourceName: "active")
            pinCodeImage3.image = #imageLiteral(resourceName: "active")
            pinCodeImage4.image = #imageLiteral(resourceName: "active")
        }
        
    }
    
    func userPinCodeAppend(userPin:String) {
        if userPinCodeInput.count < 4 {
            userPinCodeInput += userPin
        }
        passCodeCheck()
        pinCodeImage()
    }

    @IBOutlet weak var loginButtonOutlet: UIButton!
    
    @IBAction func buttonBackAction(_ sender: UIButton) {
        userPinCodeInput = String(userPinCodeInput.characters.dropLast())
        print(userPinCodeInput)
        passCodeCheck()
        pinCodeImage()
    }
    
    @IBAction func button1Action(_ sender: UIButton) {
        userPinCodeAppend(userPin: "1")
        print(userPinCodeInput)
    }
    
    @IBAction func button2Action(_ sender: UIButton) {
        userPinCodeAppend(userPin: "2")
        print(userPinCodeInput)
    }
    
    @IBAction func button3Action(_ sender: UIButton) {
        userPinCodeAppend(userPin: "3")
        print(userPinCodeInput)
    }
    
    @IBAction func button4Action(_ sender: UIButton) {
        userPinCodeAppend(userPin: "4")
        print(userPinCodeInput)
    }
    
    @IBAction func button5Action(_ sender: UIButton) {
        userPinCodeAppend(userPin: "5")
        print(userPinCodeInput)
    }
    
    @IBAction func button6Action(_ sender: UIButton) {
        userPinCodeAppend(userPin: "6")
        print(userPinCodeInput)
    }
    
    
    @IBAction func button7Action(_ sender: UIButton) {
    }
    
    @IBAction func button8Action(_ sender: UIButton) {
    }
    
    @IBAction func button9Action(_ sender: UIButton) {
    }
    
    @IBAction func button0Action(_ sender: UIButton) {
    }
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

     loginButtonOutlet.isEnabled = false
        successView.isHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

