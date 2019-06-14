//
//  ContentView.swift
//  CountSwiftUI
//
//  Created by 藤井陽介 on 2019/06/14.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var number: Int = 0

    var body: some View {
        VStack {
            Text(String(number))
            VStack {
                HStack {
                    Button(action: {
                        self.number += 1
                    }) {
                        Text("＋")
                    }
                    Button(action: {
                        self.number -= 1
                    }) {
                        Text("−")
                    }
                }
                HStack {
                    Button(action: {
                        self.number *= 2
                    }) {
                        Text("×")
                    }
                    Button(action: {
                        self.number /= 2
                    }) {
                        Text("÷")
                    }
                }
                Button(action: {
                    self.number = 0
                }) {
                    Text("clear")
                }
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
