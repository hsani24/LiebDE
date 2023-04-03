//
//  intro.swift
//  LiebDE-1
//
//  Created by Sani I on 15.03.23.
//

import SwiftUI


struct intro: View {
    //var homepage: Homepage
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
            Text("Homepage")
                .foregroundColor(Color.white)
                .padding()
            ZStack{
                Image("intro")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(1.0)
                    .blur(radius: 9)
                
                ScrollView {
                    VStack {
                        Image("düsseldorf1")
                            .resizable()
                            .frame(width: 330, height: 200)
                            .cornerRadius(30)
                        Text(IntroText().titles[0])
                            .font(.headline)
                        
                        
                        Text("""
"Am Rhein den Abend ausklingen lassen, im Fußballstadion mit der Menge mitfiebern oder auf der Kö shoppen gehen. Das alles ist in Düsseldorf möglich. Schaffen Sie sich ein eigenes Bild von der Landeshauptstadt. Lassen Sie sich dabei von unseren Sehenswürdigkeiten inspirieren oder machen Sie eine der von uns vorgeschlagenen Touren."

Orte in Düsseldorf
Die Stadt bietet ihren Besucherinnen und Besuchern zahlreiche besondere Orte und Plätze. Zu den wohl populärsten gehören Altstadt, Königsallee oder Medienhafen. Doch nicht nur dort gibt es einiges zu entdecken: Die 50 Stadtteile Düsseldorfs haben alle jeweils ihren eigenen Charme und eigene Sehenswürdigkeiten. Ein Besuch abseits der typischen Touristenroute lohnt sich da alle Male.

Kultur in Düsseldorf
Nicht ohne Grund wird die Landeshauptstadt auch gerne als Kulturstadt bezeichnet. Museumsfans bekommen in der Stadt einiges geboten: Von der Kunst- bis zur Stadtgeschichte. Auch Musik spielt in Düsseldorf eine große Rolle, die Tonhalle und das Opernhaus sind nur zwei der vielen Anlaufpunkte. Für literarische Highlights sorgt das Heinrich-Heine-Institut. Und das auf Gustaf Gründgens zurückgehende Schauspielhaus bietet erstklassigen Theatergenuss. Nicht zuletzt ist die Kultur Düsseldorfs in der gesamten Stadt zu finden, ob in Kirchen und Schlössern, als Streetart im Stadtbild oder in den unzähligen Galerien.
        
Freizeit in Düsseldorf
In Sachen Freizeit kann die Landeshauptstadt mit einigen Angeboten aufwarten: So eignet sich Düsseldorf, die Gartenstadt, sehr gut, um Ausflüge ins Grüne zu machen und einfach mal abzuschalten. Lieber mehr Aktion? Der Düsseldorfer Sport bietet Fußball-, Eishockey-, Basketball- und Tischtennisspiele oder Marathon. Auch das Brauchtum sorgt von Karneval bis zur größten Kirmes am Rhein dafür, dass keine Langeweile aufkommt. In den Abendstunden laden Restaurants, Bars und Clubs zum Zeitvertreib ein. Da ist für jeden Geschmack etwas dabei. Weitere zahlreiche Events runden das Programm in Düsseldorf ab. Ein Tipp: Bei vielen Freizeitangeboten der Stadt heißt es "Eintritt frei".

Zusammen in Düsseldorf
Düsseldorf steht für Internationalität, Vielseitigkeit und Offenheit. Zusammenleben wird in der Stadt groß geschrieben. In der Landeshauptstadt wohnen Bürgerinnen und Bürger aus rund 180 Nationen. In der Stadt gibt es zahlreiche verschiedene Kulturen zu entdecken. Düsseldorf ist eine spannende Stadt für Jung und Alt. Wer mit Kindern unterwegs ist, findet hier passende Freizeittipps. Jede Besucherin und jeder Besucher soll die Stadt erkunden können: Deshalb gibt es für Touristen auch barrierefreie Angebote.
""").font(.callout).multilineTextAlignment(.leading).fixedSize(horizontal: false, vertical: true)
                        
                        
                    }
                    .frame(width: 330)
                    .foregroundColor(Color.white)
                    
                    
                }
                
                
            }
        }
    }
}
struct intro_Previews: PreviewProvider {
    static var previews: some View {
        intro()
    }
}
