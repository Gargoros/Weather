//
//  DoubleExtention.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 19.02.24.
//

import Foundation

//MARK: - rounded Double number and convert to String

extension Double {
    func roundedDouble() -> String {
         
        return String(format: "%.0f", self)
    }
    
    func roundedDoubleToTwo() -> String {
         
        return String(format: "%.2f", self)
    }
}
