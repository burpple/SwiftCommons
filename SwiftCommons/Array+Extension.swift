//
//  Array+Extension.swift
//  SwiftCommons
//
//  Created by Akira Hirakawa on 15/9/15.
//  Copyright © 2015 Burpple. All rights reserved.
//

extension Array {

    func count(closure: (Element) -> Bool) -> Int {
        return self.filter(closure).count
    }
}
