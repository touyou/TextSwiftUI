//
//  ContentView.swift
//  ArraySwiftUI
//
//  Created by 藤井陽介 on 2019/06/14.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var index: Int = 0
    @State var whenText: String = "---"
    @State var whereText: String = "---"
    @State var whoText: String = "---"
    @State var whatText: String = "---"

    let whenArray: [String] = ["一年前", "一週間前", "昨日", "今日"]
    let whereArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで"]
    let whoArray: [String] = ["僕が", "大統領が", "先生が", "友達が"]
    let whatArray: [String] = ["叫んだ", "演説した", "怒った", "踊った"]

    var body: some View {
        VStack(spacing: 10) {
            HStack(spacing: 10) {
                Text("いつ")
                Text(whenText)
            }
            HStack(spacing: 10) {
                Text("どこで")
                Text(whereText)
            }
            HStack(spacing: 10) {
                Text("だれが")
                Text(whoText)
            }
            HStack(spacing: 10) {
                Text("どうした")
                Text(whatText)
            }
            HStack(spacing: 10) {
                Button(action: {
                    self.index += 1
                    if self.index >= self.whenArray.count {
                        self.index = 0
                    }

                    self.whenText = self.whenArray[self.index]
                    self.whereText = self.whereArray[self.index]
                    self.whoText = self.whoArray[self.index]
                    self.whatText = self.whatArray[self.index]
                }) {
                    Text("入れ替える")
                }
                Button(action: {
                    self.whenText = self.whenArray[Int.random(in: 0 ..< 4)]
                    self.whereText = self.whereArray[Int.random(in: 0 ..< 4)]
                    self.whoText = self.whoArray[Int.random(in: 0 ..< 4)]
                    self.whatText = self.whatArray[Int.random(in: 0 ..< 4)]
                }) {
                    Text("ランダム")
                }
            }
            Button(action: {
                self.index = 0
                self.whenText = "---"
                self.whereText = "---"
                self.whoText = "---"
                self.whatText = "---"
            }) {
                Text("リセット")
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
