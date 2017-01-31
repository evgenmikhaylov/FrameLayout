//
//  CALayer+FrameLayoutSupport.swift
//  SwiftLayoutExample
//
//  Created by Evgeny Mikhaylov on 14/12/2016.
//  Copyright © 2016 Evgeny Mikhaylov. All rights reserved.
//

import QuartzCore

extension CALayer: FrameLayoutSupport {
    
#if os(OSX)
    override open class func initialize() {
        if self != CALayer.self {
            return
        }
        let swizzlingClosure: () = {
            CALayer.swizzle(#selector(layoutSublayers), with: #selector(fl_layoutChilds))
        }()
        swizzlingClosure
    }

    @objc private func fl_layoutChilds() {
        fl_layoutChilds()
        frameLayout.didLayoutChilds()
    }
#endif
    
    public var parent: FrameLayoutSupport? {
        return superlayer
    }
    
    public var childs: [FrameLayoutSupport] {
        guard let sublayers = sublayers else {
            return []
        }
        return sublayers
    }
}
