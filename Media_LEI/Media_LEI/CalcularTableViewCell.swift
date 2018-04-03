//
//  CalcularTableViewCell.swift
//  Media_LEI
//
//  Created by iClio on 03/04/18.
//  Copyright © 2018 iClio. All rights reserved.
//

import UIKit

class CalcularTableViewCell: UITableViewCell {
    @IBOutlet weak var resultLabel: UILabel!
    
    func showResult(result:Float){
        self.resultLabel.text = String(result)
    }

    
}
