//
//  FirstView.swift
//  L5-Z2
//
//  Created by student on 28/03/2023.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack {
            Text("Porsche 911")
                .frame(width:230, height:40)
                .background(Color.gray)
            Text("Porsche Taycan")
                .frame(width:230, height:40)
                .background(Color.gray)
            Text("Porsche Panamera")
                .frame(width:230, height:40)
                .background(Color.gray)
        }
        .padding()
    }
}
