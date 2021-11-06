//
//  upDownViewController.swift
//  20191230_updown
//
//  Created by j on 2019/12/30.
//  Copyright © 2019 Claire. All rights reserved.
//

import UIKit

class upDownViewController: UIViewController {
 
    //사용자가 숫자버튼을 클릭했을 때 결과를 보여줄 레이블
    @IBOutlet var enterNumber: UILabel!
    
    //결과 버튼을 눌렀을 때 업다운 결과를 보여줄 레이블
    @IBOutlet var resultLabel: UILabel!
    
    
    var computerRandomNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        computerRandomNumber = Int.random(in: 0...9)
        
        enterNumber.backgroundColor = .black
        enterNumber.textColor = .white
        enterNumber.font = UIFont.boldSystemFont(ofSize: 24)
        enterNumber.text = "숫자버튼을 클릭하세요"
    }
    
    
    
    @IBAction func numberButtonClicked(_ sender: UIButton) {
        
        //클릭한 버튼에 적혀있는 텍스트를 레이블에 보여주기
        //enterNumber.text = sender.currentTitle! //"1"
        if sender.currentTitle != nil {
           enterNumber.text = sender.currentTitle!
        } else {
           enterNumber.text = "ERROR"
        }
    }
    
    
    
    //!는 레이블의 값이 완벽할때 쓴다. 값이 완벽하지 않을때 뜨는 에러는 조건문 if.else로 쓴다.
    
    //안전하게 값이 나올 수 있는 방법


    @IBAction func resultButtonClicked(_ sender: UIButton) {
 
        if computerRandomNumber == Int(enterNumber.text!)! {
            
            resultLabel.text = "BINGO"
            
        } else if computerRandomNumber > Int(enterNumber.text!)! {
            
            resultLabel.text = "UP"
            
            
        } else if computerRandomNumber < Int(enterNumber.text!)! {
            
           resultLabel.text = "DOWN"
            
        } else {
            
        }
        
        
    }
    
}
