public class GestionEleve{

class Personne {
    String nom;
    String prenom;
   String dateDeNaissance;

    // Constructeur 
}

class Eleve extends Personne {
    int matricule;
    Note[] notes;

    // Constructeur 
}

class Professeur extends Personne {
    String matiere;

    // Constructeur
}
class Note {
    int valeur;
    Cours cours;

    // Constructeur 
}

class Cours {
    String intitule;
Professeur professeur;
    Eleve[] eleves;

    // Constructeur 
}

public class GestionAcademica {
    static Eleve[] eleves = new Eleve[100]; 
    static Cours[] cours = new Cours[100]; 
    static int nbEleves = 0;
    static int nbCours = 0;

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
    }

    
    public static void ajouterEleve() {
        eleves[nbEleves] = new Eleve();
        nbEleves++;
    }
}
}