package br.com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoDAO {
    Connection con = null;
    
    public Connection conexaoBD() throws ClassNotFoundException{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/dbimpacta?user=user&password=user"; // linha que faz a conexao com a base de dados
            con = DriverManager.getConnection(url);
            
        }catch (SQLException e){
            
        }
        return con;
    }
}
