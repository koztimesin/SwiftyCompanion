//
//  TemplateTableRow.swift
//  Swifty-Companion
//
//  Created by koztimesin on 31/01/2021.
//

import SwiftUI

struct TemplateTableRow: View {
    
    var data : UserData
    
    var body: some View {
        ZStack{
            Color("Background").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HStack{
                Text(data.name)
                    .font(.headline).multilineTextAlignment(.leading)
                
                Spacer()
                
                getGrade(data: data)
            }.padding()
        }
        
    }
    
    func getGrade(data: UserData) -> Text {
        if data.validated == true {
            return Text("\(data.grade.intValue)").foregroundColor(.green)
        }else if data.state == "finished" {
            return Text("Failed").foregroundColor(.red)
        }else if data.state == "skill" {
            return Text("\(data.grade.floatValue)")
        }
        return Text(data.state)
    }
    
}

struct TemplateTableRow_Previews: PreviewProvider {
    static var previews: some View {
        TemplateTableRow(data: UserData()).preferredColorScheme(.dark).previewLayout(.fixed(width: 300, height: 70))
    }
}
