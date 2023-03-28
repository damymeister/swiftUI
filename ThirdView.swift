//
//  ThirdView.swift
//  L5-Z2
//
//  Created by student on 28/03/2023.
//

import SwiftUI
struct ThirdView: View {
    var body: some View {
        VStack {
            Text("Ferrari Enzo")
                .frame(width:230, height:40)
                .background(Color.red)
            Text("Ferrari Testarossa")
                .frame(width:230, height:40)
                .background(Color.red)
            Text("Ferrari Berlinetta")
                .frame(width:230, height:40)
                .background(Color.red)
        }
        .padding()
    }
}
