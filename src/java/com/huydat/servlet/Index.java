/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.huydat.servlet;

import com.huydat.entities.Catalog;
import com.huydat.entities.ExrateList;
import com.huydat.entities.Rss;
import com.huydat.entities.RssItem;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

/**
 *
 * @author datdh
 */
public class Index extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Catalog> catalogs = getCatalogs();
        
        request.setAttribute("catalogs", catalogs);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    private List<Catalog> getCatalogs() {
        List<Catalog> catalogs = new ArrayList<>();
        try {
            List<RssItem> items = null;
            Rss rss = null;
            
            rss = getRss(getServletContext().getInitParameter("bongda-url"));
            items = rss.getChannel().getItems();
            catalogs.add(new Catalog("Bóng đá", items));
            
            rss = getRss(getServletContext().getInitParameter("anninhhinhsu-url"));
            items = rss.getChannel().getItems();
            catalogs.add(new Catalog("An ninh hình sự", items));
            
            rss = getRss(getServletContext().getInitParameter("thoitranghitech-url"));
            items = rss.getChannel().getItems();
            catalogs.add(new Catalog("Thời trang high tech", items));
        } catch (JAXBException ex) {
            Logger.getLogger(Index.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(Index.class.getName()).log(Level.SEVERE, null, ex);
        }
        return catalogs;
    }

    private Rss getRss(String url) throws JAXBException, MalformedURLException, IOException {
        URL u = new URL(url);
        InputStream inputStream = u.openStream();
        JAXBContext context = JAXBContext.newInstance(Rss.class);
        Unmarshaller unmarshaller = context.createUnmarshaller();
        Rss rss = (Rss) unmarshaller.unmarshal(inputStream);
        return rss;
    }
    private ExrateList getExrate(String url) throws MalformedURLException, IOException, JAXBException{
        URL u = new URL(url);
        InputStream inputStream = u.openStream();
        JAXBContext context = JAXBContext.newInstance(ExrateList.class);
        Unmarshaller unmarshaller = context.createUnmarshaller();
        ExrateList exrateList = (ExrateList) unmarshaller.unmarshal(inputStream);
        return exrateList;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
