/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Persona;
import interfaces.ICRUD;

/**
 *
 * @author HP
 */
public class PersonaDAO implements ICRUD {

    Conexion con = new Conexion();
    Connection connection;
    PreparedStatement ps;
    ResultSet rs;
    Persona p = new Persona();

    @Override
    public List listar() {
        ArrayList<Persona> list = new ArrayList<>();
        String sql = "select * from usuarios";

        try {
            connection = con.getConnection();
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Persona per = new Persona();
                per.setPrimerNombreUser(rs.getString("p_nombre_usu"));
                per.setSegundoNombreUser(rs.getString("s_nombre_usu"));
                per.setPrimerApellidoUser(rs.getString("p_apellido_usu"));
                per.setRolUsuario(rs.getString("fkpk_rol_usu"));
                per.setUsuario(rs.getString("usuario"));
                list.add(per);
            }

        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Persona listarPersona(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Boolean registroPersona(Persona persona) {
        String sql = "INSERT INTO usuarios (documento_usu, p_nombre_usu, s_nombre_usu, p_apellido_usu, s_apellido_usu, telefono, correo, usuario, contras, fkpk_rol_usu, fkpk_t_documento)\n"
                + "VALUES ('"+persona.getDocumentoUser()+"', '"+persona.getPrimerNombreUser()+"', '"+persona.getSegundoNombreUser()+"', '"+persona.getPrimerApellidoUser()+"', '"+persona.getSegundoApellidoUser()+"',"
                + " '"+persona.getTelefono()+"', '"+persona.getCorreo()+"', '"+persona.getUsuario()+"', '"+persona.getContraseña()+"', 'Cliente', '"+persona.getTipoDocumento()+"')";
        try{
            connection= con.getConnection();
            ps= connection.prepareStatement(sql);
            ps.executeUpdate();
             System.out.println("se registro usuario");
            return true;
        }catch(Exception e){
            System.out.println("Error em registor del usuario");
             System.out.println(e);
            return false;
        }
    }

    @Override
    public Boolean editarPersona(Persona persona) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Boolean eliminarPersona(Persona persona) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Persona loginPersona(String user, String pass) {
        Persona per = new Persona();
        String sqlLogin = "select documento_usu, p_nombre_usu, s_nombre_usu, p_apellido_usu, s_apellido_usu,usuario,telefono, correo, fkpk_rol_usu from usuarios as u\n"
                + " where  u.usuario='" + user + "' and u.contras='" + pass + "'";
        try {
            connection = con.getConnection();
            ps = connection.prepareStatement(sqlLogin);
            rs = ps.executeQuery();
            while (rs.next()) {
                per.setPrimerNombreUser(rs.getString("p_nombre_usu"));
                per.setSegundoNombreUser(rs.getString("s_nombre_usu"));
                per.setPrimerApellidoUser(rs.getString("p_apellido_usu"));
                per.setRolUsuario(rs.getString("fkpk_rol_usu"));
                per.setUsuario(rs.getString("usuario"));
            }
        } catch (Exception e) {
            System.out.println("error en login");
        }
        return per;
    }

}
