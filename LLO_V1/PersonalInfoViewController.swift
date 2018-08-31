//
//  PersonalInfoViewController.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/07/24.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//

import UIKit

class PersonalInfoViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pickerAge: UIPickerView!   
    @IBOutlet weak var pickerHeight: UIPickerView!
    @IBOutlet weak var pickerWeight: UIPickerView!
    @IBAction func next(_ sender: UIButton) {
        let age = 10 * pickerAge.selectedRow(inComponent: 0) + pickerAge.selectedRow(inComponent: 1)
        let data = ValueData()
        data.inputVal = age
        SettingViewController.datas["age"] = data
    }
    
    var texts = ["0","1","2","3","4","5","6","7","8","9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        return texts.count
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
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

