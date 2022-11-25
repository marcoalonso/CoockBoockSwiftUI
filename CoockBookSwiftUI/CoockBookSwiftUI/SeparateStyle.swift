//
//  SeparateStyle.swift
//  CoockBookSwiftUI
//
//  Created by Marco Alonso Rodriguez on 25/11/22.
//

import SwiftUI

struct SeparateStyle: View {
    var body: some View {
        NavigationView {
            List (1...20, id: \.self) { index in
                HStack {
                    Text("\(index)")
                    Spacer()
                }.listRowSeparator(.hidden)
            }.listStyle(.plain)
        }
    }
}

struct SeparateStyle_Previews: PreviewProvider {
    static var previews: some View {
        SeparateStyle()
    }
}
