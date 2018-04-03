//
//  MenuViewController.swift
//  Media_LEI
//
//  Created by iClio on 03/04/18.
//  Copyright © 2018 iClio. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func OnClickDA(_ sender: Any) {
        NSLog("DA")
    }
    
    @IBAction func onClickRAS(_ sender: Any) {
        NSLog("RAS")
    }
    
    @IBAction func onClickSI(_ sender: Any) {
        NSLog("SI")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
