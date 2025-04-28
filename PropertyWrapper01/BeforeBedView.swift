//
//  TodayView.swift
//  PropertyWrapper01
//
//  Created by SunMin Hong on 4/29/25.
//

import SwiftUI

struct BeforeBedView: View {
    
    @Binding var count: Int
    // 바인딩 변수 
    
    var body: some View {
        VStack{
            Text("자기전에!!! count: \(count)")
                .padding()
            Button(action: {
                count = count + 1
            }, label: {
                Text("카운트 업!")
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10.0)
            })
        }
    }
}

//#Preview {
//    BeforeBedView()
//}
