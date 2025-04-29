//
//  ContentView.swift
//  PropertyWrapper01
//
//  Created by SunMin Hong on 4/28/25.
//

import SwiftUI

struct ContentView: View {
    
    //    @State var appTitle: String = "빡코딩의 일땅"
    @State var appTitle: String = ""
    
    @EnvironmentObject var viewModel: MyViewModel
    // MyViewModel 에서 @Published var appTitle 를 가져 오기 위한 작업
    // 라인 63: onReceive 에 반영
    
//    var count = 0
    @State var count = 0
// count에 "@State 미사용시
// 아래 Button의 count 영역에서
// "Cannot assign to property: 'self' is immutable" 에러 메세지 노출
    
    

    
    var body: some View {
        
        TabView(){

            VStack{
                Text("오늘도!!! count: \(count)")
                    .padding()
                Button(action: {
                    count = count + 1
                    viewModel.appTitle = "빡코딩의 일상 \(count)"
                }, label: {
                    Text("카운트 업!")
                        .foregroundStyle(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10.0)
                })
            }
            .tabItem {
                Label("오늘", systemImage: "pencil.circle")  // 시스템 아이콘 사용
            }

            //BeforeBedView 바인딩 count에
            //ContentView count를 넘겨 주겠다.
            BeforeBedView(count: $count)
                .tabItem {
                    Label("자기전", systemImage: "eraser.line.dashed.fill")
                }
            WeeklyView()
                .tabItem {
                    Label("주말에", systemImage: "pencil.tip.crop.circle.fill")
                }
            
        }
        .overlay(Text(appTitle).offset(y: (-UIScreen.main.bounds.height * 0.4)))
        .onReceive(viewModel.$appTitle, perform: { receivedAppTitle in
            print("receive 됨 + \(count)")
            appTitle = receivedAppTitle})
    }
}

#Preview {
    ContentView()
        .environmentObject(MyViewModel())
}



