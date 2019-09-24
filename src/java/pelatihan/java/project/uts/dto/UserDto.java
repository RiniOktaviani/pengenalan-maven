/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pelatihan.java.project.uts.dto;

import java.util.List;
import pelatihan.java.project.uts.model.UserModel;

/**
 *
 * @author ASUS
 */
public class UserDto {
     String iduser,nmuser,ususer,pasuser,almtuser,notelp;
     List<UserModel>ListDataUser;

    public List<UserModel> getListDataUser() {
        return ListDataUser;
    }

    public void setListDataUser(List<UserModel> ListDataUser) {
        this.ListDataUser = ListDataUser;
    }
     

    public String getIduser() {
        return iduser;
    }

    public void setIduser(String iduser) {
        this.iduser = iduser;
    }

    public String getNmuser() {
        return nmuser;
    }

    public void setNmuser(String nmuser) {
        this.nmuser = nmuser;
    }

    public String getUsuser() {
        return ususer;
    }

    public void setUsuser(String ususer) {
        this.ususer = ususer;
    }

    public String getPasuser() {
        return pasuser;
    }

    public void setPasuser(String pasuser) {
        this.pasuser = pasuser;
    }

    public String getAlmtuser() {
        return almtuser;
    }

    public void setAlmtuser(String almtuser) {
        this.almtuser = almtuser;
    }

    public String getNotelp() {
        return notelp;
    }

    public void setNotelp(String notelp) {
        this.notelp = notelp;
    }
    
}
