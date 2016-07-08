//
//  PostCell.swift
//  my-hood
//
//  Created by Nick Borrero on 7/1/16.
//  Copyright © 2016 Nick Borrero. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

        postImg.layer.cornerRadius = postImg.frame.size.width / 2.2
        postImg.clipsToBounds = true
    }

  
    func configureCell(post: Post) {
        titleLbl.text = post.title
        descLbl.text = post.postDescription
        postImg.image = DataService.instance.imageForPath(post.imagePath)
    }
}
