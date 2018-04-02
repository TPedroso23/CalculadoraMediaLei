//
//  UnidadeCurricular.swift
//  Media_LEI
//
//  Created by iClio on 02/04/18.
//  Copyright © 2018 iClio. All rights reserved.
//

import Foundation
import UIKit

class UnidadeCurricular{
    
    let nome:String
    let creditos:Int
    
    init(){
        self.nome = ""
        self.creditos = 0
    }
    
    init(nome:String, creditos:Int){
        self.nome = nome
        self.creditos = creditos
    }
    
    func getNome() -> String{
        return self.nome
    }
    
    func getCreditos() -> Int{
        return self.creditos
    }
    
}
