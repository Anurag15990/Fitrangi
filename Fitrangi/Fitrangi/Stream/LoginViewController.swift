//
//  LoginViewController.swift
//  Fitrangi
//
//  Created by Toovia on 19/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var tabView : UIView!
    @IBOutlet weak var signInTabButton : UIButton!
    @IBOutlet weak var signUpTabButton : UIButton!
    @IBOutlet weak var signInView : UIView!
    @IBOutlet weak var signInEmailTextField : UITextField!
    @IBOutlet weak var signInPasswordTextField : UITextField!
    @IBOutlet weak var forgotPasswordButton : UIButton!
    @IBOutlet weak var signInButton : UIButton!
    @IBOutlet weak var signInOrLabel : UILabel!
    @IBOutlet weak var signInWithLabel : UILabel!
    @IBOutlet weak var signInFacebookView : UIView!
    @IBOutlet weak var signInFacebookIconLabel : UILabel!
    @IBOutlet weak var signInGooglePlusView : UIView!
    @IBOutlet weak var signInGooglePlusIconLabel : UILabel!
    @IBOutlet weak var signUpView : UIView!
    @IBOutlet weak var signUpNameTextField : UITextField!
    @IBOutlet weak var signUpEmailTextField : UITextField!
    @IBOutlet weak var signUpPasswordTextField : UITextField!
    @IBOutlet weak var signUpConfirmPasswordTextField : UITextField!
    @IBOutlet weak var signUpButton : UIButton!
    @IBOutlet weak var signUpOrLabel : UILabel!
    @IBOutlet weak var signUpWithLabel : UILabel!
    @IBOutlet weak var signUpFacebookView : UIView!
    @IBOutlet weak var signUpFacebookIconLabel : UILabel!
    @IBOutlet weak var signUpGooglePlusView : UIView!
    @IBOutlet weak var signUpGooglePlusIconLabel : UILabel!
    
    @IBAction func signInTabPressed () {
        signUpView.hidden = true
        signInView.hidden = false
        signInTabButton.tintColor = UIColor.blueColor()
        signInTabButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        signUpTabButton.tintColor = UIColor.darkGrayColor()
        signUpTabButton.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Normal)
    }
    
    @IBAction func signUpTabPressed () {
        signInView.hidden = true
        signUpView.hidden = false
        signUpTabButton.tintColor = UIColor.blueColor()
        signUpTabButton.setTitleColor (UIColor.blueColor(), forState: UIControlState.Normal)
        signInTabButton.tintColor = UIColor.darkGrayColor()
        signInTabButton.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Normal)
    }
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        signInFacebookIconLabel.text = String.fontAwesomeIconWithName("fa-facebook")
        signInFacebookIconLabel.font = UIFont.fontAwesomeOfSize(20)
        signUpFacebookIconLabel.text = String.fontAwesomeIconWithName("fa-facebook")
        signUpFacebookIconLabel.font = UIFont.fontAwesomeOfSize(20)
        signInGooglePlusIconLabel.text = String.fontAwesomeIconWithName("fa-google-plus")
        signInGooglePlusIconLabel.font = UIFont.fontAwesomeOfSize(20)
        signUpGooglePlusIconLabel.text = String.fontAwesomeIconWithName("fa-google-plus")
        signUpGooglePlusIconLabel.font = UIFont.fontAwesomeOfSize(20)
        signUpView.hidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
