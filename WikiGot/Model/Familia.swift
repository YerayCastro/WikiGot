//
//  Familia.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 6/11/22.
//

import Foundation

struct Familia: Hashable, Identifiable {
    var id: Int
    var nombre: String
    var descripcion: String
    var historia: String
    var apariencia: String
    var origen: String
    var lema: String
    var senor: [Int]
    var region: [Int]
    var blason: [Int]
    var titulos: [Int]
    var imagen: String
    
}

func getFamilia(id: Int) -> Familia {
    return familias.filter { familia in
        return familia.id == id
    }.first ?? Familia(id: -1, nombre: "", descripcion: "", historia: "", apariencia: "", origen: "", lema: "", senor: [], region: [], blason: [], titulos: [], imagen: "")
}


var familias: [Familia] = [
    .init(id: 0, nombre: "Lannister", descripcion: "La Casa Lannister de Roca Casterly es la principal casa noble de las Tierras del Oeste. Su asentamiento es Roca Casterly. Su emblema es un león rampante de oro sobre campo de gules. Su lema es ¡Oye mi Rugido!, aunque su lema no oficial, Un Lannister siempre paga sus deudas, es más conocido.", historia: "Los Lannister tienen la reputación de gente físicamente atractiva, siendo varios de sus miembros de cabello rubio dorado, y ojos verde esmeralda. Son conocidos también por vestir capas carmesí, y a su guardia se les conoce como las capas rojas.\nLos Lannister descienden de los guerreros Ándalos que conquistaron Poniente, si bien alegan descender por línea femenina de Lann el Astuto, el legendario embaucador de la Edad de los Héroes que arrebató Roca Casterly a los Casterly sólo con su astucia.\nAsentados en un territorio rico en minas de oro, constituyen una de las casas más poderosas de Poniente y la más rica, gobernando como Reyes de la Roca hasta la época de la Guerra de la Conquista. Durante la Invasión Ándala, la Casa Lannister combatió inicialmente a los señores de la guerra ándalos que se aventuraron en las Tierras del Oeste, pero posteriormente optaronp por la política de arreglar acuerdos matrimoniales entre ellos y las hijas de las casas nobles de los Primeros Hombres. Con el tiempo, los reyes Lannister también casaron a sus hijos con ándalos, y cuando el rey Gerold III Lannister murió sin descendencia masculina, un consejo coronó el marido ándalo de su hija, Ser Joffrey Lydden, que tomó apellido Lannister. Así los Lannister se convirtieron en una casa noble ándala.\nLa riqueza de la Casa Lannister solo es comparable a la de la Casa Hightower. La Casa Lannister poseía una gran espada ancestral de acero valyrio llamada Rugido; pero se perdió cuando el rey Tommen II Lannister fue en su búsqueda hacia Valyria, para no regresar. Los Lannister han estado buscando un reemplazo desde entonces, aunque no han dejado de buscar su propia espada ancestral perdida desde hace tanto tiempo.", apariencia: "Los Lannister tienen la reputación de gente físicamente atractiva, siendo varios de sus miembros de cabello rubio dorado, y ojos verde esmeralda. Son conocidos también por vestir capas carmesí, y a su guardia se les conoce como las capas rojas.\nLos Lannister descienden de los guerreros Ándalos que conquistaron Poniente, si bien alegan descender por línea femenina de Lann el Astuto, el legendario embaucador de la Edad de los Héroes que arrebató Roca Casterly a los Casterly sólo con su astucia.\nAsentados en un territorio rico en minas de oro, constituyen una de las casas más poderosas de Poniente y la más rica, gobernando como Reyes de la Roca hasta la época de la Guerra de la Conquista. Durante la Invasión Ándala, la Casa Lannister combatió inicialmente a los señores de la guerra ándalos que se aventuraron en las Tierras del Oeste, pero posteriormente optaronp por la política de arreglar acuerdos matrimoniales entre ellos y las hijas de las casas nobles de los Primeros Hombres. Con el tiempo, los reyes Lannister también casaron a sus hijos con ándalos, y cuando el rey Gerold III Lannister murió sin descendencia masculina, un consejo coronó el marido ándalo de su hija, Ser Joffrey Lydden, que tomó apellido Lannister. Así los Lannister se convirtieron en una casa noble ándala.\nLa riqueza de la Casa Lannister solo es comparable a la de la Casa Hightower. La Casa Lannister poseía una gran espada ancestral de acero valyrio llamada Rugido; pero se perdió cuando el rey Tommen II Lannister fue en su búsqueda hacia Valyria, para no regresar. Los Lannister han estado buscando un reemplazo desde entonces, aunque no han dejado de buscar su propia espada ancestral perdida desde hace tanto tiempo.", origen: "Roca Casterly", lema: "Oye mi Rugido!", senor: [1], region: [0], blason: [0], titulos: [9,10,11,12], imagen: "LogoLannister"),
    
        .init(id: 1, nombre: "Stark", descripcion: "La Casa Stark de Invernalia es una casa noble del Norte. Su asentamiento es Invernalia. Durante siglos, fue la casa principal del Norte y su linaje se extiende hasta los Primeros Hombres, gobernando el Norte como reyes por derecho propio. Su emblema es un lobo huargo de cenizo corriendo sobre campo de plata.Su lema es Se acerca el Invierno.Su mandoble ancestral de acero valyrio se llamaba Hielo.", historia: "Los Stark son una casa de muy antiguo linaje, descendientes de los Primeros Hombres.Tras la construcción de Invernalia por Brandon el Constructor, este se ofreció a ayudar a la recién creada Guardia de la Noche para la edificación del gran Muro, la mayor estructura defensiva de todo Poniente, para separar a los pueblos salvajes o libres, del resto de los Siete Reinos. Tras repeler a los salvajes, Brandon decide establecer un nuevo linaje en el Norte y funda la familia Stark.\nSe dice que el Rey de la Noche, el Lord Comandante de la Guardia de la Noche nº13, fue un Stark, uno de entre sus muchos orígenes posibles. Los Stark ayudaron a repeler varias invasiones importantes de los salvajes, como cuando ellos y sus vasallos los Umber, derrotaron a los reyes-más-allá-del-Muro Gendel y Gorne, así como a Bael el Bardo.\nDurante varios milenios, los Stark no fueron los reyes indiscutibles en el Norte, derrotando varios reyes rivales, pero sus antagonistas principales, los Bolton de Fuerte Terror, juraron lealtad hace unos mil años, poniendo fin a sus costumbres de desollamiento. Mientras tanto, el rey Jon Stark expulsó a piratas del Cuchillo Blanco, y la Guarida del Lobo fue construida en su desembocadura. Esta fortaleza se concedió a menudo a los hijos y nietos del Rey en el Norte; su rama cadete, los Greystark, se extinguieron después de aliarse con los Bolton contra los Stark. La Guarida del Lobo fue finalmente concedida a los Manderly. El hijo del rey Jon, Rickard, derrotó al Rey del Pantano y se casó con su hija. La Casa Karstark fue fundada cuando Karlon Stark, hermano del rey reinante, ayudó a aplastar a un señor rebelde y se le concedieron tierras por su servicio. Por último, a los Mormont se les concedió la Isla del Oso, cuando el rey Rodrik Stark se la ganó a los hombres del Hierro en un combate de lucha libre. Los Stark lucharon contra los Arryn del Valle tras la Violación de las Tres Hermanas en la guerra al otro lado del agua, finalmente cediendo el control de dichas islas tras años de conflicto.\nLos Stark fueron, hasta la llegada de Aegon el Conquistador, los Reyes en el Norte. El Norte siempre tuvo fama de región dura y hostil ante cualquier enemigo. Antes incluso de la llegada de Aegon el Conquistador, cuando los reyes Ándalos llegaron a Poniente imponiendo su cultura, jamás pudieron tomar el Norte, gracias a la testaruda defensa de los norteños y a que el acceso por tierra en el Cuello estaba muy bien defendido por diversas antiguas fortificaciones, naturales y artificiales. Ejércitos enteros, mucho mayores que el de los Reyes en el Norte, fueron aniquilados ante estas torres y murallas.\nLos Stark siempre han tenido una tradición de gran cooperación y ayuda al Muro, y muchos grandes oficiales de la Guardia han sido Starks. De hecho, según varias leyendas, alertados por las actividades de los salvajes, los Starks han convocado a sus banderizos para ir a luchar contra la amenaza. También hay rumores de que en algún momento, un Stark de Invernalia tomó a una mujer del pueblo salvaje. Cuenta esta leyenda, que el muchacho fruto de esta unión finalmente fue nombrado señor de Invernalia y del Norte, pero su padre se quedó con los salvajes. Cuando su padre descendió al sur del Muro, al frente de un ejército de salvajes, el joven Lord Stark fue a su encuentro. Durante el fragor de la batalla, padre e hijo se encuentran finalmente, muriendo el primero a manos de su propio hijo, sin que este supiera jamás la verdad sobre su padre.", apariencia: "Buena parte de miembros de la Casa Stark son descritos con caras alargadas, de constitución física delgada, con el cabello castaño oscuro y los ojos grises.Algunos de sus miembros son conocidos por su melancolía y frialdad, mientras que otros tienen un carácter asalvajado, a veces denominado de la sangre de lobo.\nEn la actual generación de miembros de la Casa Stark, varios de sus miembros poseen la habilidad de entrar en la piel de sus lobos huargo, dándoles la capacidad como wargs de experimentar los sentimientos de estos animales, y de ver a través de su ojos. Esto suele ocurrir con mayor frecuencia a la hora de dormir y de forma inconsciente, aunque también son capaces de hacerlo voluntariamente cuando están despiertos también, a voluntad, una vez que son más practicados.", origen: "Invernalia", lema: "Se acerca el Invierno.", senor: [6], region: [1], blason: [1], titulos: [5,6,7,8], imagen: "LogoStark"),
    
        .init(id: 2, nombre: "Baratheon", descripcion: "La Casa Baratheon de Bastión de Tormentas es una casa noble de las Tierras de la Tormenta. Su asentamiento es Bastión de Tormentas, que fue residencia de la Casa Durrandon, los antiguos Reyes de la Tormenta. Su emblema es un venado coronado de sable sobre campo de oro.Su lema es Nuestra es la Furia.", historia: "El origen de la casa se remonta a la Guerra de la Conquista, cuando Aegon el Conquistador llegó desde Rocadragón para hacerse con todo Poniente. Cedió Bastión de Tormentas a Orys Baratheon, quien supuestamente había asesinado al último Rey Tormenta, Argilac el Arrogante, como muestra de agradecimiento. Aunque se dice que Orys en realidad era un hermano bastardo del rey Aegon I, lo cierto es que los Baratheon se ganaron un puesto de mucha relevancia en las cortes Targaryen como hábiles consejeros y carismáticos comandantes. Por línea materna, los Baratheon descienden de los Reyes Tormenta, al haberse casado Orys con la hija de Argilac, Argella Durrandon. Orys adoptó el emblema y el lema de la casa ancestral de su esposa.\nEl apoyo de los Baratheon a los Targaryen fue inicialmente notable. Ser Raymont llegó a ser hermano juramentado de la Guardia Real, salvando la vida del rey Aenys I Targaryen durante la Rebelión de la Fe Militante.\nDurante el reinado de Maegor I Targaryen, y según los rumores escuchados por la Consejera de los Rumores, la reina Tyanna de Pentos, los Baratheon estuvieron en contacto con la reina viuda Alyssa Velaryon para dar apoyo al príncipe Aegon Targaryen en su causa contra su tío Maegor. Pero antes de apoyarlo el príncipe debía de ganar alguna batalla, pero en la primera que combatió, murió. Finalmente, la Casa Baratheon se opuso abiertamente al rey Maegor cuando su sobrino, Jaehaerys, fue coronado por Lord Rogar Baratheon como Rey de los Siete Reinos en Bastión de Tormentas.\nDurante la Danza de los Dragones, Lord Borros Baratheon apoyó a Aegon II Targaryen y a los Verdes a pesar de que su difunto padre, Lord Boremund, había apoyado al bando de los Negros, teniendo buena relación con Rhaenys Targaryen, que era hija de Jocelyn Baratheon.Se sabe además que una de las hijas de Lord Borros estuvo comprometida a Aemond Un-Ojo.\nDurante la Rebelión Fuegoscuro, los Baratheon se mantuvieron leales a la Dinastía Targaryen, proveyendo de muchas de las fuerzas lideradas por el príncipe Baelor Targaryen en la decisiva Batalla del Prado Hierbarroja. La princesa Rhaelle Targaryen, hija de Aegon V, se casó con Ormund Baratheon y fue la madre de Lord Steffon Baratheon.\nEl destino de la Casa Baratheon cambió cuando el príncipe Rhaegar Targaryen, heredero del Trono de Hierro, secuestró a Lyanna Stark, prometida de Robert Baratheon, Señor de Bastión de Tormentas. Éste lideró una rebelión contra los Targaryen conocida como la Guerra del Usurpador, con el decisivo apoyo de las Casas Arryn, Stark y Tully. Tras un año de guerra, mató al príncipe Rhaegar en la Batalla del Tridente y se dirigió a Desembarco del Rey, ya tomada por Lord Tywin Lannister. Robert Baratheon se proclamó Señor de los Siete Reinos, instalándose en Desembarco del Rey. Nombró a su hermano Stannis como Señor de Rocadragón, el hogar ancestral de los Targaryen, y a su hermano Renly como Señor de Bastión de Tormentas. Para afianzar el apoyo de la Casa Lannister, el rey Robert se casó con Cersei Lannister. Poco después que Renly alcanzó la mayoría de edad, Robert lo incluyó en su Consejo Privado y le dio el título de Consejero de Edictos.", apariencia: "El apoyo de los Baratheon a los Targaryen fue inicialmente notable. Ser Raymont llegó a ser hermano juramentado de la Guardia Real, salvando la vida del rey Aenys I Targaryen durante la Rebelión de la Fe Militante.\nDurante el reinado de Maegor I Targaryen, y según los rumores escuchados por la Consejera de los Rumores, la reina Tyanna de Pentos, los Baratheon estuvieron en contacto con la reina viuda Alyssa Velaryon para dar apoyo al príncipe Aegon Targaryen en su causa contra su tío Maegor. Pero antes de apoyarlo el príncipe debía de ganar alguna batalla, pero en la primera que combatió, murió. Finalmente, la Casa Baratheon se opuso abiertamente al rey Maegor cuando su sobrino, Jaehaerys, fue coronado por Lord Rogar Baratheon como Rey de los Siete Reinos en Bastión de Tormentas.\nDurante la Danza de los Dragones, Lord Borros Baratheon apoyó a Aegon II Targaryen y a los Verdes a pesar de que su difunto padre, Lord Boremund, había apoyado al bando de los Negros, teniendo buena relación con Rhaenys Targaryen, que era hija de Jocelyn Baratheon.Se sabe además que una de las hijas de Lord Borros estuvo comprometida a Aemond Un-Ojo.\nDurante la Rebelión Fuegoscuro, los Baratheon se mantuvieron leales a la Dinastía Targaryen, proveyendo de muchas de las fuerzas lideradas por el príncipe Baelor Targaryen en la decisiva Batalla del Prado Hierbarroja. La princesa Rhaelle Targaryen, hija de Aegon V, se casó con Ormund Baratheon y fue la madre de Lord Steffon Baratheon.\nEl destino de la Casa Baratheon cambió cuando el príncipe Rhaegar Targaryen, heredero del Trono de Hierro, secuestró a Lyanna Stark, prometida de Robert Baratheon, Señor de Bastión de Tormentas. Éste lideró una rebelión contra los Targaryen conocida como la Guerra del Usurpador, con el decisivo apoyo de las Casas Arryn, Stark y Tully. Tras un año de guerra, mató al príncipe Rhaegar en la Batalla del Tridente y se dirigió a Desembarco del Rey, ya tomada por Lord Tywin Lannister. Robert Baratheon se proclamó Señor de los Siete Reinos, instalándose en Desembarco del Rey. Nombró a su hermano Stannis como Señor de Rocadragón, el hogar ancestral de los Targaryen, y a su hermano Renly como Señor de Bastión de Tormentas. Para afianzar el apoyo de la Casa Lannister, el rey Robert se casó con Cersei Lannister. Poco después que Renly alcanzó la mayoría de edad, Robert lo incluyó en su Consejo Privado y le dio el título de Consejero de Edictos", origen: "Bastión de Tormentas", lema: "Nuestra es la Furia.", senor: [8], region: [2], blason: [2], titulos: [3,4], imagen: "LogoBaratheon"),
    
        .init(id: 3, nombre: "Targaryen", descripcion: "La Casa Targaryen es una casa noble de ascendencia Valyria que reinó durante casi trescientos años los Siete Reinos de Poniente. Sus asentamientos eran la capital del reino Desembarco del Rey, la isla de Rocadragón y el castillo de Refugio Estival. Su emblema es un dragón de tres cabezas de gules en campo sable, representando a Aegon I y sus hermanas Rhaenys y Visenya.Su lema es Fuego y Sangre y sus espadas ancestrales de acero valyrio, ambas en actual paradero desconocido, son Fuegoscuro y Hermana Oscura.\nTras escapar de la Maldición de Valyria, sus miembros vivieron durante siglos en la isla de Rocadragón hasta que Aegon Targaryen y sus hermanas esposas Visenya y Rhaenys montaron sus dragones y conquistaron seis de los Siete Reinos. Gobernaron gran parte de Poniente como Reyes de los Siete Reinos durante casi trescientos años hasta la Rebelión de Robert, en la cual el último rey Targaryen, Aerys II, fue derrocado.", historia: "La Casa Targaryen era una de las cuarenta casas nobles antiguas conocidas como los señores dragón, quienes gobernaron el Feudo Franco de Valyria, un gran imperio que abarcaba buena parte de Essos. Sin embargo, los Targaryen eran considerados como una de las casas menores. La Maldición de Valyria ocurrió unos doce años después de que Aenar Targaryen y su familia marcharan a Rocadragón junto a sus cinco dragones abandonando Valyria debido a que su hija, Daenys la Soñadora, predijo la Maldición y convenció a su padre para abandonar su tierra. En Valyria, fue visto como una señal de debilidad.\nDurante los siguientes cien años, conocidos como Siglo Sangriento, mantuvieron su asentamiento en Rocadragón, creando en la isla una impresionante fortaleza. Durante ese tiempo cuatro de los dragones murieron, quedando vivo sólo Balerion. No obstante, dos huevos eclosionaron, de los que nacerían Vhagar y Meraxes.", apariencia: "Los Targaryen son descendientes de una de las familias nobles del Feudo Franco de Valyria que escaparon de la Maldición de Valyria y se establecieron en la isla de Rocadragón. De Valyria mantienen una extraña belleza; la expresión Sangre del Dragón se refiere a un conjunto de típicos rasgos de la antigua Valyria: pelo de color rubio platino o plateado y ojos violetas, lilas o índigo.\nAlgunos miembros de la Casa Targaryen también tienen una alta resistencia al calor, aunque esto no les hace inmunes al fuego.Otro rasgo típico de los Targaryen es la capacidad de tener premoniciones a través de los sueños. Algunos de sus miembros han sido propensos a la locura, presumiblemente causada por su endogamia. Según el rey Jaehaerys II: Locura y grandeza son dos caras de la misma moneda y cada vez que un Targaryen nace, los dioses lanzan la moneda al aire y el mundo aguanta la respiración para ver de qué lado caerá.\nAsí como los colores de su emblema, la mayoría de los Targaryens utilizaron el negro para el color de sus armaduras.\nAunque los reyes Targaryen tomaron su asentamiento en Desembarco del Rey, el lugar donde Aegon I y su ejército aterrizaron por primera vez en los Siete Reinos, su asiento anterior de Rocadragón permanecía en su posesión también. Ese último se convirtió en el asentamiento tradicional del Príncipe de Rocadragón. Los Targaryen finalmente erigieron un tercer asentamiento, Refugio Estival, que era concedido a algunos de los hijos más jóvenes de la Casa Targaryen, quienes portaban el título de Príncipe de Refugio Estival.\nLa Casa Targaryen veneraba a los dioses de Valyria. Algún tiempo antes de la Conquista de Aegon I, los Targaryen abandonaron los dioses valyrios y se convirtieron a la Fe de los Siete, la religión predominante en Poniente. Sin embargo, siguieron la práctica valyria del matrimonio incestuoso, casándose entre hermanos, primos-hermanos, tíos y sobrinos, para conservar la pureza de sangre.\nComo una de las familias de los señores dragón de Valyria, los Targaryen estaban más cerca de los dragones que otros hombres. Fueron traídos a Poniente y utilizados en batalla posteriormente en las guerras que vinieron. En algún momento, se convirtió en tradición regalar a un Targaryen recién nacido un huevo de dragón. Esta práctica continuó incluso después de la muerte del último dragón.\nLos Targaryen difuntos son tradicionalmente incinerados.", origen: "Valyria", lema: "Fuego y Sangre", senor: [11], region: [3], blason: [3], titulos: [0,1,2], imagen: "LogoTargaryen")
]


