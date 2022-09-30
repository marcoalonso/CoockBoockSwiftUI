//
//  Lists.swift
//  CoockBookSwiftUI
//
//  Created by marco rodriguez on 29/09/22.
//

import SwiftUI

struct Person {
    let id = UUID()
    let name: String
}

struct Animals: Identifiable {
    let id = UUID()
    let name: String
}

struct Lists: View {
    
    let people = [Person(name: "Marco"), Person(name: "Santiago"), Person(name: "Alonso")]
    
    let zoo = [Animals(name: "Dog 🐶"), Animals(name: "Cat 🐱"), Animals(name: "Lyon 🦁"), Animals(name: "Cow 🐮"), Animals(name: "Monkey 🐵 "), Animals(name: "Cow 🐮"), Animals(name: "Cow 🐮"), Animals(name: "crow 🐸 "), Animals(name: "pinguin 🐧 ")]
    
    var body: some View {
        
        /*
         // MARK: - Simple list
         List(1...50, id: \.self) { index in
            Text("Item \(index)")
        }
         
        // MARK: -  List with id
        List(people, id: \.id) { person in
            Text(person.name)
        }
        */
        
        List(zoo) { animal in
            Text(animal.name)
        }
        
    }
    
    struct Lists_Previews: PreviewProvider {
        static var previews: some View {
            Lists()
        }
    }
}
