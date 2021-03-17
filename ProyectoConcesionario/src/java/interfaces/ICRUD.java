/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import java.util.List;
import model.Persona;

/**
 *
 * @author HP
 */
public interface ICRUD {

    public List listar();

    public Persona listarPersona(int id);

    public Boolean registroPersona(Persona persona);

    public Boolean editarPersona(Persona persona);

    public Boolean eliminarPersona(Persona persona);
    
    public Persona loginPersona(String user, String pass);
}
