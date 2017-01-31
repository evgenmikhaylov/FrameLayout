//
//  RuntimeHelper.swift
//  FrameLayoutExample
//
//  Created by Evgeny Mikhaylov on 30/01/2017.
//  Copyright © 2017 EvgenyMikhaylov. All rights reserved.
//

import ObjectiveC.runtime

extension NSObject {
    
    static func swizzle(_ originalSelector: Selector, with swizzledSelector: Selector) {
        let originalMethod = class_getInstanceMethod(self, originalSelector)
        let swizzledMethod = class_getInstanceMethod(self, swizzledSelector)
        let didAddMethod = class_addMethod(self, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod))
        if didAddMethod {
            class_replaceMethod(self, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod))
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    }
    
}
