//
//  NewRequestViewController.swift
//  abo-v2
//
//  Created by Sybico, Christopher on 10/29/15.
//  Copyright © 2015 Sybico, Christopher. All rights reserved.
//

import UIKit

class NewRequestViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onPost(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
        newRequestListener = 1
        
    }
    
    

}
