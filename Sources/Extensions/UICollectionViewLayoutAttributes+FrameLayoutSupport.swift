//
//  UICollectionViewLayoutAttributes+FrameLayoutSupport.swift
//  SwiftLayoutExample
//
//  Created by Evgeny Mikhaylov on 14/12/2016.
//  Copyright © 2016 Evgeny Mikhaylov. All rights reserved.
//

import UIKit

extension UICollectionViewLayoutAttributes: FrameLayoutSupport {
    var superObject: FrameLayoutSupport? {
        return nil
    }
}
