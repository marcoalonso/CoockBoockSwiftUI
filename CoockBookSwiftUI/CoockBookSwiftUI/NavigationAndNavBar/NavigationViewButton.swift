//
//  NavigationViewButton.swift
//  CoockBookSwiftUI
//
//  Created by Marco Alonso Rodriguez on 18/01/23.
//

import SwiftUI

struct NavigationViewButton: View {
    @State private var isActive: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(isActive: $isActive) {
                    DetailView()
                } label: {
                    Button {
                        isActive.toggle()
                    } label: {
                        Text("Go to detail View")
                            .frame(width: 300, height: 50)
                            .foregroundColor(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            
                            .background(
                                Color.green
                            )
                            .cornerRadius(25)
                    }

                }
                
                
            }
        }
    }
}

struct NavigationViewButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewButton()
    }
}
