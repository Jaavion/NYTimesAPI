//
//  CustomCell.swift
//  NYTimesAPI
//
//  Created by Jaavion Davis on 10/15/21.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet var newYorkArticleTitle:UILabel!
    @IBOutlet var newYorkArticleDate:UILabel!
    @IBOutlet var newYorkArticleAuthor:UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        newYorkArticleTitle.numberOfLines = 0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    func setNewYorkApiLbl(title:String, date:String, author:String) {
//        newYorkArticleTitle.text = title
//        newYorkArticleDate.text = date
//        newYorkArticleAuthor.text = author
//        
//    }

    
}
