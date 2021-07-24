puts "cleaning database..."
Video.destroy_all
Subject.destroy_all
puts "database is clean"
puts 'creating subjects'

mathematik = Subject.create(
  name: "Mathematik"
)

deutsch = Subject.create(
  name: "Deutsch"
)

chemie = Subject.create(
  name: "Chemie"
)

biologie = Subject.create(
  name: "Biologie"
)

geschichte = Subject.create(
  name: "Geschichte"
)

puts 'creating videos'

satz_des_pythagoras = Video.create(
  title: "Satz des Pythagoras",
  subject: mathematik
)

rechter_winkel = Video.create(
  title: "Der Rechte Winkel",
  subject: mathematik
)

quadratwurzel = Video.create(
  title: "Die Quadratwurzel",
  subject: mathematik
)

rechtwinkliges_dreieck = Video.create(
  title: "Das rechtwinklige Dreieick",
  subject: mathematik
)

gleichschenkliges_Dreieck = Video.create(
  title: "Das gleichschenklige Dreieick",
  subject: mathematik
)

schiller = Video.create(
  title: "Schiller",
  subject: deutsch
)

Lessing = Video.create(
  title: "Lessing",
  subject: deutsch
)

goethe = Video.create(
  title: "Goethe",
  subject: deutsch
)

eisen = Video.create(
  title: "Eisen und andere Metalle",
  subject: chemie
)

wolf = Video.create(
  title: "Der Wolf",
  subject: biologie
)

bäume = Video.create(
  title: "Bäume und Wurzeln",
  subject: biologie
)

pythagoras = Video.create(
  title: "Die Pythagoreer",
  subject: geschichte
)

eisenzeit = Video.create(
  title: "Die Eisenzeit",
  subject: geschichte
)

puts "done"


