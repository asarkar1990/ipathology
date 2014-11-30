<%-- 
    Document   : index
    Created on : 30 Nov, 2014, 2:51:23 PM
    Author     : arindam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/> 
        <title>Sign up</title>
        <script type="text/javascript">
            function validateForm() {
               
              
                
        }

            
        </script>
        <%
           if(request.getParameter("btn_submit")!=null)
           {
              int id=-1;
               String name=request.getParameter("txtname").toString();
               String email=request.getParameter("txtemail").toString();
               
               Student.SaveStudent saveObj=new Student.SaveStudent();
               
               int MaxId= saveObj.MaxId();
               if (MaxId!=-1){
                   
                   id=MaxId+1;
                 
                      
                }else{id=0;
               }
               
               int result= saveObj.SaveStudentInfo(id,name,email);
               if(result==-1)
               {
                   out.print("Some error Ocured");
               }else
               {
                   out.print("Saved "+result+"  records");
               }
           }
            
            
        %>
    </head>
    <body>
        <div id="wrapper">
    
        <h1>New Student Registration</h1>
        <form id="myForm" name="regform" action="index.jsp"  method="post" onsubmit="return validateForm()">
        
            <table>
                <!--<tr>
                    <td>Student Id:</td>
                    <td><input type="text" id="txtid" name="txtid"/></td>                        
                </tr>-->
                 <tr>
                    <td>Student Name:</td>
                    <td><input type="text" id="txtname" name="txtname" autocomplete="off" required=""/></td>                        
                </tr>
                 <tr>
                    <td>Student Email:</td>
                    <td><input type="email" id="txtemail" name="txtemail" autocomplete="off" required=""/></td>                        
                </tr> 
                <tr>
                    <td></td>
                    <td><input type="submit" id="btn_submit" name="btn_submit" value="Signup" ></td>                        
                </tr> 
                
            </table>
            
        </form>
        <p> <font color="red" id="nameerror"></p>
 
        <p <font color="red"  id="emailerror"></p>
       </div>
</body>
</html>
           
        
    

