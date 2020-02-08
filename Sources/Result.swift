//
//  Result.swift
//  Tippy
//
//  Created by Luna Graysen on 2020-02-08.
//  Copyright © 2020 Luna Graysen. All rights reserved.
//

import Foundation

struct Result {
    static func compute(resultWith total: Float, percentage: Float) -> Float {
        return total * (percentage / 100)
    }
    
    static func format(result: Float) -> String {
        return String(format: "%.2f", result)
    }
}
