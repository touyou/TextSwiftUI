//
//  ContentView.swift
//  StopWatchSwiftUI
//
//  Created by 藤井陽介 on 2019/06/19.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var timerCount = 0.0
    @State var resultString = ""
    @State var timer: Timer!
    
    var body: some View {
        VStack {
            Text(resultString)
            Text(String(timerCount))
            Button(action: {
                self.timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                    
                    self.timerCount += 0.1
                }
                self.timer.fire()
                
            }) {
                Text("Start")
            }
            Button(action: {
                if self.timer.isValid {
                    self.timer.invalidate()
                    self.judgeValue()
                }
            }) {
                Text("Stop")
            }
            Button(action: {
                if self.timer.isValid {
                    self.timer.invalidate()
                }
                self.resultString = ""
                self.timerCount = 0.0
            }) {
                Text("Reset")
            }
        }
    }
    
    func judgeValue() {
        if timerCount >= 10 - 0.2 && timerCount <= 10 + 0.2 {
            resultString = "PERFECT"
        } else if timerCount >= 10 - 0.3 && timerCount <= 10 + 0.3 {
            resultString = "GREAT"
        } else if timerCount >= 10 - 0.5 && timerCount <= 10 + 0.5 {
            resultString = "GOOD"
        } else {
            resultString = "BAD"
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
