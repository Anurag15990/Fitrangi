//
//  ArticleCommentsView.swift
//  
//
//  Created by Toovia on 29/06/15.
//
//

import Foundation

class ArticleCommentsView : UITableViewCell {
    
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var commentLabel : UILabel!
    @IBOutlet weak var timeSincePostedLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        nameLabel.text = "Neha Yadav"
        commentLabel.text = "Test test test test test.\nComment comment comment comment.\nYayyy yaayyyy yayyyyyy yaayyyyy!!"
        timeSincePostedLabel.text = "2 days ago"
        
    }
}