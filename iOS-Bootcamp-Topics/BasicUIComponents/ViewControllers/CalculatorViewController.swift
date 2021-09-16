//
//  CalculatorViewController.swift
//  BasicUIComponents
//
//  Created by Semih Emre ÜNLÜ on 11.09.2021.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    //@IBOutlet var digitButtons: [UIButton]!
    
    
    var varNumber1 :Double?
    var varNumber2 :Double?
    var varNumberResult :Double?
    
    var varOperator = "+"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private var isTyping: Bool = false
    
    @IBAction func digitButtonTapped(_ sender: UIButton) {
        let digit = String(sender.tag)
        let displayText = resultLabel.text ?? ""

        
        if isTyping {
            resultLabel.text = displayText + digit
        } else {
            resultLabel.text = digit
            isTyping.toggle()
        }
    }
    
    @IBAction func actionButtonTapped(_ sender: UIButton) {
        
        let value = NSString(string: resultLabel.text ?? "0").doubleValue
        
        
        resultLabel.text = String(sqrt(value))
        
        
        
    }
    
    @IBAction func equalButtonTapped(_ sender: Any) {
        varNumber2 = Double(resultLabel.text!)
        
        switch varOperator {
        case "+":
            varNumberResult = varNumber1! + varNumber2!
            resultLabel.text = String(varNumberResult!)
        case "-":
            varNumberResult = varNumber1! - varNumber2!
            resultLabel.text = String(varNumberResult!)
        case "*":
            varNumberResult = varNumber1! * varNumber2!
            resultLabel.text = String(varNumberResult!)
        case "/":
            varNumberResult = varNumber1! / varNumber2!
            resultLabel.text = String(varNumberResult!)
        default:
            resultLabel.text = "ERROR"
            
        }
        
    }
    
    
    @IBAction func sumButtonTapped(_ sender: Any) {
        
        varOperator = "+"
        varNumber1 = Double(resultLabel.text!)
        clearText()
        

    }
    
    @IBAction func exButtonTapped(_ sender: Any) {
        varOperator = "-"
        varNumber1 = Double(resultLabel.text!)
        clearText()
        
        
    }
    
    
    @IBAction func mulButtonTapped(_ sender: Any) {
        
        varOperator = "*"
        varNumber1 = Double(resultLabel.text!)
        clearText()
        
    }
    
    
    
    @IBAction func divButtonTapped(_ sender: Any) {
        varOperator = "/"
        varNumber1 = Double(resultLabel.text!)
        clearText()
        
        
        
    }
    
    func clearText() {
        resultLabel.text = ""
    }
    



}
