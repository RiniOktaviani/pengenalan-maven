/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pelatihan.java.project.uts.dto;

import java.util.List;
import pelatihan.java.project.uts.model.AdminModel;

/**
 *
 * @author ASUS
 */
public class AdminDto {
    String Idadmin,nmadmin,usadmin,pasadmin;
    List<AdminModel>ListDataAdmin;

    public List<AdminModel> getListDataAdmin() {
        return ListDataAdmin;
    }

    public void setListDataAdmin(List<AdminModel> ListDataAdmin) {
        this.ListDataAdmin = ListDataAdmin;
    }
    

    public String getIdadmin() {
        return Idadmin;
    }

    public void setIdadmin(String Idadmin) {
        this.Idadmin = Idadmin;
    }

    public String getNmadmin() {
        return nmadmin;
    }

    public void setNmadmin(String nmadmin) {
        this.nmadmin = nmadmin;
    }

    public String getUsadmin() {
        return usadmin;
    }

    public void setUsadmin(String usadmin) {
        this.usadmin = usadmin;
    }

    public String getPasadmin() {
        return pasadmin;
    }

    public void setPasadmin(String pasadmin) {
        this.pasadmin = pasadmin;
    }

   
    
}
