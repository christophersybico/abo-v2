//
//  RequestDetailViewController.swift
//  abo-v2
//
//  Created by Sybico, Christopher on 10/30/15.
//  Copyright © 2015 Sybico, Christopher. All rights reserved.
//

import UIKit

class RequestDetailViewController: UIViewController {
    

    var requestView: UIView!
//    var requestViewFrame: CGRect!
//    var requestViewFrameOffsetX: CGFloat!
    
    var blobImage: UIImage!
    var blobImageView: UIImageView!
    
    override func viewDidLoad() {
     
        super.viewDidLoad()
        requestView = UIView()
    }

    @IBAction func didPressDismiss(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
    }
    
    
}
