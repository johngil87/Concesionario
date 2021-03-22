/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import config.Conexion;
import interfaces.CRUDVehiculo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Vehiculos;

/**
 *
 * @author HP
 */
public class VehiculoDAO implements CRUDVehiculo{

    Conexion con = new Conexion();
    Connection connection;
    PreparedStatement ps;
    ResultSet rs;
    
    @Override
    public List<Vehiculos> listar() {
        ArrayList<Vehiculos> list = new ArrayList<>();
        String sql = "select * from vehiculos";

        try {
            connection = con.getConnection();
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Vehiculos veh = new Vehiculos();
                veh.setPlacaVehiculo(rs.getString("placa_vehiculo"));
                veh.setMarcaVehiculo(rs.getString("marca_vehiculo"));
                veh.setLineaVehiculo(rs.getString("linea_vehiculo"));
                veh.setModeloVehiculo(rs.getInt("modelo_vehiculo"));
                veh.setColorVehiculo(rs.getString("color_vehiculo"));
                veh.setFotoVehiculo(rs.getString("imagen_vehiculo"));
                veh.setEstadoVehiculo(rs.getInt("estado_vehiculo"));
                list.add(veh);
            }

        } catch (Exception e) {
            System.out.println("error al capturar datos de vehiculos ");
            System.err.println(e.toString());
        }
        return list;
    }

    @Override
    public Vehiculos listarVehiculoId(String placa) {
      String sql = "select * from vehiculos where placa_vehiculo ='"+placa+"'";
         Vehiculos veh = new Vehiculos();
        try {
            connection = con.getConnection();
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                veh.setPlacaVehiculo(rs.getString("placa_vehiculo"));
                veh.setMarcaVehiculo(rs.getString("marca_vehiculo"));
                veh.setLineaVehiculo(rs.getString("linea_vehiculo"));
                veh.setModeloVehiculo(rs.getInt("modelo_vehiculo"));
                veh.setColorVehiculo(rs.getString("color_vehiculo"));
                veh.setFotoVehiculo(rs.getString("imagen_vehiculo"));
                veh.setEstadoVehiculo(rs.getInt("estado_vehiculo"));
            }

        } catch (Exception e) {
            System.out.println("error al capturar datos de vehiculos ");
            System.err.println(e.toString());
        }
        return veh;   
    }

    @Override
    public Boolean registro(Vehiculos vehiculo) {
           String sql = " INSERT INTO vehiculos (placa_vehiculo, marca_vehiculo, linea_vehiculo, modelo_vehiculo, color_vehiculo,imagen_vehiculo, estado_vehiculo, fk_cod_sucursal) \n"
                + "VALUES ('" + vehiculo.getPlacaVehiculo() + "', '" + vehiculo.getMarcaVehiculo() + "', '" + vehiculo.getLineaVehiculo() + "', " + vehiculo.getModeloVehiculo() + ", '" + vehiculo.getColorVehiculo() + "', '" + vehiculo.getFotoVehiculo() + "'," + vehiculo.getEstadoVehiculo() + ", '" + vehiculo.getCodSucursal() + "')";
        try {
            connection = con.getConnection();
            ps = connection.prepareStatement(sql);
            ps.executeUpdate();
            System.out.println("se registro vehiculo");
            return true;
        } catch (Exception e) {
            System.out.println("Error em registor del vehiculo");
            System.out.println(e);
            return false;
        }
    }

    @Override
    public Boolean editar(Vehiculos vehiculo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Boolean eliminar(Vehiculos vehiculo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }    

    @Override
    public List listarVehiculoMarca(String marca) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Boolean validarVehiculo(String placa) {
    String sql = "select * from vehiculos where placa_vehiculo ="+placa;
         Vehiculos veh = new Vehiculos();
        try {
            connection = con.getConnection();
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                veh.setPlacaVehiculo(rs.getString("placa_vehiculo"));
                veh.setMarcaVehiculo(rs.getString("marca_vehiculo"));
                veh.setLineaVehiculo(rs.getString("linea_vehiculo"));
                veh.setModeloVehiculo(rs.getInt("modelo_vehiculo"));
                veh.setColorVehiculo(rs.getString("color_vehiculo"));
                veh.setFotoVehiculo(rs.getString("imagen_vehiculo"));
                veh.setEstadoVehiculo(rs.getInt("estado_vehiculo"));
            }

        } catch (Exception e) {
            System.out.println("error al capturar datos de vehiculos ");
            System.err.println(e.toString());
        }
       return true;
    }
    
}
