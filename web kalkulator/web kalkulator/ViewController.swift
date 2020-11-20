//
//  ViewController.swift
//  web kalkulator
//
//  Created by muhammad luthfi farizqi on 11/11/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var teksfiled1: UITextField!
    @IBOutlet weak var teksfiled2: UITextField!
    @IBOutlet weak var hasil: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnbagi(_ sender: UIButton) {
        hitung(aritmatik: "/")
    }
    
    @IBAction func btnkali(_ sender: UIButton) {
        hitung(aritmatik: "*")
    }
    
    @IBAction func btnKurang(_ sender: UIButton) {
        hitung(aritmatik: "-")
    }
    @IBAction func btnTambah(_ sender: UIButton) {
        hitung(aritmatik: "+")
    }
    
    @IBAction func btnpersen(_ sender: UIButton) {
        hitung(aritmatik: "%")
    }
    
  
    @IBAction func btnangka(_ sender: UIButton) {
        hitung(aritmatik: "1")
    }
    
    
       
    
    
    
    
        
    
    func hitung(aritmatik: String){
        if teksfiled1.text == ""||teksfiled2.text == ""{
            hasil.text = "kolom nya harus diisi"
        }else{
            var input1 = Double(teksfiled1.text!)
            let input2 = Double(teksfiled2!.text!)
            var jumlah: Double?
            switch aritmatik {
            case "+":
                jumlah = input1! + input2!
            case "-":
               jumlah = input1! - input2!
            case "*":
                jumlah = input1! * input2!
            case "/":
                jumlah = input1! / input2!
            case "=":
                jumlah = input1!; 1; input2!
            default:
                break
            }
            hasil.text = String(jumlah!)
           }
       
    }
}




