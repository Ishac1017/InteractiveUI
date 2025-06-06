//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 6/4/25.
//

import SwiftUI

struct ContentView: View {
    //@state tells that this variable updates
    @State private var name = ""
    @State private var textTitle = "What is your name?" //this will change when name is entered, but want to show this text first
    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            VStack {
                Text(textTitle)
                    .font(.title)
                    .background(.yellow)
                TextField("Type your name here...", text: $name)
                //$name changes the var. name has to be @state
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.gray, width: 1)
                    .background(.green)
                Button("Submit Name"){
                    print(name)
                    textTitle = "Welcome, \(name)!"
                }
                //end button
                .font(.title)
                .buttonStyle(.borderedProminent)
                .tint(.pink)
            }
            //end vstack
            .padding()
            .background(.blue)
        }
        //end zstack
        

    }
    //end body
}
//end content

#Preview {
    ContentView()
}
