//
//  DateUtil.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/10/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

extension String {
    
    func toNSDate(format: String = "yyyy-MM-dd'T'HH:mmZ") -> NSDate? {
        let formatter = NSDateFormatter()
        formatter.dateFormat = format
        return formatter.dateFromString(self)
    }
}