//
//  AdventureDetailViewController.swift
//  Fitrangi
//
//  Created by Toovia on 23/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import UIKit

class AdventureDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var logoView : AsyncImageView!
    @IBOutlet weak var closeLabel : UILabel!
    @IBOutlet weak var tableView : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoView.setImageWithUrl("http://www.fitrangi.com/images/logo.png", options: AsyncImageOptions.ShowAlways)
        logoView.imageView.backgroundColor = UIColor.whiteColor()
        
        closeLabel.text = String.fontAwesomeIconWithName("fa-close")
        closeLabel.font = UIFont.fontAwesomeOfSize(20)
        closeLabel.addSingleTapGestureRecognizer(target: self, action: "dismissView")
        
        tableView.registerNib(UINib(nibName: "AdventureDetailCard", bundle: nil), forCellReuseIdentifier: "AdventureDetailCard")
        tableView.registerNib(UINib(nibName: "AdventureAboutView", bundle: nil), forCellReuseIdentifier: "AdventureAboutView")
        tableView.registerNib(UINib(nibName: "AdventureReviewsView", bundle: nil), forCellReuseIdentifier: "AdeventureReviewsView")
        tableView.registerNib(UINib(nibName: "AdventureAboutHeader", bundle: nil), forHeaderFooterViewReuseIdentifier: "AdventureAboutHeader")
        tableView.registerNib(UINib(nibName: "AdventureHowToReachHeader", bundle: nil), forHeaderFooterViewReuseIdentifier: "AdventureHowToReachHeader")
        tableView.registerNib(UINib(nibName: "AdventureNearbyFacilitiesHeader", bundle: nil), forHeaderFooterViewReuseIdentifier: "AdventureNearbyFacilitiesHeader")
        tableView.registerNib(UINib(nibName: "AdventureReviewsHeader", bundle: nil), forHeaderFooterViewReuseIdentifier: "AdventureReviewsHeader")
        
        tableView.separatorStyle = .None

        // Do any additional setup after loading the view.
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
