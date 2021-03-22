/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import config.Conexion;
import interfaces.ICRUDTipoDocumento;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import model.TipoDocumento;

/**
 *
 * @author HP
 */
public class TipoDocumentoDAO implements ICRUDTipoDocumento {

    Conexion con = new Conexion();
    Connection connection;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public List<TipoDocumento> listarDoc() {
        String sql = "select * from tipo_documento";
        ArrayList<TipoDocumento> list = new ArrayList<>();

        try {
            connection = con.getConnection();
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();            
            while (rs.next()) {
                TipoDocumento tipDoc = new TipoDocumento();
                tipDoc.setCodigoDocumento(rs.getString("t_documento"));
                tipDoc.setDescripcionDocumento(rs.getString("desc_documento"));
                list.add(tipDoc);
            }
        } catch (Exception ex) {
            System.out.println("Erro en registro de vehiculo " + ex);
        }
        return list;
    }

}
