//
//  ViewController.swift
//  FrameLayoutExampleMacOS
//
//  Created by Evgeny Mikhaylov on 30/01/2017.
//  Copyright © 2017 EvgenyMikhaylov. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    var redView = NSView()
    var blueView = NSView()
    var greenView = NSView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.wantsLayer = true
        
        redView.wantsLayer = true
        redView.layer?.backgroundColor = NSColor.red.cgColor
        view.addSubview(redView)

        greenView.wantsLayer = true
        greenView.layer?.backgroundColor = NSColor.orange.cgColor
        view.addSubview(greenView)

        blueView.wantsLayer = true
        blueView.layer?.backgroundColor = NSColor.blue.cgColor
        view.addSubview(blueView)
    }
    
    override func viewDidLayout() {
        super.viewDidLayout()
        
        redView.frameLayout.performUpdates { layout in
            layout.leftMargin = 20.0
            layout.width = frameLayout.width / 2.0
            layout.height = 50.0
            layout.top = 20.0
        }
        greenView.frameLayout.performUpdates { layout in
            layout.left = redView.frameLayout.right + 10.0
            layout.rightMargin = 20.0
            layout.height = 50.0
            layout.top = 20.0
        }
        blueView.frameLayout.performUpdates { layout in
            layout.centerHorizontally()
            layout.width = 200.0
            layout.top = CGFloat.maximum(redView.frameLayout.bottom, greenView.frameLayout.bottom) + 10.0
            layout.height = 50.0
        }
    }
}

