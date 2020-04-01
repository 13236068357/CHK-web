package cn.siso.chk.web.servlet;

import org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

@WebServlet("/checkCodeServlet")
public class CheckCodeServlet extends HttpServlet {
    //宽高
    int width = 100;
    int height = 45;
    //创建BufferedImage对象
    BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
    //创建画笔
    Graphics graphics = image.getGraphics();
    Random random = new Random();
    //验证码范围
    String string = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //画笔颜色
        graphics.setColor(Color.cyan);
        //背景色
        graphics.fillRect(0, 0, width, height);

        graphics.setColor(Color.black);
        //边框
        graphics.drawRect(0, 0, width - 1, height - 1);

        //随机验证码
        graphics.setColor(Color.black);
        Font font = new Font("宋体", Font.BOLD, 30);
        graphics.setFont(font);
        String check_code = "";
        for (int i = 1; i < 5; i++) {
            int index = random.nextInt(string.length());
            char ch = string.charAt(index);
            check_code = check_code + ch;
            graphics.drawString(ch + "", width / 5 * i, 30);
        }
        req.getSession().setAttribute("CHECK_CODE", check_code);

        //随机划线
        graphics.setColor(Color.green);
        for (int i = 0; i < 10; i++) {
            int x1 = random.nextInt(width);
            int x2 = random.nextInt(width);
            int y1 = random.nextInt(height);
            int y2 = random.nextInt(height);

            graphics.drawLine(x1, y1, x2, y2);
        }

        //将图片输出到界面
        ImageIO.write(image, "jpg", resp.getOutputStream());
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
