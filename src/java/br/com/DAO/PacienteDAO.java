/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.DAO;

import java.sql.PreparedStatement;
import java.sql.Connection;
import br.com.model.Paciente;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author mayar
 */
public class PacienteDAO {

    Connection con; // variavel que receber uma conexao
    PreparedStatement pstm; // variavel que prepara o comando
    ResultSet rs; // variavel pega o resultado da conexao
    ArrayList<Paciente> pacientes = new ArrayList<>();

    public void CadastrarPaciente(Paciente paciente) throws ClassNotFoundException {
        String sql = "insert into paciente (nome, cpf, cartao_sus, dt_nasc, nome_mae) values (?,?,?,?,?)"; // linha que insere no banco
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);//preparando a conexao

            pstm.setString(1, paciente.getNome());
            pstm.setString(2, paciente.getCpf());
            pstm.setString(3, paciente.getCartao_sus());
            pstm.setString(4, paciente.getDt_nasc());
            pstm.setString(5, paciente.getNome_mae());

            pstm.execute();
            pstm.close();

        } catch (SQLException e) {

        }
    }

    public ArrayList<Paciente> BuscarPacientes() throws ClassNotFoundException {
        String sql = "select * from paciente";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);//preparando a conexao
            rs = pstm.executeQuery(sql);

            while (rs.next()) {
                Paciente paciente = new Paciente();

                paciente.setIdpaciente(rs.getInt("idpaciente"));
                paciente.setNome(rs.getString("nome"));
                paciente.setCartao_sus(rs.getString("cartao_sus"));
                paciente.setCpf(rs.getString("cpf"));
                paciente.setDt_nasc(rs.getString("dt_nasc"));
                paciente.setNome_mae(rs.getString("nome_mae"));

                pacientes.add(paciente);

            }
            pstm.close();

        } catch (SQLException e) {

        }
        return pacientes;
    }

    public void ExcluirPaciente(Paciente paciente) throws ClassNotFoundException {
        String sql = "delete from paciente where idpaciente = ?";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);//preparando a conexao
            pstm.setInt(1, paciente.getIdpaciente());

            pstm.execute();
            pstm.close();

        } catch (SQLException e) {

        }
    }

    public void EditarPaciente(Paciente paciente) throws ClassNotFoundException {
        String sql = "update paciente set(nome, cpf, cartao_sus, dt_nasc, nome_mae) values (?,?,?,?,?) where idpaciente = ? "; // linha que insere no banco
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);//preparando a conexao

            pstm.setString(1, paciente.getNome());
            pstm.setString(2, paciente.getCpf());
            pstm.setString(3, paciente.getCartao_sus());
            pstm.setString(4, paciente.getDt_nasc());
            pstm.setString(5, paciente.getNome_mae());
            pstm.setInt(6, paciente.getIdpaciente());

            pstm.execute();
            pstm.close();

        } catch (SQLException e) {

        }
    }

}
