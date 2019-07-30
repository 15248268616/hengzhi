package servlet;

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

@WebServlet("/ArtiCode")
public class artiServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //定义验证码的宽度和高度
        int width = 90,height = 40;
        //在内存中创建图片
        BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
        //创建图片的上下文
        Graphics2D img = image.createGraphics();
        //设置背景
        img.setColor(getRandomColor(240,250));
        //设置字体
        img.setFont(new Font("微软雅黑", Font.PLAIN,16));

        //开始绘制
        img.fillRect(0,0,width,height);


        //产生随机对象用于算术表达式的数字
        Random random = new Random();


        //干扰线的绘制(5条干扰线)
        img.setColor(getRandomColor(150,230));
        for(int i = 0;i < 5;i ++){
            int x = random.nextInt(width);
            int y = random.nextInt(height);
            int x1 = random.nextInt(70);
            int y1 = random.nextInt(70);
            img.drawLine(x, y, x1, y1);
        }

        //开始进行对算术验证码表达式的拼接
        //生成[0，9]的随机数作为两个运算数字
        int num1 = (int)(Math.random()*10);
        int num2 = (int)(Math.random()*10);
        //产生一个[0,2]的随机数用于随机产生运算符
        int opertor = random.nextInt(3);
        //记录符号
        String opreaorStr = null;
        int result = 0;
        switch (opertor){
            case 0 : opreaorStr = "+";result = num1 + num2;break;
            case 1 : opreaorStr = "-";result = num1 - num2;break;
            case 2 : opreaorStr = "*";result = num1 * num2;break;
        }
        //拼接算术表达式
        String calc = num1 + " " + opreaorStr +" "+ num2 +" = ?";
        //设置随机颜色
        img.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110)));
        //绘制表达式
        img.drawString(calc,5,25);
        //结束绘制
        img.dispose();

        request.getSession().setAttribute("articode",calc);
        System.out.println("artiServlet:cale:" + calc);
        try {
            //输出图片到页面
            ImageIO.write(image,"JPG",response.getOutputStream());
            response.flushBuffer();

        }catch (Exception e){
            e.printStackTrace();
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    //    范围随机颜色
    public static Color getRandomColor(int fc,int bc){
        //利用随机数
        Random random  = new Random();
        //随机颜色,了解颜色-Color(red,green,blue).rgb三元色 0-255
        if(fc>255)fc = 255;
        if(bc>255)bc = 255;
        int r = fc+random.nextInt(bc-fc);
        int g = fc+random.nextInt(bc-fc);
        int b = fc+random.nextInt(bc-fc);
        return new Color(r,g,b);
    }

}

