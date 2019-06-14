//
//  ResultView.swift
//  GachaSwiftUI
//
//  Created by 藤井陽介 on 2019/06/14.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct ResultView : View {
    let number: Int

    var body: some View {
        ZStack {
            // TODO: 回転アニメーションの書き方
            if number == 9 {
                Image("bg_gold")
                    .resizable()
                    .aspectRatio(UIImage(named: "bg_gold")!.size, contentMode: .fill)
                Image("monster010")
            } else if number > 7 {
                Image("bg_red")
                    .resizable()
                    .aspectRatio(UIImage(named: "bg_gold")!.size, contentMode: .fill)
                Image("monster006")
            } else {
                Image("bg_blue")
                    .resizable()
                    .aspectRatio(UIImage(named: "bg_gold")!.size, contentMode: .fill)
                Image("monster003")
            }
        }
    }
}

#if DEBUG
struct ResultView_Previews : PreviewProvider {
    static var previews: some View {
        ResultView(number: 0)
    }
}
#endif
