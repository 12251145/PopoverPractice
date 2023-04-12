//
//  PopoverViewController.swift
//  Popover
//
//  Created by Hoen on 2023/04/11.
//

import UIKit

final class PopoverViewController: UIViewController {
    
    override func loadView() {
        view = PopoverView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()                
    }        
}
