class GestionEleve {
    private String nom;
    private int id;

    public Personne(String nom, int id) {
        this.nom = nom;
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public int getId() {
        return id;
    }
}

class Cours {
    private String nom;
    private int id;

    public Cours(String nom, int id) {
        this.nom = nom;
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public int getId() {
        return id;
    }
}

class Eleve extends Personne {
    private <Cours> cours;
    private <Cours, Double> notes;

    public Eleve(String nom, int id) {
        super(nom, id);
        this.cours = new note();
        this.notes = new cours();
    }
}

    public void ajouterCours(Cours cours) {
        this.cours.add(cours);
        System.out.println("Cours ajouté : " + cours.getNom());
    }
    public void ajouterNote(Cours cours, double note) {
        if (this.cours.contains(cours)) {
            notes.put(cours, note);
            System.out.println("Note ajoutée pour le cours " + cours.getNom() + ": " + note);
        } else {
            System.out.println("L'élève n'est pas inscrit à ce cours.");
        }
    }




public class Gestion {
    public static void main(String[] args) {
        
        Cours Français= new Cours("Français", 101);
        Cours physique = new Cours("Physique", 102);

        
        Eleve eleve1 = new Eleve("Fatou", 1);

        
        eleve1.ajouterCours(Français);
        eleve1.ajouterCours(physique);

        eleve1.ajouterNote(Français, 15.5);
        eleve1.ajouterNote(physique, 18.0);

    
        eleve1.afficherCoursEtNotes();
    }
}

