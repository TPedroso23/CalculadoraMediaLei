//
//  CadeirasTableViewCell.swift
//  Media_LEI
//
//  Created by iClio on 03/04/18.
//  Copyright © 2018 iClio. All rights reserved.
//

import UIKit

class CadeirasTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nomeCadeira: UILabel!
    @IBOutlet weak var notaCadeira: UITextField!
    
    func configure(cadeira:UnidadeCurricular){
        self.nomeCadeira.text = cadeira.getNome()
        if(cadeira.getNota() != 0){
            self.notaCadeira.text = String(cadeira.getNota())
        }
    }
    
    func getNota() -> Int{
        if !(self.notaCadeira.text?.isEmpty)!{
            return Int(self.notaCadeira.text!)!
        }
        return 0
    }
  
    
   override func prepareForReuse() {
//        self.nomeCadeira.text = ""
//        self.notaCadeira.text = ""
    }

}
