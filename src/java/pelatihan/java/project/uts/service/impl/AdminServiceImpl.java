/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pelatihan.java.project.uts.service.impl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pelatihan.java.project.uts.dao.AdminDao;
import pelatihan.java.project.uts.dto.AdminDto;
import pelatihan.java.project.uts.model.AdminModel;
import pelatihan.java.project.uts.service.AdminService;

/**
 *
 * @author ASUS
 */
@Service
@Transactional
public class AdminServiceImpl implements AdminService {

    @Autowired
    AdminDao adminDao;

    @Override
    public void saveDataAdmin(AdminDto adminDto) throws Exception {
        AdminModel adminModel = new AdminModel();
        try {
            adminModel.setIdadmin(adminDto.getIdadmin());
            adminModel.setNmadmin(adminDto.getNmadmin());
            adminModel.setUsadmin(adminDto.getUsadmin());
            adminModel.setPasadmin(adminDto.getPasadmin());

            adminDao.saveDataAdmin(adminModel);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<AdminDto> getListAdmin() throws Exception {
        List<AdminDto> listDataDto = new ArrayList<>();
        List<AdminModel> listData = adminDao.getListDataAdmin();
        AdminDto adminDto = null;
        try {
            if (listData != null) {
                for (AdminModel model : listData) {
                    adminDto = new AdminDto();
                    if (model.getIdadmin()!= null) {
                        adminDto.setIdadmin(model.getIdadmin());
                    }
                    if (model.getNmadmin()!= null) {
                        adminDto.setNmadmin(model.getNmadmin());
                    }
                    if (model.getUsadmin()!= null) {
                        adminDto.setUsadmin(model.getUsadmin());
                    }
                    

                    adminDto.setPasadmin(model.getPasadmin());

                    listDataDto.add(adminDto);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listDataDto;
    }

    @Override
    public AdminModel getAdminById(String id) {
          AdminModel adminModel = null;
        try {
            adminModel = adminDao.getAdminById(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return adminModel;
    }

    @Override
    public void deleteDataAdmin(String idadmin) throws Exception {
         try {
            adminDao.deleteAdmin(idadmin);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public AdminDto getUpdateDataAdmin(String idadmin) throws Exception {
        List<AdminModel> dataList = adminDao.getListAdminUpdate(idadmin);
        AdminDto dto = new AdminDto();
        if(dataList != null){
            for (AdminModel ddm : dataList) {       
                if(ddm.getIdadmin()!= null){
                    dto.setIdadmin(ddm.getIdadmin());
                }
                if(ddm.getNmadmin()!= null){
                    dto.setNmadmin(ddm.getNmadmin());
                }
                if(ddm.getUsadmin()!= null){
                    dto.setUsadmin(ddm.getUsadmin());
                }
                
                dto.setPasadmin(ddm.getPasadmin());
            }
        }
        return dto;
    }

    @Override
    public void doUpdateDataAdmin(AdminDto adminDto) throws Exception {
         AdminModel ddm = new AdminModel();
        try {
            ddm.setIdadmin(adminDto.getIdadmin());
            ddm.setNmadmin(adminDto.getNmadmin());
            ddm.setUsadmin(adminDto.getUsadmin());
            ddm.setPasadmin(adminDto.getPasadmin());
           
           
        } catch (Exception e) {
            e.printStackTrace();
        }
        adminDao.updateAdmin(ddm);
    }

    @Override
    public AdminDto getListDataAdminLogin(AdminDto fromDto) throws Exception {
        List<AdminModel> dataList=adminDao.getListDataLogin(fromDto);
        AdminDto adminDto=new AdminDto();
        try{
            adminDto.setListDataAdmin(adminDao.getListDataLogin(fromDto));
            if(dataList!=null){
            for(AdminModel ddm : dataList){
                if(ddm.getIdadmin()!=null){
                    adminDto.setIdadmin(ddm.getIdadmin());
                }
                if(ddm.getNmadmin()!=null){
                    adminDto.setNmadmin(ddm.getNmadmin());
                }
                if(ddm.getUsadmin()!=null){
                    adminDto.setUsadmin(ddm.getUsadmin());
                }
                if(ddm.getPasadmin()!=null){
                    adminDto.setPasadmin(ddm.getPasadmin());
                }
               
            }
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return adminDto;
    }

}
