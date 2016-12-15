//
//  CALayer+FrameLayoutSupport.swift
//  SwiftLayoutExample
//
//  Created by Evgeny Mikhaylov on 14/12/2016.
//  Copyright © 2016 Evgeny Mikhaylov. All rights reserved.
//

import UIKit

extension CALayer: FrameLayoutSupport {
    var center: CGPoint {
        set {
            position = newValue
        }
        get {
            return position
        }
    }
    var superObject: FrameLayoutSupport? {
        return superlayer
    }
}
