//
//  ContentView.swift
//  Counter'
//
//  Created by Fatima Shaheen on 21/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage ("Counter") var counter = 10
    @AppStorage ("remaining") var cupcakesRemaining = 15
    @AppStorage ("message")private var message = ""
    
    var body: some View {
        VStack {
            Text("\(counter) Cupcakes eaten")
            Text("\(cupcakesRemaining - counter)Cookies remaining")
            Button{
                print("You tapped me")
                counter += 1
                
                if counter >= 50{
                    message = "Stop eating too many cupcakes😡"
                }; if counter >= 40{
                    message = "Oh nooooooooooooooooo 😭"
                }; if counter >= 30 {
                    message = "What are you doing???? 😫"
                }; if counter >= 20{
                    message = "Don't eat too many Cupcakes 😟"
                }
                
            } label: {
                Text("OM NOM777777 NOM")
                /*
                 .buttonStyle(.borderedProminent)
                 .tint(.cyan)
                 */
                    .padding()
                    .background(.yellow)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.3), radius: 10)
            }
            .padding(1.0)
            .shadow(radius: 6)
            Button{
                cupcakesRemaining = cupcakesRemaining + 1
            } label : {
                Text("Buy a cupcake ")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.3), radius: 10)
            }
            Button{
                counter = 0
                message = ""
                cupcakesRemaining = 10
            } label: {
                Text("Reset9")
                /*
                 .buttonStyle(.borderedProminent)
                 .tint(.cyan)
                 */
                    .padding()
                    .background(.pink)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.3), radius: 10)
            }
            .blur(radius: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            .shadow(radius: /*@START_MENU_TOKEN@*/7/*@END_MENU_TOKEN@*/)
            
            Text(message)
                .padding()
                .foregroundColor(.red)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
