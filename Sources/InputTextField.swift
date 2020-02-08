//
//  InputTextField.swift
//  Tippy
//
//  Created by Luna Graysen on 2020-02-08.
//  Copyright © 2020 Luna Graysen. All rights reserved.
//

import UIKit

class InputTextField: UITextField {
    // MARK: Initialize View
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.setupView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupView()
    }
    
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        font = UIFontMetrics(forTextStyle: .largeTitle).scaledFont(for: UIFont.systemFont(ofSize: 60, weight: .bold))
        adjustsFontForContentSizeCategory = true
        textAlignment = .center
        keyboardType = .decimalPad
    }
}
