//
//  UIViewController+FrameLayout.swift
//  SwiftLayoutExample
//
//  Created by Evgeny Mikhaylov on 14/12/2016.
//  Copyright © 2016 Evgeny Mikhaylov. All rights reserved.
//

#if os(iOS) || os(tvOS)
    import UIKit
    public typealias FrameLayoutViewController = UIViewController
#elseif os(OSX)
    import AppKit
    public typealias FrameLayoutViewController = NSViewController
#endif

extension FrameLayoutViewController {
    var frameLayout: FrameLayout {
        return self.view.frameLayout
    }
}
