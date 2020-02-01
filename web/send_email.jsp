<%-- 
    Document   : send_email
    Created on : Jan 31, 2020, 3:34:58 PM
    Author     : teguhteja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send Email</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>
    </head>
    <body>
        <table border="0" width="35%" align="center">
            <caption><h2>Send Email Form</h2></caption>
            <tr>
                <td width="20%">Email</td>
                <td><input type="text" id="email" size="50"/></td>
            </tr>
            <tr>
                <td>Subject </td>
                <td><input type="text" id="subject" size="50"/></td>
            </tr>
            <tr>
                <td>Message </td>
                <td><textarea rows="10" cols="39" id="message"></textarea> </td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Send" onclick="callJqueryAjax()"/></td>
            </tr>
        </table>
        <table border="0" width="35%" align="center">
            <tr>
                <td><h4 id="result"></h4>
                    <script>
                        function callJqueryAjax() {
                            var subject = $('#subject').val();
                            var email = $('#email').val();
                            var message = $('#message').val();
                            $.ajax({
                                url: 'EmailSendingServlet',
                                method: 'POST',
                                data: {subject: subject, email: email, message: message},
                                success: function (resultText) {
                                    $('#result').html(resultText);
                                },
                                error: function (jqXHR, exception) {
                                    console.log('Error occured!!');
                                }
                            });
                        }
                    </script>
                </td>
            </tr>
        </table>
    </table>
</body>

</html>
