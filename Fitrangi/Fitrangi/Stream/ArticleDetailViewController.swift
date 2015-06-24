//
//  ArticleDetailViewController.swift
//  Fitrangi
//
//  Created by Toovia on 24/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import UIKit

class ArticleDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var logoView : AsyncImageView!
    @IBOutlet weak var closeLabel : UILabel!
    @IBOutlet weak var tableView : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoView.setImageWithUrl("", options: AsyncImageOptions.ShowAlways)
        logoView.backgroundColor = UIColor.whiteColor()
        
        closeLabel.text = String.fontAwesomeIconWithName("fa-close")
        closeLabel.font = UIFont.fontAwesomeOfSize(20)
        closeLabel.addSingleTapGestureRecognizer(target: self, action: "dismissView")
        
        tableView.separatorStyle = .None
        
        // Do any additional setup after loading the view.
    }
    
    func dismissView() {
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        return cell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 0
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
