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
public class Persona {
    
    String documentoUser;
    String primerNombreUser;
    String segundoNombreUser;
    String primerApellidoUser;
    String segundoApellidoUser;
    Long telefono;
    String correo;
    String usuario;
    String contraseña;
    String rolUsuario;
    String tipoDocumento;
    int codigoAdministrador;

    public Persona() {
    }

    public Persona(String documentoUser, String primerNombreUser, String segundoNombreUser, String primerApellidoUser, String segundoApellidoUser, Long telefono, String correo, String usuario, String contraseña, String rolUsuario, String tipoDocumento, int codigoAdministrador) {
        this.documentoUser = documentoUser;
        this.primerNombreUser = primerNombreUser;
        this.segundoNombreUser = segundoNombreUser;
        this.primerApellidoUser = primerApellidoUser;
        this.segundoApellidoUser = segundoApellidoUser;
        this.telefono = telefono;
        this.correo = correo;
        this.usuario = usuario;
        this.contraseña = contraseña;
        this.rolUsuario = rolUsuario;
        this.tipoDocumento = tipoDocumento;
        this.codigoAdministrador = codigoAdministrador;
    }

    public String getDocumentoUser() {
        return documentoUser;
    }

    public void setDocumentoUser(String documentoUser) {
        this.documentoUser = documentoUser;
    }

    public String getPrimerNombreUser() {
        return primerNombreUser;
    }

    public void setPrimerNombreUser(String primerNombreUser) {
        this.primerNombreUser = primerNombreUser;
    }

    public String getSegundoNombreUser() {
        return segundoNombreUser;
    }

    public void setSegundoNombreUser(String segundoNombreUser) {
        this.segundoNombreUser = segundoNombreUser;
    }

    public String getPrimerApellidoUser() {
        return primerApellidoUser;
    }

    public void setPrimerApellidoUser(String primerApellidoUser) {
        this.primerApellidoUser = primerApellidoUser;
    }

    public String getSegundoApellidoUser() {
        return segundoApellidoUser;
    }

    public void setSegundoApellidoUser(String segundoApellidoUser) {
        this.segundoApellidoUser = segundoApellidoUser;
    }

    public Long getTelefono() {
        return telefono;
    }

    public void setTelefono(Long telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getRolUsuario() {
        return rolUsuario;
    }

    public void setRolUsuario(String rolUsuario) {
        this.rolUsuario = rolUsuario;
    }

    public String getTipoDocumento() {
        return tipoDocumento;
    }

    public void setTipoDocumento(String tipoDocumento) {
        this.tipoDocumento = tipoDocumento;
    }

    public int getCodigoAdministrador() {
        return codigoAdministrador;
    }

    public void setCodigoAdministrador(int codigoAdministrador) {
        this.codigoAdministrador = codigoAdministrador;
    }
    
}
