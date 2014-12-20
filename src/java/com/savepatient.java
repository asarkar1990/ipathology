/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author arindam
 */
public class savepatient {
    String refno;
    Connection con;
    Statement st;
    ResultSet rs;
    public savepatient(){
        try
        {
            Class.forName("org.postgresql.Driver");
            con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/ipathology","arindam", "linux");
            st=con.createStatement();
            
        }catch(Exception ee)
        {
            ee.printStackTrace();
        }
        
        
    }
     
    public String SavePatientInfo(String Clinic_id,String name,String age, String mobile) throws SQLException
    {
         String query= "SELECT save_nwpatient('"+name+"',"+age+",'"+mobile+"','"+Clinic_id+"')";
         rs= st.executeQuery(query);
         if(rs.next())
         {
            refno = rs.getString(1);
            return refno;
             
         }
         else
         {
         return "no return";
         }
         
    }
 
    
}
