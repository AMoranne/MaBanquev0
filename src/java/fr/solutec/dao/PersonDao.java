/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Person;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author stagiaire
 */
public class PersonDao {
    public static Person getByLoginAndPassword(String login, String password) throws SQLException{
        Person p = null;
        String sql = "SELECT * FROM person WHERE login = ? AND password = ?";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, login);
        prepare.setString(2, password);
        
        ResultSet rs = prepare.executeQuery();
        if (rs.next()) {
            p = new Person();
            p.setId(rs.getInt("idperson"));
            p.setNom("nom");
            p.setPrenom("prenom");
            p.setLogin("login");
            p.setMdp("password");
        }
        
        
        return p;
    }
        public static void insertUser(Person u) throws SQLException {
        
        String sql = "INSERT INTO person (nom, prenom, login, password) VALUES (?,?,?,?)";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, u.getNom());
        prepare.setString(2, u.getPrenom());
        prepare.setString(3, u.getLogin());
        prepare.setString(4, u.getMdp());
        
        prepare.execute();
    }
        public static List<Person> getAllPerson() throws SQLException{
            List<Person> persons = new ArrayList();
            String sql = "SELECT * FROM person";
            Connection connexion = AccessBd.getConnection();
            Statement state = connexion.createStatement();
            ResultSet rs = state.executeQuery(sql);
            while(rs.next()){
                Person p = new Person();
                p.setId(rs.getInt("idperson"));
                p.setNom(rs.getString("nom"));
                p.setPrenom(rs.getString("prenom"));
                p.setLogin(rs.getString("login"));
                p.setMdp(rs.getString("password"));
                
                persons.add(p);
                
            }
            return persons;
        }
}
