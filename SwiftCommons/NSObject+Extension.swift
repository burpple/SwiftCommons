//
//  NSObject+extension.swift
//  SwiftCommons
//
//  Created by Akira Hirakawa on 15/9/15.
//  Copyright © 2015 Burpple. All rights reserved.
//

import Foundation

extension NSObject {

    func className() -> String {
        let className = NSStringFromClass(self.dynamicType)
        let range = className.rangeOfString(".")
        return className.substringFromIndex(range!.endIndex)
    }
}