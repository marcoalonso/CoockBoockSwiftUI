//
//  DetailView.swift
//  CoockBookSwiftUI
//
//  Created by Marco Alonso Rodriguez on 18/01/23.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack {
            Text("Detail View")
                .font(.largeTitle)
                .foregroundColor(.blue)
            Image(systemName: "house")
                .frame(width: 100, height: 100)
            Spacer()
        }
            
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
