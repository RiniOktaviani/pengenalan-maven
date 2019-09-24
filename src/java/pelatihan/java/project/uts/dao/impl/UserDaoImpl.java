/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pelatihan.java.project.uts.dao.impl;

import java.util.List;
import org.hibernate.Query;
import pelatihan.java.project.uts.dao.UserDao;
import pelatihan.java.project.uts.dto.UserDto;
import pelatihan.java.project.uts.model.UserModel;

/**
 *
 * @author ASUS
 */
public class UserDaoImpl extends HibernateUtil implements UserDao{

    @Override
    public void saveDataUser(UserModel userModel) throws Exception {
        try {
            getSession().save(userModel);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<UserModel> getListDataUser() throws Exception {
        List<UserModel> listData = null;
        try {
            String sql = "select model from UserModel model";
            Query query = createQuery(sql);
            listData = query.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listData;
    }

    @Override
    public UserModel getUserById(String id) throws Exception {
        UserModel user = new UserModel();
        Query query = null;
        try {
            String sql = "select model from UserModel model where iduser=:iduserparam";
            query = createQuery(sql).setParameter("iduserparam", id);                    
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (UserModel) query.uniqueResult(); 
    }

    @Override
    public void deleteUser(String id) {
        UserModel ddm = new UserModel();
        ddm.setIduser(id);
        getSession().delete(ddm);
    }

    @Override
    public void updateUser(UserModel userModel) {
        getSession().saveOrUpdate(userModel);
    }

    @Override
    public List<UserModel> getListUserUpdate(String iduser) {
         List<UserModel> dataList = null;
        String sql = "select model from UserModel model where iduser=:id";
        Query query = createQuery(sql).setParameter("id", iduser);
        dataList = query.list();
        return dataList;
    
    }

    @Override
    public List<UserModel> getListDataLogin(UserDto userDto) throws Exception {
        String sql=null;
        List<UserModel> listUsr=null;
        try {
            sql="select model from UserModel model where ususer=:user and pasuser=:pas";
            Query query = createQuery(sql).setParameter("user",userDto.getUsuser());
            query.setParameter("pas", userDto.getPasuser());
            listUsr = query.list();
        } catch (Exception e) {
        }
        return listUsr;
    }
    
}
