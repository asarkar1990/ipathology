<%-- 
    Document   : preg, new patient registration form html
    Created on : 16 Dec, 2014, 10:55:00 PM
    Author     : arindam
--%>   
    <body>
          <div id="dvform">
       
        <form id="regform" name="regform" method="post" action="RegServ">
             <table cellspacing="10">
                <thead>
                    <tr>
                    <th colspan="2">
                            Registraion
                        </th>
                    </tr>
               
                <thead
                      <tr class="blank_row"><td colspan="2">&nbsp;</td></tr>
                   

                <tr>
                    <td>Patient name:</td>
                    <td><input type="text" id="p_name" name="p_name" required="true"</td>
                    
                </tr>
                <tr>
                    <td>Age:</td>
                    <td><input type="number" id="p_name" name="p_age" required="true"</td>
                </tr>
                <tr>
                    <td>Contact number:</td>
                    <td><input type="tel" id="p_name" name="p_contact" required="true"</td>
                </tr>   
                 <tr class="blank_row"><td colspan="2">&nbsp;</td></tr>
                 <tr><td></td><td><center><input type="submit" value="Save" name="btn_save" id="btn_save"></center></td></tr>
                
                
            </table>   
   
            </form>
          </div>
           
      
        
    </body>

