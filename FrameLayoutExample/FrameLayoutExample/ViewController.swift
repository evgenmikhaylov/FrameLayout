//
//  ViewController.swift
//  FrameLayoutExample
//
//  Created by Evgeny Mikhaylov on 14/12/2016.
//  Copyright © 2016 EvgenyMikhaylov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var redView = UIView()
    var blueView = UIView()
    
    var redLayer = CALayer()
    var blueLayer = CALayer()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.backgroundColor = .red
        view.addSubview(redView)
        
        blueView.backgroundColor = .blue
        view.addSubview(blueView)
        
        redLayer.backgroundColor = UIColor.red.cgColor
        redLayer.borderColor = UIColor.black.cgColor
        redLayer.borderWidth = 1.0
        view.layer.addSublayer(redLayer)
        
        blueLayer.backgroundColor = UIColor.blue.cgColor
        blueLayer.borderColor = UIColor.black.cgColor
        blueLayer.borderWidth = 1.0
        view.layer.addSublayer(blueLayer)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        redView.frameLayout.performUpdates { layout in
            layout.leftMargin = 20.0
            layout.rightMargin = 20.0
            layout.height = layout.width / 2.0
            layout.top = topLayoutGuide.length + 20.0
        }
        blueView.frameLayout.performUpdates { layout in
            layout.centerHorizontally()
            layout.width = 200.0
            layout.top = redView.frameLayout.bottom + 20.0
            layout.height = 50.0
        }
        redLayer.frameLayout.performUpdates { layout in
            layout.left = 20.0
            layout.right = frameLayout.width - 20.0
            layout.top = blueView.frameLayout.bottom + 50.0
            layout.height = 50.0
        }
        blueLayer.frameLayout.performUpdates { layout in
            layout.centerHorizontally()
            layout.width = 200.0
            layout.top = redLayer.frameLayout.bottom + 20.0
            layout.height = 50.0
        }
    }
}

