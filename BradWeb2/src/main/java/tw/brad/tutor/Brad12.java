package tw.brad.tutor;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Brad12")
public class Brad12 extends HttpServlet {
	
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("image/jpeg");
		
		int w =400,h = 20;
		double rate = Double.parseDouble(request.getParameter("rate"));//50%
		
		BufferedImage img = new BufferedImage(400, 20, BufferedImage.TYPE_INT_RGB);
		Graphics2D g2d = img.createGraphics();
		
		g2d.setColor(Color.yellow);
		g2d.fillRect(0, 0, w, h);
		g2d.setColor(Color.red);
		g2d.fillRect(0, 0, (int)(rate/100*w), h);
		
		
		ServletOutputStream out = response.getOutputStream();
		ImageIO.write(img, "jpeg", out);
		
		response.flushBuffer();
	}


}
