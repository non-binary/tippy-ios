//
//  Compute.swift
//  Tippy
//
//  Created by Luna Graysen on 2020-02-08.
//  Copyright © 2020 Luna Graysen. All rights reserved.
//

import Foundation

struct Compute {
    static func percentage(_ percentage: Float, from total: Float) -> Float {
        return total * (percentage / 100)
    }
}
