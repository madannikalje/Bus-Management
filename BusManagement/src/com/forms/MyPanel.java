/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.forms;

import java.awt.Graphics;
import java.awt.Image;
import javax.swing.ImageIcon;
import javax.swing.JPanel;

/**
 *
 * @author Administrator
 */
//Panel means rectangle
public class MyPanel extends JPanel {
    Image img;
    public MyPanel(String filename)
    {
        ImageIcon obj=new ImageIcon(filename);
        img=obj.getImage();
        
    }

    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g); //To change body of generated methods, choose Tools | Templates.
        g.drawImage(img,0,0,getWidth(), getHeight(), this);
    }

   
    
    
}
