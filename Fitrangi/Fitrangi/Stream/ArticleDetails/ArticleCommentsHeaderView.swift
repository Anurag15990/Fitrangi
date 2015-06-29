//
//  ArticleCommentsHeaderView.swift
//  
//
//  Created by Toovia on 29/06/15.
//
//

import Foundation

class ArticleCommentsHeaderView : UITableViewHeaderFooterView {
    
    @IBOutlet weak var commentsView : UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        commentsView.backgroundColor = UIColorMake(15, 117, 188)
    }

    
}