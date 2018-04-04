//
//  CalculatorTableViewController.swift
//  Media_LEI
//
//  Created by iClio on 03/04/18.
//  Copyright © 2018 iClio. All rights reserved.
//

import UIKit

class CalculatorTableViewController: UITableViewController {
    
    let BAR_BUTTON_SIZE = 44
    
    var cadeiras = [UnidadeCurricular]()
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button: UIButton = UIButton(type: UIButtonType.custom)
        button.setImage(UIImage(named: "icBackBlack"), for: UIControlState.normal)
        button.bounds = CGRect(x: 0, y: 0, width: BAR_BUTTON_SIZE, height: BAR_BUTTON_SIZE)
        button.addTarget(self, action: #selector(backButtonPressed), for: UIControlEvents.touchUpInside)
        let barButton = UIBarButtonItem(customView: button)
        self.navigationItem.leftBarButtonItem = barButton
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func backButtonPressed(sender: Any?){
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func Calcular(_ sender: Any) {
        let index = IndexPath.init(row: 0, section: 1)
        let index2 = IndexPath.init(row: 30, section: 0)
        
        let cell = tableView.cellForRow(at: index) as! CalcularTableViewCell
        
        let cell2 = tableView.cellForRow(at: index2) as! CadeirasTableViewCell
        
        
        cell.showResult(result:  Float(cell2.getNota()))
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if(section == 0){
            return cadeiras.count
        }
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section == 0){
            let cell = tableView.dequeueReusableCell(withIdentifier: "cadeirasCell", for: indexPath) as! CadeirasTableViewCell
            
            cell.configure(cadeira:cadeiras[indexPath.row])
            
            return cell
            
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "calculatorCell", for: indexPath) as! CalcularTableViewCell
        return cell
        
    }
    
    @IBAction func notaChanger(_ sender: Any) {
        if let cell = (sender as AnyObject).superview??.superview as? CadeirasTableViewCell {
            let indexPath = tableView.indexPath(for: cell)
            
            let textfield = (sender as! UITextField).text
            //APANHA A NOTA CARALHO!
        }
    }
    
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
