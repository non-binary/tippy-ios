//
//  CalculatorView.swift
//  Tippy
//
//  Created by Luna Graysen on 2020-02-08.
//  Copyright © 2020 Luna Graysen. All rights reserved.
//

import UIKit

class CalculatorView: UIView {
    
    // MARK: Properties
    var amountTextField: UITextField?
    var percentageTextField: UITextField?
    var resultLabel: UILabel?
    
    // MARK: Initialize View
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupLayout()
    }
    
    func setupLayout() {
        let largeTitle = UIFontMetrics(forTextStyle: .largeTitle).scaledFont(for: UIFont.systemFont(ofSize: 60, weight: .bold))

        // Amount Text Field
        let amountTextField = UITextField(frame: .zero)
        amountTextField.translatesAutoresizingMaskIntoConstraints = false
        amountTextField.placeholder = LocalizedString("amount_text_field_placeholder")
        amountTextField.font = largeTitle
        amountTextField.adjustsFontForContentSizeCategory = true
        amountTextField.textAlignment = .center
        amountTextField.keyboardType = .decimalPad
        self.amountTextField = amountTextField
        addSubview(amountTextField)
        
        amountTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        amountTextField.topAnchor.constraint(equalTo: topAnchor, constant: 125).isActive = true
        
        // Amount "Explainer" Label
        let amountLabel = UILabel(frame: .zero)
        amountLabel.translatesAutoresizingMaskIntoConstraints = false
        amountLabel.font = UIFont.preferredFont(forTextStyle: .footnote)
        amountLabel.text = LocalizedString("amount_label")
        addSubview(amountLabel)
        
        amountLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        amountLabel.topAnchor.constraint(equalTo: amountTextField.bottomAnchor, constant: 15).isActive = true
        
        // Percentage Text Field
        let percentageTextField = UITextField(frame: .zero)
        percentageTextField.translatesAutoresizingMaskIntoConstraints = false
        percentageTextField.placeholder = LocalizedString("percentage_text_field_placeholder")
        percentageTextField.font = largeTitle
        percentageTextField.adjustsFontForContentSizeCategory = true
        percentageTextField.textAlignment = .center
        percentageTextField.keyboardType = .numberPad
        self.percentageTextField = percentageTextField
        addSubview(percentageTextField)
        
        percentageTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        percentageTextField.topAnchor.constraint(equalTo: amountLabel.bottomAnchor, constant: 40).isActive = true
        
        // Percentage "Explainer" Label
        let percentageLabel = UILabel(frame: .zero)
        percentageLabel.translatesAutoresizingMaskIntoConstraints = false
        percentageLabel.text = LocalizedString("percentage_label")
        percentageLabel.font = UIFont.preferredFont(forTextStyle: .footnote)
        addSubview(percentageLabel)
        
        percentageLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        percentageLabel.topAnchor.constraint(equalTo: percentageTextField.bottomAnchor, constant: 15).isActive = true
        
        // Result Label
        let resultLabel = UILabel(frame: .zero)
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        resultLabel.font = largeTitle
        resultLabel.adjustsFontForContentSizeCategory = true
        //60,112,185
        resultLabel.textColor = UIColor(red: 60/255, green: 112/255, blue: 185/255, alpha: 1.0)
        resultLabel.text = LocalizedString("result_label_default")
        self.resultLabel = resultLabel
        addSubview(resultLabel)
        
        resultLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        resultLabel.topAnchor.constraint(equalTo: percentageLabel.bottomAnchor, constant: 40).isActive = true
        
        // Proposed Tip "Explainer" Label
        let proposedTipLabel = UILabel(frame: .zero)
        proposedTipLabel.translatesAutoresizingMaskIntoConstraints = false
        proposedTipLabel.text = LocalizedString("proposed_tip_label")
        proposedTipLabel.font = UIFont.preferredFont(forTextStyle: .footnote)
        addSubview(proposedTipLabel)
        
        proposedTipLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        proposedTipLabel.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 15).isActive = true
    }
    
}
