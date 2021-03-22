/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import java.util.List;
import model.Vehiculos;

/**
 *
 * @author HP
 */
public interface CRUDVehiculo {
    
    public List<Vehiculos> listar();

    public Vehiculos listarVehiculoId(String placa);

    public Boolean registro(Vehiculos vehiculo);

    public Boolean editar(Vehiculos vehiculo);

    public Boolean eliminar(Vehiculos vehiculo);
    
    public Boolean validarVehiculo(String user);
    
    public List listarVehiculoMarca(String marca);
}
