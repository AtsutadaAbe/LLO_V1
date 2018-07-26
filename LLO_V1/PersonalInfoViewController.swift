//
//  PersonalInfoViewController.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/07/24.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//

import UIKit

class PersonalInfoViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var weight: UIPickerView!
    @IBOutlet weak var age: UIPickerView!
    var texts = ["1","2","3","4","5","6","7","8","9","0"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Pickerの準備
        picker.delegate = self
        picker.dataSource = self
        weight.delegate = self
        weight.dataSource = self
        age.delegate = self
        age.dataSource = self
    }
    
    //pickerの列の数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
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

