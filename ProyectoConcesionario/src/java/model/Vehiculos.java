/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author HP
 */
public class Vehiculos {
    String placaVehiculo;
    String marcaVehiculo;
    String LineaVehiculo;
    int modeloVehiculo;
    String colorVehiculo;
    String fotoVehiculo;
    int estadoVehiculo;
    String codSucursal;

    public Vehiculos() {
    }

    public Vehiculos(String placaVehiculo, String marcaVehiculo, String LineaVehiculo, int modeloVehiculo, String colorVehiculo, String fotoVehiculo, int estadoVehiculo, String codSucursal) {
        this.placaVehiculo = placaVehiculo;
        this.marcaVehiculo = marcaVehiculo;
        this.LineaVehiculo = LineaVehiculo;
        this.modeloVehiculo = modeloVehiculo;
        this.colorVehiculo = colorVehiculo;
        this.fotoVehiculo = fotoVehiculo;
        this.estadoVehiculo = estadoVehiculo;
        this.codSucursal = codSucursal;
    }
    
    

    public String getPlacaVehiculo() {
        return placaVehiculo;
    }

    public void setPlacaVehiculo(String placaVehiculo) {
        this.placaVehiculo = placaVehiculo;
    }

    public String getMarcaVehiculo() {
        return marcaVehiculo;
    }

    public void setMarcaVehiculo(String marcaVehiculo) {
        this.marcaVehiculo = marcaVehiculo;
    }

    public String getLineaVehiculo() {
        return LineaVehiculo;
    }

    public void setLineaVehiculo(String LineaVehiculo) {
        this.LineaVehiculo = LineaVehiculo;
    }

    public int getModeloVehiculo() {
        return modeloVehiculo;
    }

    public void setModeloVehiculo(int modeloVehiculo) {
        this.modeloVehiculo = modeloVehiculo;
    }

    public String getColorVehiculo() {
        return colorVehiculo;
    }

    public void setColorVehiculo(String colorVehiculo) {
        this.colorVehiculo = colorVehiculo;
    }

    public String getFotoVehiculo() {
        return fotoVehiculo;
    }

    public void setFotoVehiculo(String fotoVehiculo) {
        this.fotoVehiculo = fotoVehiculo;
    }

    public int getEstadoVehiculo() {
        return estadoVehiculo;
    }

    public void setEstadoVehiculo(int estadoVehiculo) {
        this.estadoVehiculo = estadoVehiculo;
    }

    public String getCodSucursal() {
        return codSucursal;
    }

    public void setCodSucursal(String codSucursal) {
        this.codSucursal = codSucursal;
    }
    
    
}
