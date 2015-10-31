//
//  HomeViewController.swift
//  abo-v2
//
//  Created by Sybico, Christopher on 10/30/15.
//  Copyright © 2015 Sybico, Christopher. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    // OUTLETS
    @IBOutlet weak var homeScrollView: UIScrollView!
    @IBOutlet weak var timRequestView: UIView!
    @IBOutlet weak var williamRequestView: UIView!
    
    var selectedView: UIView!
    var selectedBlob: UIImageView!
    
    
    // CUSTOM TRANSITION
    var blobTransition: BlobTransition!
    
    
    // DID LOAD
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        
        // SETUP HOME SCROLLVIEW
        homeScrollView.contentSize = CGSize(width: 1665, height: 381)
        

        // SET UP TAP GESTURE RECOGNISER
        let williamTap = UITapGestureRecognizer(target: self, action: "didTapRequest:")
        let tipTap = UITapGestureRecognizer(target: self, action: "didTapRequest:")
        
        // SET UP TAPS FOR REQUESTS
        williamRequestView.addGestureRecognizer(williamTap)
        timRequestView.addGestureRecognizer(tipTap)
        
        
    }
    
    // TAP ON REQUEST
    func didTapRequest(sender: UITapGestureRecognizer) {
        
        // STORE SELECTED VIEW
        selectedView = sender.view
        
        // TAG 10 IS THE BLOB IMAGE
        selectedBlob = selectedView.viewWithTag(10) as! UIImageView
        
        // SEGUE TO REQUEST DETAIL
        performSegueWithIdentifier("requestDetailSegue", sender: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var destinationVC = segue.destinationViewController as! RequestDetailViewController
        
        // SEND IMAGE
        destinationVC.blobImage = selectedBlob.image
        
        // SETUP BLOB TRANSITION
        blobTransition = BlobTransition()
        destinationVC.modalPresentationStyle = UIModalPresentationStyle.Custom
        destinationVC.transitioningDelegate = blobTransition

        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
