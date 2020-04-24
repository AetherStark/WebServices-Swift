//
//  TableViewCell.swift
//  WebServiceBitcoin
//
//  Created by Francisco on 22/04/20.
//  Copyright © 2020 Francisco. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblSubtitulo: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

   
}
