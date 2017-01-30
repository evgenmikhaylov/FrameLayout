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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.wantsLayer = true
        
        redView.wantsLayer = true
        redView.layer?.backgroundColor = NSColor.red.cgColor
        view.addSubview(redView)
        
        blueView.wantsLayer = true
        blueView.layer?.backgroundColor = NSColor.blue.cgColor
        view.addSubview(blueView)
    }
    
    override func viewDidLayout() {
        super.viewDidLayout()
        
        redView.frameLayout.apply{ layout in
            layout.leftMargin = 20.0
            layout.rightMargin = 20.0
            layout.height = 50.0
            layout.top = 20.0
        }
        blueView.frameLayout.apply{ layout in
            layout.centerHorizontally()
            layout.width = 200.0
            layout.top = redView.frameLayout.bottom + 20.0
            layout.height = 50.0
        }
        frameLayout.upsideDownChilds()
    }
}

