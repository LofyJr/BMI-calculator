//
//  BMI_calculatorApp.swift
//  BMI-calculator
//
//  Created by Juliano Lofy Junior on 04/01/24.
//

import SwiftUI

@main
struct BMI_calculatorApp: App {
    var body: some Scene {
        WindowGroup {
            CalculatorView()
                .environmentObject(CalculatorViewModel())
        }
    }
}
