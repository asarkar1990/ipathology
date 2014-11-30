/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Student;

import java.sql.*;

/**
 *
 * @author arindam
 */
public class SaveStudent {
     
    Connection con;
    Statement st;
    ResultSet rs;
    public SaveStudent(){
        try
        {
            Class.forName("org.postgresql.Driver");
            con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/studentdb","arindam", "linux");
            st=con.createStatement();
            
        }catch(Exception ee)
        {
            ee.printStackTrace();
        }
        
        
    }
     
    public int SaveStudentInfo(int id,String name, String email)
    {
         
           try{
               String query="INSERT INTO tbl_student(id, name, email) VALUES ('"+id+"','"+name+"','"+email+"');";

               
               int i= st.executeUpdate(query);
               return i;
        }catch(Exception e)
        {
            e.printStackTrace();
            return -1;
        }
    }
   public int MaxId()
   {  
      int maxid;
       try{
           
              
               String query= "SELECT MAX(id) FROM tbl_student;";

               
              
             rs=st.executeQuery(query);
             rs.next(); 
             maxid=rs.getInt(1);
             return  maxid;
        }catch(Exception e)
        {
            e.printStackTrace();
             System.out.printf("message arindam:error");
            return -1;
           
        }
       
       
       
       
     
       
   }
   
}
    
          
    
    
    
    
    
    
    

