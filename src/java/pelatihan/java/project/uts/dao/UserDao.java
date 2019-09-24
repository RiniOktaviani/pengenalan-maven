/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pelatihan.java.project.uts.dao;

import java.util.List;
import pelatihan.java.project.uts.dto.UserDto;
import pelatihan.java.project.uts.model.UserModel;

/**
 *
 * @author ASUS
 */
public interface UserDao {
    public void saveDataUser(UserModel userModel)throws Exception;
    public List<UserModel> getListDataUser()throws Exception;
    public UserModel getUserById(String id) throws Exception;
    public void deleteUser(String id);
    public void updateUser(UserModel userModel);
    public List<UserModel> getListUserUpdate(String iduser);
    List<UserModel> getListDataLogin(UserDto userDto) throws Exception;
    
}
