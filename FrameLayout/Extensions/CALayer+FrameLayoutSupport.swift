//
//  CALayer+FrameLayoutSupport.swift
//  SwiftLayoutExample
//
//  Created by Evgeny Mikhaylov on 14/12/2016.
//  Copyright © 2016 Evgeny Mikhaylov. All rights reserved.
//

import QuartzCore

extension CALayer: FrameLayoutSupport {
    var parent: FrameLayoutSupport? {
        return superlayer
    }
    var childs: [FrameLayoutSupport] {
        guard let sublayers = sublayers else {
            return []
        }
        return sublayers
    }
}
