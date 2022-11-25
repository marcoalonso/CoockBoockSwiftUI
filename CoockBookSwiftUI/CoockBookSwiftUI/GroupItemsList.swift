//
//  GroupItemsList.swift
//  CoockBookSwiftUI
//
//  Created by Marco Alonso Rodriguez on 25/11/22.
//

import SwiftUI

struct Post: Identifiable {
    let id = UUID()
    let title: String
    let comments: [Comment]
}

struct Comment : Identifiable {
    let id = UUID()
    let title: String
}

struct GroupItemsList: View {
    
    let posts = [Post(title: "Hola como te va?", comments: [Comment(title: "Comentario 1 de post Hola.... "), Comment(title: "Este es otro comentario"), Comment(title: "Y este es otro tambien")]),
        Post(title: "Hoy me siento algo desanimado", comments: [Comment(title: "Como crees, porque?"), Comment(title: "Si, ceunta que te pasa")]),
        Post(title: "Hoy me siento feliz descansando", comments: [Comment(title: "Que chingo me alegra!"), Comment(title: "Si, ya es beviernes...")])
    ]
    
    var body: some View {
        List {
            ForEach(posts) { post in
                Section(header: Text(post.title)) {
                    ForEach(post.comments) { comment in
                        Text(comment.title)
                    }
                }
            }
        }
    }
}

struct GroupItemsList_Previews: PreviewProvider {
    static var previews: some View {
        GroupItemsList()
    }
}
