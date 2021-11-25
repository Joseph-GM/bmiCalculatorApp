//
//  ViewController.swift
//  bmiCalculatorApp
//
//  Created by Joseph Kim on 2021/11/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblHeight: UITextField!
    @IBOutlet var lblWeight: UITextField!
    @IBOutlet var lblResult: UILabel!
    @IBOutlet var imgResult: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCalculate(_ sender: UIButton) {
//        var output:String = ""
        if let height = lblHeight.text, let weight = lblWeight.text {
            lblResult.text = calculateBMI(height: height, weight: weight)
        }
       
    }
    
    func calculateBMI(height: String, weight: String) -> String {
//        var bmiResult : String = "신장과 체주을 입력하세요"
        var bmiNumber : Double = 0.0
        if let heightNumber : Double = Double(height), let weightNumber : Double = Double(weight) {
            bmiNumber = weightNumber / (heightNumber * 0.01 * heightNumber * 0.01)
            if bmiNumber < 18.5 {
                imgResult.image = UIImage(named: "crying.png")
                return String(round(bmiNumber * 10)/10)+" 저체중 입니다."
            } else if bmiNumber >= 18.5 && bmiNumber < 23 {
                imgResult.image = UIImage(named: "smile.png")
                return String(round(bmiNumber * 10)/10)+" 정상체중 입니다."
            } else if bmiNumber >= 23 && bmiNumber < 25 {
                imgResult.image = UIImage(named: "crying.png")
                return String(round(bmiNumber * 10)/10)+" 과체중 입니다."
            } else if bmiNumber >= 25 && bmiNumber < 30 {
                imgResult.image = UIImage(named: "crying.png")
                return String(round(bmiNumber * 10)/10)+" 경도비만 입니다."
            } else {
                imgResult.image = UIImage(named: "crying.png")
                return String(round(bmiNumber * 10)/10)+" 고도비만 입니다."
            }
        }
        return "신장과 체중을 입력하세요"
    }
}

