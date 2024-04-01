// fonction qui affiche les x premiers nombres pairs ou impairs
func parite (nombre: Int) {
  print("Les x prémiers nombres impairs sont")
  for i in 0...nombre
  {
    if i%2 != 0
    {
      print(i)
    }
  }

  print("\n")
  print("Les x prémiers nombres pairs sont")
  for i in 0...nombre
  {
    if i%2 == 0
    {
      print(i)
    }
  }
}

parite(nombre: 20)

// fonction qui affiche les x premiers nombres de la suite func 

func fibonacci(_ x: Int) {
  var a = 0
  var b = 1

  print("Les \(x) premiers nombres de la suite Fibonacci sont :")
  print("\n")
  for _ in 0..<x {
      print(a)
      let temp = a
      a = b
      b = temp + b
  }
}

// Appel de la fonction pour afficher les 10 premiers nombres de la suite Fibonacci
fibonacci(10)

// Ecrire une fonction qui calcule le factoriel d’un nombre x, utiliser 10 par défaut si aucun nombre n’est spécifié

func factoriel(_ x: Int = 10) -> Int {
  var resultat = 1
  for i in 1...x {
      resultat *= i
  }
  return resultat
}

// Exemples d'utilisation
let factorielDe10 = factoriel()
print("\n")
print("Factoriel de 10: \(factorielDe10)")

let factorielDe5 = factoriel(5)
print("Factoriel de 5: \(factorielDe5)")


// Ecrire une fonction qui affiche les x premiers nombres premiers
func premiersNombresPremiers(_ x: Int) {
  print("\n")
  print("Les \(x) premiers nombres premiers sont :")
  // Initialisation du compteur de nombres premiers trouvés
  var compteur = 0 
  // Initialisation du nombre à tester
  var nombre = 2 

  while compteur < x {
      // Initialise le booléen estPremier à true pour chaque nombre testé
      var estPremier = true 

      // Vérifie si le nombre est premier en testant les diviseurs de 2 à nombre - 1
      for diviseur in 2..<nombre {
          if nombre % diviseur == 0 {
              // Si le nombre est divisible par un diviseur autre que 1 et lui-même, il n'est pas premier
              estPremier = false 
              // Sort de la boucle for dès qu'un diviseur est trouvé
              break 
          }
      }

      // Si le nombre est premier, l'affiche et incrémente le compteur
      if estPremier {
          print(nombre)
          compteur += 1
      }

      nombre += 1 // Passe au nombre suivant
  }
}

// Appel de la fonction pour afficher les 10 premiers nombres premiers
premiersNombresPremiers(10)




