//
//  ViewController.swift
//  GB-HW2-Calculator-SM
//
//  Created by Samat Murzaliev on 12.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculatorText: UILabel!
    
    var expression = ""
    var boolActivated = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonZero(_ sender: Any) {
        expression += "0"
        calculatorText.text = expression
    }
    @IBAction func buttonOne(_ sender: Any) {
        expression += "1"
        calculatorText.text = expression
    }
    
    @IBAction func buttonTwo(_ sender: Any) {
        expression += "2"
        calculatorText.text = expression
    }
    
    @IBAction func buttonThree(_ sender: Any) {
        expression += "3"
        calculatorText.text = expression
    }
    
    @IBAction func buttonFour(_ sender: Any) {
        expression += "4"
        calculatorText.text = expression
    }
    
    @IBAction func buttonFive(_ sender: Any) {
        expression += "5"
        calculatorText.text = expression
    }
    
    @IBAction func buttonSix(_ sender: Any) {
        expression += "6"
        calculatorText.text = expression
    }
    
    @IBAction func buttonSeven(_ sender: Any) {
        expression += "7"
        calculatorText.text = expression
    }
    
    @IBAction func buttonEight(_ sender: Any) {
        expression += "8"
        calculatorText.text = expression
    }
    
    @IBAction func buttonNine(_ sender: Any) {
        expression += "9"
        calculatorText.text = expression
    }
    
    
    @IBAction func buttonPlus(_ sender: Any) {
        expression += "+"
        calculatorText.text = expression
    }
    
    @IBAction func buttonMinus(_ sender: Any) {
        expression += "-"
        calculatorText.text = expression
    }
    
    
    @IBAction func buttonMultiply(_ sender: Any) {
        expression += "*"
        calculatorText.text = expression
    }
    
    @IBAction func buttonDivide(_ sender: Any) {
        expression += "/"
        calculatorText.text = expression
    }
    
    @IBAction func buttonPoint(_ sender: Any) {
        expression += "."
        boolActivated = !boolActivated
    }
    @IBAction func buttonCalculate(_ sender: Any) {
        
        let expr = NSExpression(format: expression as String)
        if let result = expr.expressionValue(with: nil, context: nil) as? Double {
            calculatorText.text = String(result)
            
        } else {
            calculatorText.text = "Error"
        }
        boolActivated = false
    }
    
    @IBAction func butonClear(_ sender: Any) {
        expression = ""
        calculatorText.text = "0"
    }
}

