//
//  BaseTableViewCell.swift
//  SampleToday
//
//  Created by Renato Matos on 22/03/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

import UIKit

class BaseTableViewCell : UITableViewCell {
    
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var labelResumo: UILabel!
    
    var model: PostModel! {
        didSet {
            configureCell()
        }
    }
    
    func configureCell() {
        
        labelTitulo.text = model.title
        labelResumo.text = model.body
        
    }
}
