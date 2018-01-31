
package resources;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.InetAddress;
import java.net.Socket;


public class Sock {
	
	private static final long serialVersionUID = 1L;
	private static Socket socket;

    public static void sendmessage(String command)
    {
        try
        {
        	
            String host = "183.82.115.149";
            int port = 8004;
            InetAddress address = InetAddress.getByName(host);
            socket = new Socket(address, port);
            
       //     System.out.println("$$$$"+command);
 
            //Send the message to the server
            OutputStream os = socket.getOutputStream();
            OutputStreamWriter osw = new OutputStreamWriter(os);
            BufferedWriter bw = new BufferedWriter(osw);
 
            //String number = "rdevCmd 5000 #SMT01Status#";
            //String number =  command;
            
            String sendMessage = command + "\n";
            bw.write(sendMessage);
            bw.flush();
            System.out.println("Message sent to the server : "+sendMessage);
 
            //Get the return message from the server
            InputStream is = socket.getInputStream();
            InputStreamReader isr = new InputStreamReader(is);
            BufferedReader br = new BufferedReader(isr);
            String message = br.readLine();
            System.out.println("Message received from the server : " +message);
        }
        catch (Exception exception) 
        {
            exception.printStackTrace();
        }
        finally
        {
            //Closing the socket
            try
            {
                socket.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
    }
}
