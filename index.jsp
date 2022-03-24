<%-- 
    Document   : index
    Created on : Mar 23, 2022, 11:19:02 PM
    Author     : billt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
        <link rel="stylesheet" href="calculator.css">
    </head>
    <body>
        <center>
            <form action="ResultServlet" method="post">
                <table  class="calculator">
                    <tr>
                        <td colspan="4"><input dir="LTR" type="text" maxlength="25" class="eqInput" name="eqInput" id="eqInput">
                            <% 
                                String result = (String)request.getAttribute("result");
                                if(result != null){
                                    out.println("<script>");
                                    out.println("var eqInput = document.getElementById(\"eqInput\");");
                                    out.println("eqInput.value = " + result);
                                    out.println("</script>");
                                }
                            %>
                        </td>
                    </tr>
                    <tr>
                        <td><button type="button" value="7" class="numberButton" onclick="updateEq(this.value)">7</button></td>
                        <td><button type="button" value="8" class="numberButton" onclick="updateEq(this.value)">8</button></td>
                        <td><button type="button" value="9" class="numberButton" onclick="updateEq(this.value)">9</button></td>
                        <td><button type="button" value="-" class="numberButton" onclick="updateEq(this.value)">-</button></td>
                    </tr>
                    <tr>
                        <td><button type="button" value="4" class="numberButton" onclick="updateEq(this.value)">4</button></td>
                        <td><button type="button" value="5" class="numberButton" onclick="updateEq(this.value)">5</button></td>
                        <td><button type="button" value="6" class="numberButton" onclick="updateEq(this.value)">6</button></td>
                        <td><button type="button" value="+" class="numberButton" onclick="updateEq(this.value)">+</button></td>
                    </tr>
                    <tr>
                        <td><button type="button" value="1" class="numberButton" onclick="updateEq(this.value)">1</button></td>
                        <td><button type="button" value="2" class="numberButton" onclick="updateEq(this.value)">2</button></td>
                        <td><button type="button" value="3" class="numberButton" onclick="updateEq(this.value)">3</button></td>
                        <td><button type="button" value="*" class="numberButton" onclick="updateEq(this.value)">*</button></td>
                    </tr>
                    <tr>
                        <td><button type="button" value="." class="numberButton" onclick="updateEq(this.value)">.</button></td>
                        <td><button type="button" value="0" class="numberButton" onclick="updateEq(this.value)">0</button></td>
                        <td><button type="submit" value="=" class="numberButton">=</button></td>
                        <td><button type="button" value="/" class="numberButton" onclick="updateEq(this.value)">/</button></td>
                    </tr>
                </table>
            </form>
        </center>
        <script src="updateEquation.js"></script>
    </body>
</html>
