//
//  ContentView.swift
//  GachaSwiftUI
//
//  Created by 藤井陽介 on 2019/06/14.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var showModal: Bool = false

    var body: some View {
        ZStack(alignment: .center) {
            // もっとAspect Fitを簡単に書けないかな？
            Image("gacha")
                .resizable()
                .aspectRatio(UIImage(named: "gacha")!.size, contentMode: .fit)
            // PresentationButtonがバグっているので一旦
            //            PresentationButton(Text("まわす"), destination: ResultView(number: Int.random(in: 0..<10)))
            Button(action: {
                self.showModal = true
            }) {
                Text("まわす")
            }.offset(x: 0, y: 90)
            }.presentation(showModal ? Modal(ResultView(number: Int.random(in: 0..<10)), onDismiss: {self.showModal = false}) : nil)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
