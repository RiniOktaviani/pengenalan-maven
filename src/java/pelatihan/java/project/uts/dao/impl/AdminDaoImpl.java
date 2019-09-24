/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pelatihan.java.project.uts.dao.impl;

import java.util.List;
import org.hibernate.Query;
import pelatihan.java.project.uts.dao.AdminDao;
import pelatihan.java.project.uts.dto.AdminDto;
import pelatihan.java.project.uts.model.AdminModel;

/**
 *
 * @author ASUS
 */
public class AdminDaoImpl extends HibernateUtil implements AdminDao{

    @Override
    public void saveDataAdmin(AdminModel adminModel) throws Exception {
         try {
            getSession().save(adminModel);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<AdminModel> getListDataAdmin() throws Exception {
        List<AdminModel> listData = null;
        try {
            String sql = "select model from AdminModel model";
            Query query = createQuery(sql);
            listData = query.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listData;
    }

    @Override
    public AdminModel getAdminById(String id) throws Exception {
         AdminModel admin = new AdminModel();
        Query query = null;
        try {
            String sql = "select model from AdminModel model where idadmin=:idadminparam";
            query = createQuery(sql).setParameter("idadminparam", id);                    
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (AdminModel) query.uniqueResult(); 
    }

    @Override
    public void deleteAdmin(String id) {
        AdminModel ddm = new AdminModel();
        ddm.setIdadmin(id);
        getSession().delete(ddm);
    }

    @Override
    public void updateAdmin(AdminModel adminModel) {
        getSession().saveOrUpdate(adminModel);
    }

    @Override
    public List<AdminModel> getListAdminUpdate(String idadmin) {
        List<AdminModel> dataList = null;
        String sql = "select model from AdminModel model where idadmin=:id";
        Query query = createQuery(sql).setParameter("id", idadmin);
        dataList = query.list();
        return dataList;
    }

    @Override
    public List<AdminModel> getListDataLogin(AdminDto adminDto) throws Exception {
        String sql=null;
        List<AdminModel> listUsr=null;
        try {
            sql="select model from AdminModel model where usadmin=:admin and pasadmin=:pas";
            Query query = createQuery(sql).setParameter("admin",adminDto.getUsadmin());
            query.setParameter("pas", adminDto.getPasadmin());
            listUsr = query.list();
        } catch (Exception e) {
        }
        return listUsr;
    }
    
}
