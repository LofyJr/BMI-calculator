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
    @Published var showResult: String = ""
    
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }()
    
    func calcularImc() {
       let resultado = (peso / (altura * altura))
        
        if resultado < 18.5 {
            showResult = "Você está na classificação abaixo do peso com valor \(resultado) do IMC"
        } else if resultado <= 24.99 && resultado >= 18.5 {
            showResult = "Você está na classificação peso ideal com valor \(resultado) do IMC"
        } else if resultado <= 29.99 && resultado >= 25 {
            showResult = "Você está na classificação Sobrepeso com valor \(resultado) do IMC"
        } else {
            showResult = "Você está na classificação Obesidade com valor \(resultado) do IMC"
        }
    }
}
