//
//  UIView+FrameLayoutSupport.swift
//  SwiftLayoutExample
//
//  Created by Evgeny Mikhaylov on 14/12/2016.
//  Copyright © 2016 Evgeny Mikhaylov. All rights reserved.
//

#if os(iOS) || os(tvOS)
    import UIKit
    public typealias FrameLayoutView = UIView
#elseif os(OSX)
    import AppKit
    public typealias FrameLayoutView = NSView
#endif

extension FrameLayoutView: FrameLayoutSupport {
    public var parent: FrameLayoutSupport? {
        return superview
    }
    public var childs: [FrameLayoutSupport] {
        return subviews
    }
}
