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
import org.springframework.ui.Model;
import pelatihan.java.project.uts.dao.UserDao;
import pelatihan.java.project.uts.dto.UserDto;
import pelatihan.java.project.uts.model.UserModel;
import pelatihan.java.project.uts.service.UserService;

/**
 *
 * @author ASUS
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {
    
     @Autowired
    UserDao userDao;
    

    @Override
    public void saveDataUser(UserDto userDto) throws Exception {
        UserModel userModel = new UserModel();
        try {
            userModel.setIduser(userDto.getIduser());
            userModel.setNmuser(userDto.getNmuser());
            userModel.setUsuser(userDto.getUsuser());
            userModel.setPasuser(userDto.getPasuser());
            userModel.setAlmtuser(userDto.getAlmtuser());
            userModel.setNotelp(userDto.getNotelp());
            
            userDao.saveDataUser(userModel);
                       
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<UserDto> getListUser() throws Exception {
         List <UserDto> listDataDto = new ArrayList<>();
        List <UserModel> listData = userDao.getListDataUser();
        UserDto userDto = null;
        try {
            if(listData != null){
                for(UserModel model : listData){
                    userDto = new UserDto();
                    if(model.getIduser()!= null){
                        userDto.setIduser(model.getIduser());
                    }
                    if(model.getNmuser()!= null){
                        userDto.setNmuser(model.getNmuser());
                    }
                    if(model.getUsuser()!= null){
                        userDto.setUsuser(model.getUsuser());
                    }
                    if(model.getPasuser()!= null){
                        userDto.setPasuser(model.getPasuser());
                    }
                     if(model.getAlmtuser()!= null){
                        userDto.setAlmtuser(model.getAlmtuser());
                    }
                    
                    userDto.setNotelp(model.getNotelp());
                    
                    listDataDto.add(userDto);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }        
        return listDataDto;
    }

    @Override
    public UserModel getUserById(String id) {
        UserModel userModel = null;
        try {
            userModel = userDao.getUserById(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return userModel;
    }

    @Override
    public void deleteDataUser(String iduser) throws Exception {
         try {
            userDao.deleteUser(iduser);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public UserDto getUpdateDataUser(String iduser) throws Exception {
         List<UserModel> dataList = userDao.getListUserUpdate(iduser);
        UserDto dto = new UserDto();
        if(dataList != null){
            for (UserModel ddm : dataList) {       
                if(ddm.getIduser()!= null){
                    dto.setIduser(ddm.getIduser());
                }
                if(ddm.getNmuser()!= null){
                    dto.setNmuser(ddm.getNmuser());
                }
                if(ddm.getUsuser()!= null){
                    dto.setUsuser(ddm.getUsuser());
                }
                if(ddm.getPasuser()!= null){
                    dto.setPasuser(ddm.getPasuser());
                }
                if(ddm.getAlmtuser()!= null){
                    dto.setAlmtuser(ddm.getAlmtuser());
                }
                dto.setNotelp(ddm.getNotelp());
            }
        }
        return dto;
    }

    @Override
    public void doUpdateDataUser(UserDto userDto) throws Exception {
        UserModel ddm = new UserModel();
        try {
            ddm.setIduser(userDto.getIduser());
            ddm.setNmuser(userDto.getNmuser());
            ddm.setUsuser(userDto.getUsuser());
            ddm.setPasuser(userDto.getPasuser());
            ddm.setAlmtuser(userDto.getAlmtuser());
            ddm.setNotelp(userDto.getNotelp());
           
        } catch (Exception e) {
            e.printStackTrace();
        }
        userDao.updateUser(ddm);
    }

    @Override
    public UserDto getListDataUserLogin(UserDto fromDto) throws Exception {
        List<UserModel> dataList=userDao.getListDataLogin(fromDto);
        UserDto userDto=new UserDto();
        try{
            userDto.setListDataUser(userDao.getListDataLogin(fromDto));
            if(dataList!=null){
            for(UserModel ddm : dataList){
                if(ddm.getIduser()!=null){
                    userDto.setIduser(ddm.getIduser());
                }
                if(ddm.getNmuser()!=null){
                    userDto.setNmuser(ddm.getNmuser());
                }
                if(ddm.getUsuser()!=null){
                    userDto.setUsuser(ddm.getUsuser());
                }
                if(ddm.getPasuser()!=null){
                    userDto.setPasuser(ddm.getPasuser());
                }
                if(ddm.getAlmtuser()!=null){
                    userDto.setAlmtuser(ddm.getAlmtuser());
                }
                if(ddm.getNotelp()!=null){
                    userDto.setNotelp(ddm.getNotelp());
                }
               
            }
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return userDto;
    }
    
}
