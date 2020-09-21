john = Owner.create(username: "JohnSmith", password: "johnsmith", name: "John Smith", location: "Houston, TX")
max = Owner.create(username: "Max91", password: "mydogfido", name: "Max Hudson", location: "New York, NY")
ali = Owner.create(username: "Ali90", password: "iloveny", name: "Allison White", location: "New York, NY")
david = Owner.create(username: "David02", password: "leibowitz22", name: "David Leibowitz", location: "Los Angeles, CA")
erica = Owner.create(username: "EricaS", password: "redsox49", name: "Erica Sheffield", location: "Boston, MA")

orwell = Book.create(title: "1984", author: "George Orwell", genre:"Fiction", year: 1949, condition: "used", book_type: "Hardcover")
hemingway = Book.create(title: "For Whom the Bell Tolls", author: "Ernest Hemingway", genre:"War Novel", year: 1940, condition: "used", book_type: "Paperback")
vonnegut = Book.create(title: "Slaugherhouse-Five", author: "Kurt Vonnegut", genre:"Satire", year: 1969, condition: "new", book_type: "Hardcover")
austen = Book.create(title: "Pride and Prejudice", author: "Jane Austen", genre:"Romantic Novel", year: 1813, condition: "used", book_type: "Paperback")
macchiavelli = Book.create(title: "The Prince", author: "Niccolo Macchiavelli", genre:"Non-fiction", year: 1513, condition: "used", book_type: "Paperback")
kafka = Book.create(title: "The Metamorphosis", author: "Franz Kafka", genre:"Fantasy Fiction", year: 1813, condition: "used", book_type: "Paperback")
joyce = Book.create(title: "Ulysees", author: "James Joyce", genre:"Modernist Novel", year: 1922, condition: "new", book_type: "Hardcover")
fitzgerald = Book.create(title: "The Great Gatsby ", author: "F. Scott Fitzgerald", genre:"Tragedy", year: 1925, condition: "new", book_type: "Paperback")
rice = Book.create(title: "Interview with the Vampire ", author: "Anne Rice", genre:"Gothic Horror", year: 1976, condition: "used", book_type: "Hardcover")
melville = Book.create(title: "Moby Dick", author: "Herman Melville", genre:"Adventure Fiction", year: 1851, condition: "used", book_type: "Paperback")

john.books.push(orwell, hemingway)
max.books.push(vonnegut, austen)
ali.books.push(macchiavelli, kafka)
david.books.push(joyce, fitzgerald)
erica.books.push(rice, melville)

orwell.synopsis = "A dystopian novel by English novelist George Orwell. It was published on 8 June 1949 by Secker & Warburg as Orwell's ninth and final book completed in his lifetime. 
Thematically, Nineteen Eighty-Four centres on the consequences of totalitarianism, mass surveillance, and repressive regimentation of all persons and behaviours within society.
 Orwell, himself a democratic socialist, modeled the authoritarian government in the novel after Stalinist Russia. More broadly, the novel examines the role of truth and facts within politics and the ways in which they are manipulated."
orwell.save

hemingway.synopsis = "For Whom the Bell Tolls is a novel by Ernest Hemingway published in 1940. It tells the story of Robert Jordan, a young American volunteer attached to a Republican guerrilla unit during the Spanish Civil War. 
As a dynamiter, he is assigned to blow up a bridge during an attack on the city of Segovia."
hemingway.save

vonnegut.synopsis = "Slaughterhouse-Five, is a science fiction-infused anti-war novel by Kurt Vonnegut, first published in 1969. It follows the life and experiences of Billy Pilgrim, from his early years to his time as an American soldier and chaplain's assistant during World War II, to the postwar years, with Billy occasionally traveling through time itself. 
The text centers on Billy's capture by the German Army and his survival of the Allied firebombing of Dresden as a prisoner of war, an experience which Vonnegut himself lived through as an American serviceman. The work has been called an example of unmatched moral clarity' and 'one of the most enduring antiwar novels of all time'"
vonnegut.save

austen.synopsis = "Pride and Prejudice is a romantic novel of manners written by Jane Austen in 1813. The novel follows the character development of Elizabeth Bennet, the dynamic protagonist of the book who learns about the repercussions of hasty judgments and comes to appreciate the difference between superficial goodness and actual goodness. 
Its humour lies in its honest depiction of manners, education, marriage, and money during the Regency era in Great Britain."
austen.save

macchiavelli.synopsis = "The Prince is a 16th-century political treatise written by the Italian diplomat and political theorist Niccolò Machiavelli as an instruction guide for new princes and royals. 
The general theme of The Prince is of accepting that the aims of princes – such as glory and survival – can justify the use of immoral means to achieve those ends."
macchiavelli.save

kafka.synopsis = "The Metamorphosis is a novella written by Franz Kafka which was first published in 1915. One of Kafka's best-known works, The Metamorphosis tells the story of salesman Gregor Samsa who wakes one morning to find himself inexplicably transformed into a huge insect. 
The novella has been widely discussed among literary critics, with differing interpretations being offered."
kafka.save

joyce.synopsis = "Ulysses chronicles the peripatetic appointments and encounters of Leopold Bloom in Dublin in the course of an ordinary day, 16 June 1904. 
Ulysses is the Latinised name of Odysseus, the hero of Homer's epic poem the Odyssey, and the novel establishes a series of parallels between the poem and the novel, with structural correspondences between the characters and experiences of Bloom and Odysseus, Molly Bloom and Penelope, and Stephen Dedalus and Telemachus, in addition to events and themes of the early 20th-century context of modernism, Dublin, and Ireland's relationship to Britain. 
The novel is highly allusive and also imitates the styles of different periods of English literature."
joyce.save

fitzgerald.synopsis = "The Great Gatsby is a 1925 novel written by American author F. Scott Fitzgerald that follows a cast of characters living in the fictional towns of West Egg and East Egg on prosperous Long Island in the summer of 1922. Many literary critics consider The Great Gatsby to be one of the greatest novels ever written.
The story of the book primarily concerns the young and mysterious millionaire Jay Gatsby and his quixotic passion and obsession to reunite with his ex-lover, the beautiful former debutante Daisy Buchanan. Considered to be Fitzgerald's magnum opus, The Great Gatsby explores themes of decadence, idealism, resistance to change, social upheaval and excess, creating a portrait of the Roaring Twenties that has been described as a cautionary tale regarding the American Dream."
fitzgerald.save

rice.synopsis = "Interview with the Vampire is a gothic horror and vampire novel by American author Anne Rice, published in 1976. It was her debut novel. Based on a short story Rice wrote around 1968, the novel centers on vampire Louis de Pointe du Lac, who tells the story of his life to a reporter. 
Rice composed the novel shortly after the death of her young daughter Michelle, who served as an inspiration for the child-vampire character Claudia."
rice.save

melville.synopsis = "Moby-Dick is an 1851 novel by American writer Herman Melville. The book is the sailor Ishmael's narrative of the obsessive quest of Ahab, captain of the whaling ship Pequod, for revenge on Moby Dick, the giant white sperm whale that on the ship's previous voyage bit off Ahab's leg at the knee."
melville.save