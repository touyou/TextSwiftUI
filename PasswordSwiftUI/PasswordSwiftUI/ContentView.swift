//
//  ContentView.swift
//  PasswordSwiftUI
//
//  Created by 藤井陽介 on 2019/06/19.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var result1: String = "0"
    @State var result2: String = "0"
    @State var result3: String = "0"
    @State var result4: String = "0"
    @State var resultText: String = "Analyze Start"
    
    var password: Int = 3746
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text(result1)
                    Text(result2)
                    Text(result3)
                    Text(result4)
                }
                Text(resultText)
                    .padding(.all)
                Button(action: {
                    for i in 0 ... 9999 {
                        self.result1 = String(i / 1000)
                        self.result2 = String((i % 1000) / 100)
                        self.result3 = String((i % 100) / 10)
                        self.result4 = String(i % 10)
                        RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
                        
                        if i == self.password {
                            self.resultText = "Password is \(i)"
                        }
                    }
                }) {
                    Text(/*@START_MENU_TOKEN@*/"Start"/*@END_MENU_TOKEN@*/)
                        .padding(.all)
                }
            }
            Button(action: {
                self.result1 = "0"
                self.result2 = "0"
                self.result3 = "0"
                self.result4 = "0"
                self.resultText = "Analyze Start"
            }) {
                Text(/*@START_MENU_TOKEN@*/"Reset"/*@END_MENU_TOKEN@*/)
                    .padding(.all)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
