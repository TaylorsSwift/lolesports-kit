//
//  IntUtil.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/10/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

extension Int {
    
    func toBool () ->Bool? {
        
        switch self {
            
        case 0:
            
            return false
            
        case 1:
            
            return true
            
        default:
            
            return nil
            
        }
        
    }
}