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
    var nota:Int
    
    init(){
        self.nome = ""
        self.creditos = 0
        self.nota = 0
    }
    
    init(nome:String, creditos:Int){
        self.nome = nome
        self.creditos = creditos
        self.nota = 0
    }
    
    func getNome() -> String{
        return self.nome
    }
    
    func getCreditos() -> Int{
        return self.creditos
    }
    
    func getNota() -> Int{
        return self.nota
    }
    
    func setNota(nota:Int){
        self.nota = nota
    }
}
