//
//  TableViewCell.swift
//  RealmTodo
//
//  Created by tomoya tanaka on 2020/09/25.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var todoDateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
