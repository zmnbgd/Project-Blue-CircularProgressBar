//
//  ContentView.swift
//  ProjectBLUEProgressBar
//
//  Created by Marko Zivanovic on 6.5.22..
//

import SwiftUI

struct ContentView: View {
    
    @State private var intakeWaterPerecentage: Double = 0.0
    
    var body: some View {
        VStack {
            
            ZStack {
                Circle()
                    .stroke(Color("wave1").opacity(0.3), lineWidth: 36.0)
                    .frame(width: 300.0, height: 300.0)
                
                Text(String(format: "%.0f%%", min(self.intakeWaterPerecentage, 1) * 100))
                    .font(.system(size: 70)).bold()
                    .foregroundColor(Color("ButtonGradient1"))
                    
                Circle()
                    .trim(from: 0.00, to: self.intakeWaterPerecentage)
                    .stroke(style: StrokeStyle(lineWidth: 36.0, lineCap: .round, lineJoin: .round))
                    .foregroundColor(Color("ButtonGradient1"))
                    .animation(.linear(duration: 1.5), value: intakeWaterPerecentage)
            }
            Spacer()
                .frame(height: 160, alignment: .center)
            
            //MARK: Intake Water Verification Button
            Button("Done") {
            print("Intake water verification")
            }
            .foregroundColor(Color("ButtonGradient1"))
            Spacer()
                .frame(height: 100, alignment: .center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
