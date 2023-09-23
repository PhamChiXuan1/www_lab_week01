package vn.edu.iuh.fit.www_lab_week01.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.iuh.fit.www_lab_week01.entities.Account;
import vn.edu.iuh.fit.www_lab_week01.entities.GrantAccess;
import vn.edu.iuh.fit.www_lab_week01.entities.Role;
import vn.edu.iuh.fit.www_lab_week01.repositories.ConnectDB;
import vn.edu.iuh.fit.www_lab_week01.repositories.RoleRepository;

import java.io.IOException;

@WebServlet("/addrole")
public class AddRoleServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accountID = req.getParameter("id");
        String roleID = req.getParameter("roleID");
        boolean isGrant = Boolean.parseBoolean(req.getParameter("isGrant"));
        String note = req.getParameter("note");

        Account account = new Account();
        account.setAccountId(accountID);
        Role role = new Role();
        role.setRoleId(roleID);
        GrantAccess grantAccess = new GrantAccess(account, role, isGrant, note);
        RoleRepository roleRepository = new RoleRepository(ConnectDB.getConnection());
        boolean addRole = roleRepository.addRole(grantAccess);
        HttpSession session = req.getSession();

        if(addRole){
            session.setAttribute("success1","Add Role Complete");
            resp.sendRedirect("addRole.jsp");
        }else{
            session.setAttribute("error1", "Failed");
            resp.sendRedirect("addRole.jsp");
        }
    }
}
