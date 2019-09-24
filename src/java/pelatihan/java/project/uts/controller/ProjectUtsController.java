/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pelatihan.java.project.uts.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;
import pelatihan.java.project.uts.dto.AdminDto;
import pelatihan.java.project.uts.dto.UserDto;
import pelatihan.java.project.uts.model.AdminModel;
import pelatihan.java.project.uts.model.UserModel;
import pelatihan.java.project.uts.service.AdminService;
import pelatihan.java.project.uts.service.UserService;

/**
 *
 * @author ASUS
 */
@Controller
public class ProjectUtsController {
    
    @Autowired
    UserService userService;
    
     @Autowired
    AdminService adminService;
    
     AdminModel aModel= new AdminModel();
     AdminDto dto=new AdminDto();
     HttpSession session;
     
     UserModel uModel= new UserModel();
     UserDto dtou=new UserDto();
    
    String level; 
    void beda(ModelMap model,UserDto dto){
         dto.setPasuser(level);
         model.addAttribute("userDto", dto);
    }
    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String viewindex(){
        return "index";
    }
   @RequestMapping(value = "exit", method = RequestMethod.GET)
    public void exit(HttpServletRequest request, HttpServletResponse response) throws IOException {
        aModel = null;
        session = request.getSession();
        session.invalidate();
        
        response.sendRedirect("index.htm");
    }
    
     @RequestMapping(value = "/turun",method = RequestMethod.GET)
    public String viewturun(ModelMap model,UserDto dto){
        
         beda( model,dto);
         return "turun";
    }
    
    @RequestMapping(value = "/naik",method = RequestMethod.GET)
    public String viewnaik(ModelMap model,UserDto dto){
        beda( model,dto);
        return "naik";
    }
    @RequestMapping(value = "/bmi",method = RequestMethod.GET)
    public String viewbmi(ModelMap model,UserDto dto){
        beda( model,dto);
        return "hitungBmi";
    }
     @RequestMapping(value = "/ideal",method = RequestMethod.GET)
    public String viewideal(ModelMap model,UserDto dto){
        beda( model,dto);
        return "hitungIdeal";
    }
    
    @RequestMapping(value = "/loginAdmin",method = RequestMethod.GET)
    public String viewlog(){
        return "loginAdmin";
    }
    @RequestMapping(value = "/loginUser",method = RequestMethod.GET)
    public String viewlogy(){
        return "loginUser";
    }
    @RequestMapping(value = "/tentang",method = RequestMethod.GET)
    public String viewtentang(){
        return "tentang";
    }
    
    @RequestMapping(value = "/menu",method = RequestMethod.GET)
    public String viewmenu(ModelMap model,UserDto dto){
            dto.setPasuser(level);
            model.addAttribute("userDto", dto);
      return "menu";
    }
    
    @RequestMapping(value = "/tabelUser", method = RequestMethod.GET)
    public String viewtabelUser(ModelMap model){
        try {
            List<UserDto> listUserDto = userService.getListUser();
            model.addAttribute("listUserDto", listUserDto);
        } catch (Exception e) {
            e.printStackTrace();
        } 
        return "tabelUser";
    }
     @RequestMapping(value = "/doTambahDataUser", method = RequestMethod.GET)
    public String doTambahDataUser(ModelMap model){
        UserDto dto = null;      
        try {
            dto = new UserDto();
            model.addAttribute("userDto", dto);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return "insertUser";
    }
    
      @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    public String saveDataUser(UserDto userDto, ModelMap model) throws Exception{                
        ModelAndView mdl = new ModelAndView();
        userService.saveDataUser(userDto);                
        return "redirect:tabelUser.htm";
    }
    
     @RequestMapping(value = "/deleteDataUser", method = RequestMethod.GET)
    public String hapusData(String iduser, ModelMap model) throws Exception{        
        userService.deleteDataUser(iduser);
        return "redirect:tabelUser.htm";
    }
    
    @RequestMapping(value = "/getDataUpdateUser", method = RequestMethod.GET)
    public String getUpdateDataUser(String iduser, ModelMap model) throws Exception{   
        UserDto userDto =userService.getUpdateDataUser(iduser);
        model.addAttribute("userDto", userDto);
        return "updateUser";
    }
    
     @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
    public String editData(UserDto userDto) throws Exception{
        userService.doUpdateDataUser(userDto);
        return "redirect:tabelUser.htm";
    }
    
 /////////////////////////////////////////////////////////////////////////////////   
      @RequestMapping(value = "/tabelAdmin", method = RequestMethod.GET)
    public String viewtabelAdmin(ModelMap model){
        try {
            List<AdminDto> listAdminDto = adminService.getListAdmin();
            model.addAttribute("listAdminDto", listAdminDto);
        } catch (Exception e) {
            e.printStackTrace();
        } 
        return "tabelAdmin";
    }
    
    @RequestMapping(value = "doLogin", method = RequestMethod.POST)
    public void doLogin(AdminDto formDto, ModelMap model,HttpServletResponse response, HttpServletRequest request) throws Exception{
        String u= null;
        dto= adminService.getListDataAdminLogin(formDto);
        model.addAttribute("adminDto", dto);
        if(dto.getListDataAdmin().isEmpty()){
            u="loginAdmin.htm";
        } else{
            aModel=dto.getListDataAdmin().get(0);
            if(aModel.getUsadmin().equals(formDto.getUsadmin())){
               level="admin";
                u="menu.htm";
            }
            session= request.getSession(true);
            
            session.setAttribute("level",level);
            session.setAttribute("idadmin",dto.getIdadmin());
            session.setAttribute("nmadmin",dto.getNmadmin());
            session.setAttribute("usadmin",dto.getUsadmin());
            session.setAttribute("pasadmin",dto.getPasadmin());
            
        }
        response.sendRedirect(u);
    }
    
     @RequestMapping(value = "/saveAdmin", method = RequestMethod.POST)
    public String saveData(AdminDto adminDto, ModelMap model) throws Exception{                
        ModelAndView mdl = new ModelAndView();
        adminService.saveDataAdmin(adminDto);                
        return "redirect:loginAdmin.htm";
    } 
    
     @RequestMapping(value = "/doTambahDataAdmin", method = RequestMethod.GET)
    public String doTambahDataAdmin(ModelMap model){
        AdminDto dto = null;      
        try {
            dto = new AdminDto();
            model.addAttribute("adminDto", dto);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return "tambahAdmin";
    }
    
    
     @RequestMapping(value = "doLoginUser", method = RequestMethod.POST)
    public void doLoginUser(UserDto formDto, ModelMap model,HttpServletResponse response, HttpServletRequest request) throws Exception{
        String u= null;
        dtou= userService.getListDataUserLogin(formDto);
        model.addAttribute("userDto", dtou);
        if(dtou.getListDataUser().isEmpty()){
            u="loginUser.htm";
        } else{
            uModel=dtou.getListDataUser().get(0);
            if(uModel.getUsuser().equals(formDto.getUsuser())){
               level="user";
                u="menu.htm";
            }
            
            session= request.getSession(true);
            session.setAttribute("level",level);
            session.setAttribute("iduser",dtou.getIduser());
            session.setAttribute("nmuser",dtou.getNmuser());
            session.setAttribute("ususer",dtou.getUsuser());
            session.setAttribute("pasuser",dtou.getPasuser());
            session.setAttribute("almtuser",dtou.getAlmtuser());
            session.setAttribute("notelp",dtou.getNotelp());
            
        }
        response.sendRedirect(u);
    }
   
    
    
    
    
}
    
   
