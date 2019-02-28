<!--#include file = "lcwenvironmentVariables.asp"-->
<%
' Name:        dbConnection.asp
' Description: Include for the location of the SQLServer Database

Dim objConn			'ADO Connection

'Connection to the database

Set objConn = Server.CreateObject("ADODB.Connection")
if Err.number <> 0 Then
  Response.Write "There is a problem in creating the connection Object."
    Err.Clear
  noError = false
end if




objConn.Open strConn
if Err.number <> 0 Then
  Response.Write "There is a problem in opening the connection Object."
  Err.Clear
  noError = false
end if
%>
