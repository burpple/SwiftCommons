//
//  UIAlertAction+Extension.swift
//  SwiftCommons
//
//  Created by Akira Hirakawa on 17/9/15.
//  Copyright © 2015 Burpple. All rights reserved.
//

import UIKit

extension UIAlertAction {

    class func cancelAction(localizedString: String = "Cancel") -> UIAlertAction {
        return UIAlertAction(title: localizedString, style: .Cancel, handler: nil)
    }
}
