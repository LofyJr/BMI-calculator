//
//  ContentView.swift
//  BMI-calculator
//
//  Created by Juliano Lofy Junior on 04/01/24.
//

import SwiftUI

struct CalculatorView: View {
    @EnvironmentObject var calculatorViewModel: CalculatorViewModel
    var body: some View {
        ZStack{
            LinearGradient(colors: [.white, .blue, .blue, .white], startPoint: .topLeading, endPoint: .bottom)
            
            VStack(spacing: 10){
                VStack(alignment: .center){
                    Text(textView.title)
                        .font(.title)
                        .multilineTextAlignment(.center)
                }
                .padding(.bottom, 15)
                
                VStack(alignment: .leading){
                    Text(textView.peso)
                        .font(.title3)
                    
                    TextField("", value: $calculatorViewModel.peso, formatter: calculatorViewModel.formatter )
                        .frame(height: 48)
                        .border(.gray)
                        .background(.white)
                        .cornerRadius(8)
                    
                    Text(textView.altura)
                        .font(.title3)
                    
                    TextField("", value: $calculatorViewModel.altura, formatter: calculatorViewModel.formatter)
                        .frame(height: 48)
                        .border(.gray)
                        .background(.white)
                        .cornerRadius(8)
                }
                
                HStack{
                    Button(button.calcular){
                        calculatorViewModel.resultado()
                    }
                    .frame(height: 48)
                    .border(.gray)
                    .background(.white)
                    .cornerRadius(8)
                }
                .padding()
                
                VStack{
                    Text(calculatorViewModel.mostrar)
                        .font(.system(size: 16))
                        .frame(alignment: .center)
                }
                
            }
            .padding()
        }
        .edgesIgnoringSafeArea(.all)
    }
    
}

#Preview {
    CalculatorView()
}

