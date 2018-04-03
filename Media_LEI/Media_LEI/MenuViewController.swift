//
//  MenuViewController.swift
//  Media_LEI
//
//  Created by iClio on 03/04/18.
//  Copyright © 2018 iClio. All rights reserved.
//

import UIKit
import SwiftyJSON

class MenuViewController: UIViewController {

    var cadeirasDA = [UnidadeCurricular]()
    var cadeirasRAS = [UnidadeCurricular]()
    var cadeirasSI = [UnidadeCurricular]()
    var cadeirasToSegue = [UnidadeCurricular]()
    var numeroDeCadeiras = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        prepareData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func prepareData(){
        let bundle = Bundle.main
        let path = bundle.path(forResource: "LEI", ofType: "json")
        do{
            let json = try NSString(contentsOfFile: path!, encoding: String.Encoding.utf8.rawValue)
            
            if let data = json.data(using: String.Encoding.utf8.rawValue) {
                if let json = try? JSON(data: data) {
                    
                    var cadeiras = json["DA"]
                    let numeroDeCadeiras = json["numeroDeCadeiras"].stringValue
                    
                    self.numeroDeCadeiras = Int(numeroDeCadeiras)!
                    
                    for cadeira in cadeiras{
                        
                        let nome = cadeira.1["nome"].stringValue
                        let creditos = cadeira.1["creditos"].stringValue
                 
                        let newCadeira = UnidadeCurricular(nome: nome, creditos: Int(creditos)!)
                        self.cadeirasDA.append(newCadeira)
                        
                    }
                    
                      cadeiras = json["RAS"]
                    
                    for cadeira in cadeiras{
                        
                        let nome = cadeira.1["nome"].stringValue
                        let creditos = cadeira.1["creditos"].stringValue
                        
                        let newCadeira = UnidadeCurricular(nome: nome, creditos: Int(creditos)!)
                        self.cadeirasRAS.append(newCadeira)
                        
                    }
                    
                      cadeiras = json["SI"]
                    
                    for cadeira in cadeiras{
                        
                        let nome = cadeira.1["nome"].stringValue
                        let creditos = cadeira.1["creditos"].stringValue
                        
                        let newCadeira = UnidadeCurricular(nome: nome, creditos: Int(creditos)!)
                        self.cadeirasSI.append(newCadeira)
                        
                    }
                    
                }
            }
        } catch {}
    }
    
    @IBAction func OnClickDA(_ sender: Any) {
        self.cadeirasToSegue = self.cadeirasDA
        self.performSegue(withIdentifier: "segueToCalculator", sender: nil)
        NSLog("DA")
    }
    
    @IBAction func onClickRAS(_ sender: Any) {
        self.cadeirasToSegue = self.cadeirasRAS
        self.performSegue(withIdentifier: "segueToCalculator", sender: nil)
        NSLog("RAS")
    }
    
    @IBAction func onClickSI(_ sender: Any) {
        self.cadeirasToSegue = self.cadeirasSI
        self.performSegue(withIdentifier: "segueToCalculator", sender: nil)
        NSLog("SI")
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is UINavigationController {
            ((segue.destination as! UINavigationController).viewControllers[0] as! CalculatorTableViewController).cadeiras = self.cadeirasToSegue
        }
    }
    

}
