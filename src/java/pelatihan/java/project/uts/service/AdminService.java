/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pelatihan.java.project.uts.service;

import java.util.List;
import pelatihan.java.project.uts.dto.AdminDto;
import pelatihan.java.project.uts.model.AdminModel;

/**
 *
 * @author ASUS
 */
public interface AdminService {
    public void saveDataAdmin(AdminDto adminDto) throws Exception;
    public List <AdminDto> getListAdmin()throws Exception;
    public AdminModel getAdminById(String id);
    public void deleteDataAdmin(String idadmin) throws Exception;
    public AdminDto getUpdateDataAdmin(String idadmin) throws Exception;
    public void doUpdateDataAdmin(AdminDto adminDto) throws Exception;
    public AdminDto getListDataAdminLogin(AdminDto fromDto) throws Exception;
    
}
