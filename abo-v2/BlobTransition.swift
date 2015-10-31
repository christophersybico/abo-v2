//
//  BlobTransition.swift
//  abo-v2
//
//  Created by Sybico, Christopher on 10/31/15.
//  Copyright © 2015 Sybico, Christopher. All rights reserved.
//

import UIKit

class BlobTransition: BaseTransition {

    override func presentTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        let requestDetialVC = toViewController as! RequestDetailViewController
        let homeVC = fromViewController as! HomeViewController
        
        let destinationFrame = requestDetialVC.blobImageView.frame
        
        requestDetialVC.blobImageView.frame = homeVC.selectedBlob.frame
        
        
//        requestDetialVC.blobImageView
        
        toViewController.view.alpha = 0
        
        UIView.animateWithDuration(
            
            duration,
            
            animations: {
                toViewController.view.alpha = 1
                requestDetialVC.blobImageView.frame = destinationFrame
            }
        )
        {
            (finished: Bool) -> Void in
                self.finish()
        }
    }
    
    override func dismissTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        fromViewController.view.alpha = 1
        UIView.animateWithDuration(duration, animations: {
            fromViewController.view.alpha = 0
            }) { (finished: Bool) -> Void in
                self.finish()
        }
    }
    
}
