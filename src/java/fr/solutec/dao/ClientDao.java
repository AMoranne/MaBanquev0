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

import fr.solutec.model.Client;
import java.awt.Component;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class ClientDao {
    
    
    private static Component rootPane;
    
    public static Client getByLoginAndPassword(String login, String password) throws SQLException{
        Client client = null;
        String sql = "SELECT * FROM client WHERE login = ? AND password = ?";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, login);
        prepare.setString(2, password);
        
        ResultSet rs = prepare.executeQuery();
        if(rs.next()){   //envoi true si y'a bien un enregistrement (1 ligne de résulat dans la base de donnée)
            client = new Client();  //Renvoi les infos de la personne
            client.setId_client(rs.getInt("id_client"));
            client.setNom(rs.getString("nom"));
            client.setPrenom(rs.getString("prenom"));
            client.setAdresse(rs.getString("adresse"));
            client.setMail(rs.getString("mail"));
            client.setNumero(rs.getString("numero"));
            client.setLogin(rs.getString("login"));
            client.setPassword(rs.getString("password"));
        }  
        return client;  //Renvoi null si personne n'a été trouvé
    }
    
}
