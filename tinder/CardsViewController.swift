//
//  CardsViewController.swift
//  tinder
//
//  Created by Will Gilman on 4/26/17.
//  Copyright © 2017 Will Gilman. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    var profileImageCenter: CGPoint!
    
    @IBOutlet weak var customView: DraggableImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        customView.profileImage = UIImage(named: "ryan")!
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(onPanProfileImage(_:)))
        customView.addGestureRecognizer(panGesture)
        customView.isUserInteractionEnabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onPanProfileImage(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        
        if sender.state == .began {
            profileImageCenter = customView.center
        } else if sender.state == .changed {
            customView.center = CGPoint(x: profileImageCenter.x + translation.x, y: profileImageCenter.y)
        } else if sender.state == .ended {
            
        }
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
