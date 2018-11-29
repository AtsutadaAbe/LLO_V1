//
//  PersonalInfoViewController.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/07/24.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//

import UIKit

class PersonalInfoViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource,UITextFieldDelegate {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var mail: UITextField!
    @IBOutlet weak var sex: UISegmentedControl!
    @IBOutlet weak var pickerAge: UIPickerView!
    @IBOutlet weak var pickerHeight: UIPickerView!
    @IBOutlet weak var pickerWeight: UIPickerView!
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBAction func next(_ sender: UIButton) {
        //年齢
        let age = 10 * pickerAge.selectedRow(inComponent: 0) + pickerAge.selectedRow(inComponent: 1)
        let data = ValueData()
        data.inputVal = age
        SettingViewController.datas["age"] = data
        SettingViewController.postSetting("age", data)

        //身長
        let height = 100 * pickerHeight.selectedRow(inComponent: 0) + 10 * pickerHeight.selectedRow(inComponent: 1) + pickerHeight.selectedRow(inComponent: 2)
        let dataHeight = ValueData()
        dataHeight.inputVal = height
        SettingViewController.datas["height"] = dataHeight
        SettingViewController.postSetting("height", dataHeight)
        //体重
        let weight = 100 * pickerWeight.selectedRow(inComponent: 0) + 10 * pickerWeight.selectedRow(inComponent: 1) + pickerWeight.selectedRow(inComponent: 2)
        let dataWeight = ValueData()
        dataWeight.inputVal = weight
        SettingViewController.datas["weight"] = dataWeight
        SettingViewController.postSetting("weight", dataWeight)
        
        //氏名
        let nameData = ValueData()
        nameData.inputText = name.text!
        SettingViewController.datas["name"] = nameData
        SettingViewController.postSetting("name", nameData)
        //メルアド
        let mailData = ValueData()
        mailData.inputText = mail.text!
        SettingViewController.datas["mail"] = mailData
        SettingViewController.postSetting("mail", mailData)
        //性別
        let sexData = ValueData()
        sexData.inputVal = sex.selectedSegmentIndex
        SettingViewController.datas["sex"] = sexData
        SettingViewController.postSetting("sex", sexData)

    }
    
    var texts = ["0","1","2","3","4","5","6","7","8","9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldName.delegate = self
        textFieldEmail.delegate = self
        
        // Pickerの準備
        pickerAge.tag = 1
        pickerAge.delegate = self
        pickerAge.dataSource = self
        pickerHeight.tag = 2
        pickerHeight.delegate = self
        pickerHeight.dataSource = self
        pickerWeight.tag = 3
        pickerWeight.delegate = self
        pickerWeight.dataSource = self
        
        //年齢を表示
        if (SettingViewController.datas["age"] != nil) {
            let ageData = SettingViewController.datas["age"]
            pickerAge.selectRow((ageData!.inputVal / 10) , inComponent: 0, animated: true)
            pickerAge.selectRow(ageData!.inputVal % 10 , inComponent: 1, animated: true)
        }
        //身長を表示
        if (SettingViewController.datas["height"] != nil) {
            let heightData = SettingViewController.datas["height"]
            pickerHeight.selectRow((heightData!.inputVal / 100) , inComponent: 0, animated: true)
            pickerHeight.selectRow((heightData!.inputVal / 10) % 10 , inComponent: 1, animated: true)
            pickerHeight.selectRow(heightData!.inputVal % 10 , inComponent: 2, animated: true)
        }
        //体重を表示
        if (SettingViewController.datas["weight"] != nil) {
            let weightData = SettingViewController.datas["weight"]
            pickerWeight.selectRow((weightData!.inputVal / 100) , inComponent: 0, animated: true)
            pickerWeight.selectRow((weightData!.inputVal / 10) % 10 , inComponent: 1, animated: true)
            pickerWeight.selectRow(weightData!.inputVal % 10 , inComponent: 2, animated: true)
        }
        
        //氏名
        if (SettingViewController.datas["name"] != nil) {
            name.text = SettingViewController.datas["name"]!.inputText
        }
        //メルアド
        if (SettingViewController.datas["mail"] != nil) {
            mail.text = SettingViewController.datas["mail"]!.inputText
        }
        //性別
        if (SettingViewController.datas["sex"] != nil) {
            sex.selectedSegmentIndex = SettingViewController.datas["sex"]!.inputVal
        }
        
    }
    
    //pickerの列の数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        var num = 3
        if (pickerView.tag == 1) {
            //年齢の時は2桁
            num = 2
        }
        return num
    }
    
    // pickerに表示する値の数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var num = texts.count
        if (pickerView.tag != 1 && component == 0){
            //身長、体重の時、百の位は0、1、2のみとする
            num = 3
        }
        return num
    }
    
    //pickerに表示する値を返すデリゲートメソッド
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return texts[row]
    }
    
    // pickerが選択された際に呼ばれるデリゲートメソッド
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //label.text = texts[row]
        print(component.description + ":" + texts[row])
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textFieldName.resignFirstResponder()
        textFieldEmail.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

