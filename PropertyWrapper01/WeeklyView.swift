//
//  WeeklyView.swift
//  PropertyWrapper01
//
//  Created by SunMin Hong on 4/29/25.
//

import SwiftUI

struct WeeklyView: View {
    
    @Binding var count: Int
    
    init(count: Binding<Int> = .constant(99)) {
        _count = count
    }
    
    var body: some View {
        VStack{
            Text("주말에!!! count: \(count)")
                .padding()
            Button(action: {
                count = count + 1
            }, label: {
                Text("카운트 업!")
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10.0)
            })
        }
    }
}

//#Preview {
//    WeeklyView()
//}
