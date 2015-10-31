//
//  RequestDetailViewController.swift
//  abo-v2
//
//  Created by Sybico, Christopher on 10/30/15.
//  Copyright © 2015 Sybico, Christopher. All rights reserved.
//

import UIKit

class RequestDetailViewController: UIViewController {
    
    var blobImage: UIImage!
    var justView: UIView!

    @IBOutlet weak var blobImageView: UIImageView!
    
    
    override func viewDidLoad() {
     
        super.viewDidLoad()
        
//        view.addSubview(justView)
        
        blobImageView.image = blobImage
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
    }

    @IBAction func didPressDismiss(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
