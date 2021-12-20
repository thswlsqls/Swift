//
//  EditDelegate.swift
//  Navigation
//
//  Created by Kenny on 2021/12/18.
//

// Protocol : 작업 지시서 , 시방서

protocol EditDelegate {
    func didMessageEditDone(_ controller: EditViewController, message: String)
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool)
}
