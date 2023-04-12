//
//  ViewController.swift
//  Popover
//
//  Created by Hoen on 2023/04/11.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    
    let button: UIButton = {
        let button = UIButton(frame: .init(x: 0, y: 0, width: 100, height: 47))
        var config = UIButton.Configuration.filled()
        config.baseBackgroundColor = .black
        config.baseForegroundColor = .white
        config.title = "Popover"
        button.configuration = config
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        button.addTarget(self, action: #selector(popover), for: .touchUpInside)
        button.center = view.center
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        
        return .none
    }

    @objc
    func popover() {
        let popoverVC = PopoverViewController()
        popoverVC.modalPresentationStyle = .popover
        popoverVC.preferredContentSize = .init(width: 100, height: 50)
        
        let presentationController = popoverVC.presentationController as? UIPopoverPresentationController
        presentationController?.delegate = self
        presentationController?.sourceView = button
        presentationController?.sourceRect = button.bounds
        presentationController?.permittedArrowDirections = [.any]
                
        self.present(popoverVC, animated: true)
    }
}

