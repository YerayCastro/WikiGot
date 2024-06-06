//
//  Lugar.swift
//  WikiGot
//
//  Created by Yeray Castro Jiménes on 7/11/22.
//

import Foundation

struct Lugar: Hashable, Identifiable{
    var id: Int
    var nombre: String
    var descripcion: String
    var historia: String
    var caracteristicas: String
    var region: String
    var gobierno: String
    var religion: String
    var imagen: String
    
}

func getLugar(id: Int) -> Lugar {
    return lugares.filter { lugar in
        return lugar.id == id
    }.first ?? Lugar(id: -1, nombre: "", descripcion: "", historia: "", caracteristicas: "", region: "", gobierno: "", religion: "", imagen: "")
}

var lugares: [Lugar] = [
    .init(id: 0, nombre: "Roca Casterly", descripcion: "Roca Casterly es el asentamiento de la Casa Lannister. La fortaleza se localiza en las Tierras del Oeste de Poniente, ante las costas del Mar del Ocaso.", historia: "Pese a que la mayor parte de la Historia de la Roca es desconocida, sabemos que durante la Edad de los Héroes, antes de la llegada de Aegon y el nacimiento de las grandes casas, pertenecía a los Casterly, señores de la Roca por aquel entonces. Un aventurero, conocido como Lann el Astuto consiguió engañar a los Casterly, y hacerse con el control de la Roca. Desde entonces, los Lannister afirman que, por línea materna, descienden de este hombre.\nLos reyes de la Roca de la Casa Lannister tomaron su título a partir de su asentamiento, y los miembros de la familia fundaron cerca de la fortaleza Lannisport. Durante la Invasión Ándala, los Lannister invitaron eventualmente a los ándalos a su reino, y trajeron a jóvenes para servir en la Roca como guardianes y rehenes potenciales. Según un pergamino perdido, los hechiceros valyrios creían que su caída vendría del oro de la Roca.\nA través de los tiempos, esta fortaleza es símbolo del poder y la riqueza de la Casa Lannister, aumentando su poder y esplendor bajo el mandato de Lord Tywin Lannister. Se dice que muy pocas personas han conseguido escapar de las laberínticas mazmorras que hay a lo largo de la montaña.", caracteristicas: "Pese a que el puerto más importante y conocido del Oeste es Lannisport, Roca Casterly cuenta con un pequeño acceso por mar. Esta tierra siempre ha tenido grandes riquezas y la mayor parte de las edificaciones y dependencias están talladas en la roca, en lo que se considera uno de los mayores logros arquitectónicos de los Siete Reinos. La fortaleza está en una zona rica en minas de oro y nunca ha caído ante un enemigo. Se cree popularmente que la fortaleza parece un león que reposa ante la puesta de sol.\nLos Casterly de la antigüedad construyeron un fuerte en el pico, y a partir de las defensas naturales que había en un principio, se han ido ampliando con la construcción de murallas, puertas, y torres de vigilancia. La base de la Roca contiene grandes cavernas talladas en el mar. La piedra ha sido minada durante miles de años, por lo que hay cientos de pozos de minas en las profundidades de Roca Casterly.\nLas dimensiones de Roca Casterly han sido comparadas con otras joyas de la arquitectura como el Muro o El Faro de Antigua. Tiene casi dos leguas de longitud de oeste a este, y contiene túneles, mazmorras, almacenes, cuarteles, salones, establos, escaleras, patios, balcones y jardines. En las entrañas de la Roca hay habitaciones donde se guardaban antiguos leones enjaulados, y celdas para los peores prisioneros. El castillo contiene también un septo. Bajo el castillo puede escucharse el sonido del mar tan fuerte como un trueno y hay celdas tan ajustadas como armaduras.\nLa Boca del León, la entrada principal a Roca Casterly, es una enorme caverna natural que alcanza los doscientos pies de altura. Sus pasos son ahora lo suficientemente amplios para veinte jinetes. Su puerto tiene muelles y astilleros.\nLa Galería Dorada contiene tesoros de los Lannister, incluyendo adornos dorados y paredes. El Salón de los Héroes es donde los Lannister y sus parientes cercanos que han muerto valientemente son enterrados. La viejas armaduras de los Lannister caídos se exhiben también en el pasillo. El Jardín de Piedra es un Bosque de Dioses con un arciano torcido.", region: "Tierras del Oeste", gobierno: "Casa Lannister, Casa Casterly(extinta)", religion: "Fe de los Siete", imagen: "Rocacasterly"),
    
    .init(id: 1, nombre: "Invernalia", descripcion: "Invernalia es la asentamiento ancestral de la Casa Stark. Es considerada la capital del Norte. Está localizada en el centro de la provincia norteña de los Siete Reinos, cerca del Camino Real que lleva a Desembarco del Rey.", historia: "Invernalia fue supuestamente construida por Brandon Stark el Constructor hace más de ocho mil años, con la ayuda de los gigantes. Los maestres consideran que fue construida en parcialmente durante diversas épocas, desde que los antiguos Stark no nivelaban el terreno y planificaban la construcción como una sola estructura. Durante la mayor parte de la historia registrada, Invernalia fue la sede de la Casa Stark, como Reyes del Norte y más tarde como guardianes, después de que el rey Torrhen Stark juró lealtad a Aegon el Conquistador y sus dragones. Durante las guerras entre los reyes del Invierno de la Casa Stark y los Reyes Rojos de la Casa Bolton, Invernalia fue arrasada por los reyes Royce II y Royce IV Bolton de Fuerte Terror, tiempo antes de la Invasión Ándala de Poniente.\nSegún la leyenda popular, Bael el Bardo entró en Invernalia bajo la apariencia de un bardo llamado Sygerrik. Bael supuestamente desapareció con la hija de Lord Brandon Stark después de engañarlo. La hija finalmente reaparecería con un bebé, un futuro Lord Stark, afirmándose que se habían escondido en la Cripta de Invernalia.\nDurante la Danza de los Dragones, el príncipe Jacaerys Velaryon visitó Invernalia y se ganó el apoyo de Lord Cregan Stark por la causa de Rhaenyra Targaryen y Los Negros.\nAl comienzo de la Rebelión de Robert, Lord Eddard Stark dejó el Nido de Águilas y cruzó las Montañas de la Luna para volver al Norte, donde convocó a sus abanderados. Su hermano menor Benjen permaneció en el castillo mientras duró la guerra como el Stark en Invernalia.\nMance Rayder acompañó una vez al Lord Comandante Qorgyle en su visita a Invernalia para ver a Lord Eddard. Los Cerwyn a menudo visitan Invernalia, porque el Castillo Cerwyn se encuentra solo a medio día de distancia. Los festines de la cosecha se han celebrado en Invernalia durante siglos.", caracteristicas: "La fortaleza es un inmenso recinto rodeado de una doble muralla de granito con un foso con agua entre ambas; la muralla exterior tiene unos veinticinco metros de altura y la interior unos treinta. Dentro de este recinto hay múltiples edificios de granito gris, construidos en distintas épocas sobre un terreno rico en fuentes termales, que permiten la existencia de invernaderos y que, canalizadas en los muros, mantienen los edificios calientes. El terreno está desnivelado, por lo cual muchos edificios quedan a distintas alturas y se unen mediante túneles y puentes cubiertos. Desde lejos, Invernalia parece un laberinto de torres, murallas y patios.\nLa construcción más antigua es el Primer Torreón, una torre redonda achatada decorada con gárgolas en su parte superior, pero son varias las edificaciones destacables:\nel Gran Torreón, donde están los aposentos del señor.\nla Torre Rota, una antigua torre de vigilancia cuyo tercio superior fue destruido por un rayo.\nla Torre de la Campana.\nla Torre de la Biblioteca, con una escalera exterior.\nla Torre del Maestre, con las pajareras en su parte superior.\nla Casa de Invitados.\nUn pequeño septo construido para Lady Catelyn Tully.\nla Sala Principal o Gran Salón, de piedra gris y con ventanas altas y estrechas; en ella se encuentra el trono de los Reyes del Norte, un enorme asiento de piedra con los brazos tallados en forma de cabezas de huargos con la boca abierta.\nA estas construcciones hay que añadir los edificios de servicios: cocinas, armería, establos, etc.", region: "El Norte", gobierno: "Casa Bolton,Casa Stark (exiliada)", religion: "Antiguos Dioses", imagen: "Invernalia"),
    
    .init(id: 2, nombre: "Roca Dragón", descripcion: "Rocadragón es la fortaleza de la Isla de Rocadragón. Fue la fortaleza ancestral de la Casa Targaryen hasta la Guerra del Usurpador, cuando el rey Robert I se la concedió a su hermano Stannis Baratheon.", historia: "Los Targaryen se instalaron en la Isla de Rocadragón huyendo de la Maldición de Valyria. La fortaleza fue construida en tiempos del Feudo Franco de Valyria con avanzadas técnicas valyrias de construcción que se perdieron con la Maldición. Algunos dicen que se construyó con fuego y magia.\nFue el asentamiento de los Targaryen hasta la conquista de los Siete Reinos por parte de Aegon I. Desde entonces sirvió como sede del heredero al Trono de Hierro, siendo éste llamado Príncipe de Rocadragón.\nEn tiempos de Aerys II Targaryen el comandante de la Guardia del Mar era un hombre llamado Tristimun, azote de los contrabandistas.\nTras la Rebelión de Robert y la caída de la dinastía Targaryen, Robert Baratheon nombró a su hermano, Stannis Baratheon Señor de Rocadragón, donde fundó la Casa Baratheon de Rocadragón.", caracteristicas: "Tal vez en preparación para su eventual cruce del Mar Angosto, el Feudo Franco de Valyria, estableció su puesto de avanzada más occidental en la isla que llegaría a ser conocida como Rocadragón unos doscientos años antes de la Maldición. Ningún rey se opuso a pesar de que los señores del mar Angosto hicieron algunos esfuerzos para resistirse; a pesar de ello la fuerza de Valyria era demasiado grande y ocuparon la isla. La fortaleza fue construida al pie del volcán Montedragón con las artes arcanas de la Antigua Valyria. Se dice que los magos de Valyria no tallaban y cincelaban como vulgares albañiles, sino que trabajaban la piedra con fuego y magia igual que haría un alfarero con la arcilla. De hecho, las edificaciones adoptan formas fantásticas de dragones acuclillados o a punto de emprender el vuelo y en lugar de almenas los muros están coronados con miles de gárgolas que representan seres fantásticos: grifos, demonios, mantícoras, minotauros, basiliscos, sabuesos infernales, dragones alados, dragones con cabeza de ave, etc. Otros dragones más pequeños enmarcan las puertas, las antorchas se sujetan con zarpas de dragón, grandes alas de piedra envuelven la herrería y la armería, las colas forman arcos, puentes y escaleras exteriores.\nEn cuanto a la estructura de la fortaleza, tiene tres murallas que delimitan tres patios: una exterior, una intermedia y otra interior, con puertas de hierro negro. En ella se encuentran varias torres, unidas entre sí por puentes de piedra elevados y galerías.\nEntre las edificaciones citadas en los libros encontramos:\nla Torre del Dragón Marino, en la muralla exterior, mirando hacia el mar. En ella están los aposentos del maestre y las pajareras. Tiene una escalera circular.\nCámara de la Mesa Pintada (Game of Thrones)\nla Torre del Tambor de Piedra, en el patio interior, cuyos muros rugen y retumban durante las tormentas. En la parte más alta está la Cámara de la Mesa Pintada, una habitación redonda con muros desnudos de piedra negra y cuatro ventanas altas, estrechas y puntiagudas, cada una en un punto cardinal. En el centro hay una inmensa mesa de madera tallada por orden de Aegon I Targaryen en los días anteriores a la conquista.\nTrono de Rocadragón by Marc Simonetti\nla Sala Principal, es un dragón tendido sobre el vientre y se entra a través de su boca abierta.la Torre del Dragón del Viento, que parece rugir desafiante.las cocinas son un dragón enroscado sobre sí mismo, el humo y el vapor de los hornos sale por las fosas nasales.\nJardín de Aegon by Franz Miklis, FFG\nA través del Arco de la Cola de Dragón se llega al Jardín de Aegon, de árboles altos y oscuros, rosales silvestres y arándanos.\nEl septo está en el lugar donde Aegon el Conquistador se arrodilló para rezar la noche antes de emprender la conquista de los Siete Reinos. Las figuras de los dioses están talladas en la madera de los mástiles de los barcos que trajeron a los Targaryen desde Valyria.\nBajo la fortaleza se encuentran las mazmorras, donde siempre hace calor debido a la influencia del volcán.", region: "Bastión de Tormentas", gobierno: "Casa Baratheon de Desembarco del Rey,Casa Baratheon de Rocadragón (exiliada),Casa Targaryen (exiliada)", religion: "Dioses de Valyria (anteriormente),Fe de los Siete (anteriormente),R'hllor", imagen: "Rocadragon"),
    
        .init(id: 3, nombre: "Desmbarco del Rey", descripcion: "Desembarco del Rey es la ciudad capital de los Siete Reinos, localizada en la costa este de Poniente, en la bahía del Aguasnegras. Es la sede del Trono de Hierro en la Fortaleza Roja y por tanto el asentamiento del Rey de los Siete Reinos. La ciudad principal está rodeada de una muralla y es custodiada por la Guardia de la Ciudad, también conocidos como los Capas Doradas. Está extremadamente poblada, por lo que es una ciudad sucia y llena de edificaciones de madera y paja. Es el principal puerto de los Siete Reinos, cuyo rival sólo es Antigua.", historia: "Los alrededores de Desembarco del Rey solían ser tierra en disputa entre los reyes del Dominio, las Tierras de los Ríos y las Tierras de la Tormenta. Su paisaje consistía esencialmente en bosques y colinas donde vivía un puñado de pescadores asentados en la desembocadura del Aguasnegras. Esta era la situación imperante hasta que, hace 300 años, Aegon el Conquistador desembarcó en ese mismo punto, e inició la construcción de su primera fortaleza, de madera y barro, en la cima de la colina más alta. Más tarde, cuando Aegon terminó su conquista, decidió construir su capital en los alrededores de dicha fortaleza, ya que era un lugar estratégicamente importante y una región que no pertenecía ningún reino en concreto, tomando como sus propios vasallos a los señores próximos, creando así las Tierras de la Corona.\nCon el tiempo, más reyes de la Casa Targaryen continuaron expandiendo la ciudad. La construcción de la Fortaleza Roja, iniciada por Aegon, se terminó bajo el reinado de su hijo Maegor, en la cima de la Colina Alta de Aegon. El Gran Septo de Baelor se construyó en lo alto de la Colina de Visenya como sede para la Fe de los Siete, después de que los Targaryen renunciaran a los dioses de Valyria. Por otro lado, Pozo Dragón se levantó en la Colina de Rhaenys para albergar a los fieros dragones de los Targaryen", caracteristicas: "La ciudad tiene aproximadamente forma rectangular y está defendida por altas murallas. Se accede por siete puertas y dentro de ella hay mansiones, tabernas, casuchas de barro y paja, burdeles, cementerios y mercados, como el del pescado. Las principales avenidas tienen árboles y son anchas pero sus ramificaciones, son callejuelas y callejones, estrechos e insalubres.\nLa ciudad se encuentra en la ribera norte del Aguasnegras, y se asienta sobre tres colinas, que llevan el nombre de Aegon, Rhaenys y Visenya. La Colina Alta de Aegon está coronada por la Fortaleza Roja, que sirve de residencia para el Rey de los Siete Reinos, que da directamente a la bahía. En la Colina de Visenya se encuentra el Gran Septo de Baelor, sede de la Fe de los Siete, mientras que en la Colina de Rhaenys está el Pozo Dragón, que se encuentra en ruinas y cerrado desde que muriera el último de los dragones.\nLos pobres residen en suburbios como el Lecho de Pulgas, un laberinto de calles y callejones estrechos, donde residen los más desfavorecidos y los mendigos, que se alimentan con frecuencia de los guisos de los tenderetes de los calderos, que bien pueden llevar carne de rata o víctimas de asesinato. Por otra parte, los más ricos residen en el otro lado de la colina de Rhaenys. Al parecer una de las áreas más ricas de Desembarco del Rey es la zona de los alrededores de la Puerta Vieja.", region: "Tierras de la Corona", gobierno: "Rey de los Siete Reinos", religion: "Fe de los Siete", imagen: "DesembarcoDelRey")
]