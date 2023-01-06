/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.model;

/**
 *
 * @author dsi
 */
public class Compte {
    private int id_compte;
    private String type_compte;
    private int solde;

    public Compte(int id_compte, String type_compte, int solde) {
        this.id_compte = id_compte;
        this.type_compte = type_compte;
        this.solde = solde;
    }

    public Compte() {
    }

    public int getId_compte() {
        return id_compte;
    }

    public String getType_compte() {
        return type_compte;
    }

    public int getSolde() {
        return solde;
    }

    public void setId_compte(int id_compte) {
        this.id_compte = id_compte;
    }

    public void setType_compte(String type_compte) {
        this.type_compte = type_compte;
    }

    public void setSolde(int solde) {
        this.solde = solde;
    }

    
  
}



