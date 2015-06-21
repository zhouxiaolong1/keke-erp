/*
 * @(#) JettyServer.java
 * @Author:zhouxl(mail) 2014-8-23
 * @Copyright (c) 2002-2014 PuHui Limited. All rights reserved.
 */
package com.keke.server;

import org.eclipse.jetty.server.Connector;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.nio.SelectChannelConnector;
import org.eclipse.jetty.webapp.WebAppContext;

/**
  * @author zhouxl (mail) 2014-8-23
  * @version 1.0
  * @Function Jetty服务器 右键可以debug  
  */
public class JettyServer {
   
    public static void main(String[] args) throws Exception {
        Server server = new Server();
        Connector connector = new SelectChannelConnector();
        connector.setPort(8080);  

        server.setConnectors(new Connector[] { connector });

        WebAppContext webAppContext = new WebAppContext("\\src\\main\\webapp", "/keke-erp");

        // webAppContext.setContextPath("/");
        webAppContext.setDescriptor("src\\main\\webapp/WEB-INF/web.xml");
        webAppContext.setResourceBase("src\\main\\webapp");
        webAppContext.setDisplayName("keke-erp");
        webAppContext.setClassLoader(Thread.currentThread().getContextClassLoader());
        webAppContext.setConfigurationDiscovered(true);
        webAppContext.setParentLoaderPriority(true);
        server.setHandler(webAppContext);
        System.out.println(webAppContext.getContextPath());
        System.out.println(webAppContext.getDescriptor());
        System.out.println(webAppContext.getResourceBase());
        System.out.println(webAppContext.getBaseResource());

        try {
            server.start();
        } catch (Exception e) { 
            e.printStackTrace();
        }
        System.out.println("server is  start");
    }   
}






