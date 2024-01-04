//
//  CalculatorViewModel.swift
//  BMI-calculator
//
//  Created by Juliano Lofy Junior on 04/01/24.
//

import Foundation
import SwiftUI

class CalculatorViewModel: ObservableObject {
    @Published var peso: Double = 0.0
    @Published var altura: Double = 0.0
    @Published var mostrar: String = ""
    
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }()
    
    func resultado() {
       let resul = (peso / (altura * altura))
        
        if resul < 18.5 {
            mostrar = "Você está na classificação abaixo do peso com valor \(resul) do IMC"
        } else if resul <= 24.99 && resul >= 18.5 {
            mostrar = "Você está na classificação peso ideal com valor \(resul) do IMC"
        } else if resul <= 29.99 && resul >= 25 {
            mostrar = "Você está na classificação Sobrepeso com valor \(resul) do IMC"
        } else {
            mostrar = "Você está na classificação Obesidade com valor \(resul) do IMC"
        }
    }
}
