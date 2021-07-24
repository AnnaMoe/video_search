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
  title: "Rechter Winkel",
  subject: mathematik
)

quadratwurzel = Video.create(
  title: "Quadratwurzel",
  subject: mathematik
)

rechtwinkliges_dreieck = Video.create(
  title: "Rechtwinkliges Dreieck",
  subject: mathematik
)

gleichschenkliges_Dreieck = Video.create(
  title: "Gleichschenkliges Dreieck",
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
  title: "Eisen",
  subject: chemie
)

wolf = Video.create(
  title: "Wolf",
  subject: chemie
)

bäume = Video.create(
  title: "Bäume",
  subject: chemie
)

pythagoras = Video.create(
  title: "Pythagoras",
  subject: chemie
)

eisenzeit = Video.create(
  title: "Eisenzeit",
  subject: chemie
)

puts "done"


