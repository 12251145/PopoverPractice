//
//  PopoverView.swift
//  Popover
//
//  Created by Hoen on 2023/04/11.
//

import UIKit

final class PopoverView: UIView {
    let label: UILabel
    
    override init(frame: CGRect) {
        
        label = UILabel(frame: .init(origin: .zero, size: .init(width: 30, height: 30)))
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        label.text = "Hi!"
        label.textAlignment = .center
        
        super.init(frame: frame)
        self.addSubview(label)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        var center = self.center
        center.y -= self.safeAreaInsets.bottom / 2
        
        
        label.center = center
    }
}
