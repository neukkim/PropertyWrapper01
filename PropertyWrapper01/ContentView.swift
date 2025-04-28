//
//  ContentView.swift
//  PropertyWrapper01
//
//  Created by SunMin Hong on 4/28/25.
//

import SwiftUI

struct ContentView: View {
    
//    var count = 0
    @State var count = 0
// count에 "@State 미사용시
// 아래 Button의 count 영역에서
// "Cannot assign to property: 'self' is immutable" 에러 메세지 노출
    
    
    @State var appTitle: String = "빡코딩의 일땅"
    
    var body: some View {
        
        TabView(){

            VStack{
                Text("오늘도!!! count: \(count)")
                    .padding()
                Button(action: {
                    count = count + 1
//                    appTitle = "빡코딩의 일땅 \(count)"
                }, label: {
                    Text("카운트 업!")
                        .foregroundStyle(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10.0)
                })
            }
            .tabItem { Label("오늘도ㅎ", image: "pencil")}
            
            Text("자기전에!!!")
                .padding()
                .tabItem { Label("자기전에ㅎ", image: "pencil.circle")}
            
            Text("주말에도!!!")
                .padding()
                .tabItem { Label("주말에도ㅎ", image: "pencil.circle.fill")}
            
        }
    }
}

#Preview {
    ContentView()
}



