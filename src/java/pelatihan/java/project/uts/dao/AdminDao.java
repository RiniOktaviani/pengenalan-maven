/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pelatihan.java.project.uts.dao;

import java.util.List;
import pelatihan.java.project.uts.dto.AdminDto;
import pelatihan.java.project.uts.model.AdminModel;

/**
 *
 * @author ASUS
 */
public interface AdminDao {
    public void saveDataAdmin(AdminModel adminModel)throws Exception;
    public List<AdminModel> getListDataAdmin()throws Exception;
    public AdminModel getAdminById(String id) throws Exception;
    public void deleteAdmin(String id);
    public void updateAdmin(AdminModel adminModel);
    public List<AdminModel> getListAdminUpdate(String idadmin);
    public List<AdminModel> getListDataLogin(AdminDto adminDto) throws Exception;
    
}
