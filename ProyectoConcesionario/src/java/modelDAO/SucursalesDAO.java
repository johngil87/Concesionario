/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import config.Conexion;
import interfaces.ICRUDSucursales;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Sucursales;

/**
 *
 * @author HP
 */
public class SucursalesDAO implements ICRUDSucursales {
    
    Conexion con = new Conexion();
    Connection connection;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public List<Sucursales> listar() {
    
           ArrayList<Sucursales> list = new ArrayList<>();
        String sql = "select * from sucursales";

        try {
            connection = con.getConnection();
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Sucursales sucur = new Sucursales();
                sucur.setCodSucursal(rs.getString("codigo_sucursal"));
                sucur.setDescripcionSucursal(rs.getString("desc_sucursal"));
                sucur.setDocAdministrador(rs.getString("fkpk_admin_usu_documen"));
                sucur.setNomSucursal(rs.getString("nom_sucursal"));
                sucur.setTipoDocumento(rs.getString("fkpk_admin_tipo_documen"));
                list.add(sucur);
            }

        } catch (Exception e) {
        }
        return list;
    }
    
}
