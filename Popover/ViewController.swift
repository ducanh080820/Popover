//
//  ViewController.swift
//  Popover
//
//  Created by Duc Anh on 12/27/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let vc = segue.destination
        let pc = vc.popoverPresentationController
//        pc?.sourceRect = CGRect(origin: self.view.center, size: CGSize.zero)
        pc?.sourceRect = CGRect(x: 32, y: 32, width: 64, height: 64)
//        pc?.sourceView = view
        pc?.delegate = self
        }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    @IBAction func onClickedPassthroughButton(_ sender: Any) {
        title = "Pass through Clicked"
    }
}

