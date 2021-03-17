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
public class TipoDocumento {
    String codigoDocumento;
    String descripcionDocumento;

    public TipoDocumento() {
    }

    public TipoDocumento(String codigoDocumento, String descripcionDocumento) {
        this.codigoDocumento = codigoDocumento;
        this.descripcionDocumento = descripcionDocumento;
    }

    public String getCodigoDocumento() {
        return codigoDocumento;
    }

    public void setCodigoDocumento(String codigoDocumento) {
        this.codigoDocumento = codigoDocumento;
    }

    public String getDescripcionDocumento() {
        return descripcionDocumento;
    }

    public void setDescripcionDocumento(String descripcionDocumento) {
        this.descripcionDocumento = descripcionDocumento;
    }
    
}
