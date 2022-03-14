//
//  ViewController.swift
//  login
//
//  Created by Muhammad Hassan on 14/03/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtinput: UITextField!
    var istoogled:Bool = true

    // btn for operations
    @IBOutlet weak var btnac: UIButton!
    @IBOutlet weak var btnequal: UIButton!
    @IBOutlet weak var btnminnus: UIButton!
    @IBOutlet weak var btnplus: UIButton!
    @IBOutlet weak var btnultiplication: UIButton!
    @IBOutlet weak var btndivions: UIButton!
    @IBOutlet weak var btnpercentage: UIButton!
    @IBOutlet weak var btnplusminus: UIButton!
    
    
    // btn for numbers
    
    @IBOutlet weak var sevenbtn: UIButton!
    @IBOutlet weak var fivebtn: UIButton!
    @IBOutlet weak var fourbtn: UIButton!
    @IBOutlet weak var ninebtn: UIButton!
    @IBOutlet weak var eightbtn: UIButton!
    @IBOutlet weak var sixbtn: UIButton!
    @IBOutlet weak var onebtn: UIButton!
    @IBOutlet weak var twobtn: UIButton!
    @IBOutlet weak var zerobtn: UIButton!
    @IBOutlet weak var threebtn: UIButton!
    
    
    // simple variable
    var varOperator = "+"
    var varNumber1 = 0
    var varNumber2 = 0
    var varNumberResult = 0
    var negativeresult = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    // text  clearing function
    func cleartext () {
        txtinput.text = ""
    }
    
    
    // number pressed
    
    @IBAction func ninebtn(Sender: UIButton)
    {  txtinput.text = txtinput.text! + "9" }
    @IBAction func eightbtn(Sender: UIButton)
    {  txtinput.text = txtinput.text! + "8" }
    @IBAction func sevenbtn(Sender: UIButton)
    {  txtinput.text = txtinput.text! + "7" }
    @IBAction func sixbtn(Sender: UIButton)
    {  txtinput.text = txtinput.text! + "6" }
    @IBAction func fivebtn(Sender: UIButton)
    {  txtinput.text = txtinput.text! + "5" }
    @IBAction func fourbtn(Sender: UIButton)
    {  txtinput.text = txtinput.text! + "4" }
    @IBAction func threebtn(Sender: UIButton)
    {  txtinput.text = txtinput.text! + "3" }
    @IBAction func twobtn(Sender: UIButton)
    {  txtinput.text = txtinput.text! + "2" }
    @IBAction func onebtn(Sender: UIButton)
    {  txtinput.text = txtinput.text! + "1" }
    @IBAction func zerobtn(Sender: UIButton)
    {  txtinput.text = txtinput.text! + "0" }
    @IBAction func decimalbtn(Sender: UIButton)
    {  txtinput.text = txtinput.text! + "." }
    
    
    
    func valuechange() -> Int {
        let newvalue = Int(txtinput.text!)
        return newvalue ?? 0
    }
    
    // operation button press
    @IBAction func btnultiplication(Sender: UIButton){
            varOperator = "*"
            varNumber1 = valuechange()
            cleartext()
        }
    @IBAction func btndivision(Sender: UIButton){
            varOperator = "/"
            varNumber1 = valuechange()
            cleartext()
        }
    @IBAction func btnaddition(Sender: UIButton){
            varOperator = "+"
            varNumber1 = valuechange()
            cleartext()
        }
    @IBAction func btnminus(Sender: UIButton){
            varOperator = "-"
            varNumber1 = valuechange()
            cleartext()
        }
    @IBAction func btnpercentage(Sender: UIButton){
            varOperator = "%"
            varNumber1 = valuechange()
            cleartext()
        }
    @IBAction func btnac(Sender: UIButton)  { cleartext() }
    
    @IBAction func plusminus(Sender: UIButton)
    {
        if istoogled
        {
                varNumberResult = varNumberResult * (-1)
                txtinput.text = String(varNumberResult)
        }
        else
        {
            varNumberResult = varNumberResult * (-1)
            txtinput.text = String(varNumberResult)
        }
    }
    
    @IBAction func btnequal(Sender: UIButton){
        varNumber2 = valuechange()
        
            switch varOperator {
                    case "+":
                        varNumberResult = varNumber1+varNumber2
                        txtinput.text = String(varNumberResult)
                    case "-":
                        varNumberResult = varNumber1-varNumber2
                        txtinput.text = String(varNumberResult)
                    case "*":
                        varNumberResult = varNumber1*varNumber2
                        txtinput.text = String(varNumberResult)
                    case "/":
                        varNumberResult = varNumber1/varNumber2
                        txtinput.text = String(varNumberResult)
                    case "%":
                        varNumberResult = (varNumber1*varNumber2)/100
                        txtinput.text = String(varNumberResult)
            
                    default:
                    txtinput.text = "ERROR"
                        
                    }
          
    }

}

