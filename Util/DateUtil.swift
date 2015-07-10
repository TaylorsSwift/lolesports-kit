//
//  DateUtil.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/10/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

extension String {
    
    func toNSDate() -> NSDate? {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mmZ"
        return formatter.dateFromString(self)
    }
}