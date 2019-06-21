//
//  ContentView.swift
//  ClassSwiftUI
//
//  Created by 藤井陽介 on 2019/06/21.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var index: Int = 0
    
    var guitars: [Guitar] = [
        .init(name: "ストラトキャスター", imageName: "strat", type: "A"),
        .init(name: "テレキャスター", imageName: "telecast", type: "B"),
        .init(name: "レスポール", imageName: "respo", type: "C")
    ]
    
    var body: some View {
        VStack {
            Image(guitars[index].imageName)
            HStack {
                Button(action: {
                    self.index -= 1
                    if self.index < 0 {
                        self.index = self.guitars.count - 1
                    }
                }) {
                    Text("<<<")
                }
                Button(action: {
                    self.index += 1
                    if self.index >= self.guitars.count {
                        self.index = 0
                    }
                }) {
                    Text(">>>")
                }
            }
            Text(guitars[index].name)
            Text(guitars[index].type)
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
