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
public class Sucursales {

String codSucursal;
String nomSucursal;
String descripcionSucursal;
String docAdministrador;
String tipoDocumento;

    public Sucursales() {
    }

    public Sucursales(String codSucursal, String nomSucursal, String descripcionSucursal, String docAdministrador, String tipoDocumento) {
        this.codSucursal = codSucursal;
        this.nomSucursal = nomSucursal;
        this.descripcionSucursal = descripcionSucursal;
        this.docAdministrador = docAdministrador;
        this.tipoDocumento = tipoDocumento;
    }

    public String getCodSucursal() {
        return codSucursal;
    }

    public void setCodSucursal(String codSucursal) {
        this.codSucursal = codSucursal;
    }

    public String getNomSucursal() {
        return nomSucursal;
    }

    public void setNomSucursal(String nomSucursal) {
        this.nomSucursal = nomSucursal;
    }

    public String getDescripcionSucursal() {
        return descripcionSucursal;
    }

    public void setDescripcionSucursal(String descripcionSucursal) {
        this.descripcionSucursal = descripcionSucursal;
    }

    public String getDocAdministrador() {
        return docAdministrador;
    }

    public void setDocAdministrador(String docAdministrador) {
        this.docAdministrador = docAdministrador;
    }

    public String getTipoDocumento() {
        return tipoDocumento;
    }

    public void setTipoDocumento(String tipoDocumento) {
        this.tipoDocumento = tipoDocumento;
    }


}
