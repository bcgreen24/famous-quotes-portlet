<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ page import="javax.portlet.PortletPreferences" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.Scanner" %>
<portlet:defineObjects />

<%
ArrayList<String> quotes = new ArrayList<String>();
File infile = new File(application.getRealPath("/") + "quotes.txt");
FileReader reader = new FileReader(infile);
Scanner input = new Scanner(infile);

while(input.hasNextLine()){
	quotes.add(input.nextLine());
}

input.close();
reader.close();
Random r = new Random();
out.println(quotes.get(r.nextInt(quotes.size())));
%>