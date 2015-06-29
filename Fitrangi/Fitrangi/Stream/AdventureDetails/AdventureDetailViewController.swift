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
        tableView.registerNib(UINib(nibName: "AdventureHowToReachView", bundle: nil), forCellReuseIdentifier: "AdventureHowToReachView")
        tableView.registerNib(UINib(nibName: "AdventureNearbyFacilitiesView", bundle: nil), forCellReuseIdentifier: "AdventureNearbyFacilitiesView")
        tableView.registerNib(UINib(nibName: "AdventureReviewsView", bundle: nil), forCellReuseIdentifier: "AdventureReviewsView")
        tableView.registerNib(UINib(nibName: "AdventureAboutHeader", bundle: nil), forHeaderFooterViewReuseIdentifier: "AdventureAboutHeader")
        tableView.registerNib(UINib(nibName: "AdventureHowToReachHeader", bundle: nil), forHeaderFooterViewReuseIdentifier: "AdventureHowToReachHeader")
        tableView.registerNib(UINib(nibName: "AdventureNearbyFacilitiesHeader", bundle: nil), forHeaderFooterViewReuseIdentifier: "AdventureNearbyFacilitiesHeader")
        tableView.registerNib(UINib(nibName: "AdventureReviewsHeader", bundle: nil), forHeaderFooterViewReuseIdentifier: "AdventureReviewsHeader")
        
        tableView.separatorStyle = UITableViewCellSeparatorStyle.SingleLine

        // Do any additional setup after loading the view.
    }
    
    func dismissView() {
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 5
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 4 {
            return 4
        } else {
            return 1
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("AdventureDetailCard", forIndexPath: indexPath) as! AdventureDetailCard
            return cell
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCellWithIdentifier("AdventureAboutView", forIndexPath: indexPath) as! AdventureAboutView
            return cell
        } else if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCellWithIdentifier("AdventureHowToReachView", forIndexPath: indexPath) as! AdventureHowToReachView
            return cell
        } else if indexPath.section == 3 {
            let cell = tableView.dequeueReusableCellWithIdentifier("AdventureNearbyFacilitiesView", forIndexPath: indexPath) as! AdventureNearbyFacilitiesView
            return cell
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("AdventureReviewsView", forIndexPath: indexPath) as! AdventureReviewsView
            return cell
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 300
        } else if indexPath.section == 1 {
            return 250
        } else if indexPath.section == 2 {
            return 368
        } else if indexPath.section == 3 {
            return 500
        } else {
            return 200
        }
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 1 {
            var adventureAboutHeaderView = tableView.dequeueReusableHeaderFooterViewWithIdentifier("AdventureAboutHeader") as! AdventureAboutHeader
            return adventureAboutHeaderView
        } else if section == 2 {
            var adventureHowToReachHeaderView = tableView.dequeueReusableHeaderFooterViewWithIdentifier("AdventureHowToReachHeader") as! AdventureHowToReachHeader
            return adventureHowToReachHeaderView
        } else if section == 3 {
            var adventureNearbyFacilitiesView = tableView.dequeueReusableHeaderFooterViewWithIdentifier("AdventureNearbyFacilitiesHeader") as! AdventureNearbyFacilitiesHeader
            return adventureNearbyFacilitiesView
        } else if section == 4 {
            var adventureReviewHeaderView = tableView.dequeueReusableHeaderFooterViewWithIdentifier("AdventureReviewsHeader") as! AdventureReviewsHeader
            return adventureReviewHeaderView
        }
        return UIView()
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }
        return 40
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
