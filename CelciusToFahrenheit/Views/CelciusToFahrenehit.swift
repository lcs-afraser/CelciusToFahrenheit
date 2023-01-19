//
//  CelciusToFahrenehit.swift
//  CelciusToFahrenheit
//
//  Created by Alistair Fraser on 2023-01-19.
//

import SwiftUI

struct CelciusToFahrenehit: View {
    //MARK: Stored Properties
    //@State is a property weapper
    //Telling SwiftUI to "watch" these properties for changes
    //Update the user interface when they change
    @State var celcius: Double = 25
    
    //MARK: Computed Properties
    var fahrenheit: Double {
        (celcius * (9/5)) + 32
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Group {
                //Width
                Text("Celcius")
                    .font(.title2)
                    .bold()
                //Use string interpolation \() to display within
                Text("\(celcius)")
                Slider(value: $celcius,
                       in: -100...100,
                       label: { Text("Celcius")},
                       minimumValueLabel: { Text("-100")},
                       maximumValueLabel: { Text("100")})
            }
            
            Group {
                //Length
                Text("Fahrenehit")
                    .font(.title2)
                    .bold()
                //Use string interpolation \() to display within
                Text("\(fahrenheit)")
                
                //Slider to control length
            }
        }
    }
}

struct CelciusToFahrenehit_Previews: PreviewProvider {
    static var previews: some View {
        CelciusToFahrenehit()
    }
}
