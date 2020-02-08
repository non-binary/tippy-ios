//
//  ViewController.swift
//  Tippy
//
//  Created by Luna Graysen on 2020-02-08.
//  Copyright © 2020 Luna Graysen. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    // MARK: Properties
    var calculatorView: CalculatorView?
    
    // MARK: Setup View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculatorView = CalculatorView()
        calculatorView.translatesAutoresizingMaskIntoConstraints = false
        self.calculatorView = calculatorView
        view.addSubview(calculatorView)
        
        // Setup general layout constraints
        calculatorView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        calculatorView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        calculatorView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        calculatorView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        calculatorView.amountTextField?.becomeFirstResponder()
        calculatorView.amountTextField?.addTarget(self, action: #selector(textFieldEditingDidChange), for: .editingChanged)
        calculatorView.percentageTextField?.addTarget(self, action: #selector(textFieldEditingDidChange), for: .editingChanged)
        view.backgroundColor = .white
    }
    
    // MARK: Editing Changed Event
    @objc func textFieldEditingDidChange() {
        guard let calculatorView = calculatorView, let totalString = calculatorView.amountTextField?.text, let percentageString = calculatorView.percentageTextField?.text else {
            fatalError("View failed initialization")
        }
        
        guard let total = Float(totalString), let percentage = Float(percentageString) else {
            print("Strings could not be converted to number types")
            calculatorView.resultLabel?.text = LocalizedString("result_label_default")
            
            return
        }
        
        let result = Result.compute(resultWith: total, percentage: percentage)
        calculatorView.resultLabel?.text = Result.format(result: result)
    }
}
