//
//  OnetimeEvent.swift
//  SwiftCommons
//
//  Created by Akira Hirakawa on 15/9/15.
//  Copyright © 2015 Burpple. All rights reserved.
//

import Foundation

@objc class OnetimeEvent: NSObject {

    class func happened(key: String) -> Bool {
        let defaults = NSUserDefaults.standardUserDefaults()
        let value = defaults.boolForKey(key)
        if value == false {
            defaults.setBool(true, forKey: key)
            defaults.synchronize()
        }
        return value
    }
}