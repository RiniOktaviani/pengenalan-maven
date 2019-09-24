/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pelatihan.java.project.uts.service;

import java.util.List;
import pelatihan.java.project.uts.dto.UserDto;
import pelatihan.java.project.uts.model.UserModel;

/**
 *
 * @author ASUS
 */
public interface UserService {
    public void saveDataUser(UserDto userDto) throws Exception;
    public List <UserDto> getListUser()throws Exception;
    public UserModel getUserById(String id);
    public void deleteDataUser(String iduser) throws Exception;
    public UserDto getUpdateDataUser(String iduser) throws Exception;
    public void doUpdateDataUser(UserDto userDto) throws Exception;
    public UserDto getListDataUserLogin(UserDto fromDto) throws Exception;
    
}
