/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

/**
 *
 * @author dsi
 */

import fr.solutec.model.Admin;
import java.awt.Component;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class AdminDao {
    
    
    private static Component rootPane;
    
    public static Admin getByLoginAndPassword(String login, String password) throws SQLException{
        Admin admin = null;
        String sql = "SELECT * FROM administrateur WHERE login = ? AND password = ?";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, login);
        prepare.setString(2, password);
        
        ResultSet rs = prepare.executeQuery();
        if(rs.next()){   //envoi true si y'a bien un enregistrement (1 ligne de résulat dans la base de donnée)
            admin = new Admin();  //Renvoi les infos de la personne
            admin.setId_administrateur(rs.getInt("id_client"));
            admin.setNom(rs.getString("nom"));
            admin.setPrenom(rs.getString("prenom"));
            admin.setAdresse(rs.getString("adresse"));
            admin.setMail(rs.getString("mail"));
            admin.setNumero(rs.getString("numero"));
            admin.setLogin(rs.getString("login"));
            admin.setPassword(rs.getString("password"));
        }  
        return admin;  //Renvoi null si personne n'a été trouvé
    }
    
    
    
    
}
