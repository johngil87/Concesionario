/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author HP
 */
public class Facturas {
   int codfactura;
   Date fechaFactura;
   long precioVehiculo;
   String placaVehiculo;
   String clienteDoc;
   String clienteTipoDoc;

    public Facturas() {
    }

    public Facturas(Date fechaFactura, long precioVehiculo, String placaVehiculo, String clienteDoc, String clienteTipoDoc) {
        this.fechaFactura = fechaFactura;
        this.precioVehiculo = precioVehiculo;
        this.placaVehiculo = placaVehiculo;
        this.clienteDoc = clienteDoc;
        this.clienteTipoDoc = clienteTipoDoc;
    }

    public int getCodfactura() {
        return codfactura;
    }

    public void setCodfactura(int codfactura) {
        this.codfactura = codfactura;
    }

    public Date getFechaFactura() {
        return fechaFactura;
    }

    public void setFechaFactura(Date fechaFactura) {
        this.fechaFactura = fechaFactura;
    }

    public long getPrecioVehiculo() {
        return precioVehiculo;
    }

    public void setPrecioVehiculo(long precioVehiculo) {
        this.precioVehiculo = precioVehiculo;
    }

    public String getPlacaVehiculo() {
        return placaVehiculo;
    }

    public void setPlacaVehiculo(String placaVehiculo) {
        this.placaVehiculo = placaVehiculo;
    }

    public String getClienteDoc() {
        return clienteDoc;
    }

    public void setClienteDoc(String clienteDoc) {
        this.clienteDoc = clienteDoc;
    }

    public String getClienteTipoDoc() {
        return clienteTipoDoc;
    }

    public void setClienteTipoDoc(String clienteTipoDoc) {
        this.clienteTipoDoc = clienteTipoDoc;
    }
   
   
   
}
