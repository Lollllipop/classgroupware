package com.ja.classgroupware.base.listener;

import java.io.IOException;
import java.io.StringReader;
import java.sql.DriverManager;
import java.util.Properties;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.commons.dbcp2.ConnectionFactory;
import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDriver;
import org.apache.commons.pool2.impl.GenericObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;

public class DBCPInitListener implements ServletContextListener {
	
	private static String connectionUrl = null;
	
    private void setConnectionUrl(String connectionUrl) {
    	DBCPInitListener.connectionUrl = connectionUrl;
    }
    
    public static String getConnectionUrl() {
    	return connectionUrl;
    }
	
    public DBCPInitListener() {}

    public void contextDestroyed(ServletContextEvent arg0)  {}

    public void contextInitialized(ServletContextEvent sce)  { 
    	String 		poolConfig 		= sce.getServletContext().getInitParameter("POOL_CONFIG");
    	Properties 	poolConfigProps = this.splitPoolConfigParam(poolConfig); 
    	
    	this.initConnectionPool(poolConfigProps);
    }
    
	private Properties splitPoolConfigParam(String poolConfig) {
    	Properties properties = new Properties();
    	
    	try {
    		properties.load(new StringReader(poolConfig));
    	} catch (IOException e) {
    		throw new RuntimeException("config load fail", e);
    	}
    	
    	return properties;
	}

	private void initConnectionPool(Properties poolConfigProps) {
	   	try {
    		String jdbcDriver 		= poolConfigProps.getProperty("jdbcDriver");
    		String jdbcUrl 			= poolConfigProps.getProperty("jdbcUrl");
    		String dbUser 			= poolConfigProps.getProperty("dbUser");
    		String dbPass 			= poolConfigProps.getProperty("dbPass");
    		String validationQuery 	= poolConfigProps.getProperty("validationQuery");
    		String dbcpDriver 		= poolConfigProps.getProperty("dbcpDriver");
    		String dbcpUrl 			= poolConfigProps.getProperty("dbcpUrl");
    		String poolName 		= poolConfigProps.getProperty("poolName");
    		
    		long timeBetweenEvictionRunsMillis 	= 1000L * 60L * 5L;
    		int minIdle 						= Integer.parseInt(poolConfigProps.getProperty("minIdle"));
    		int maxTotal 						= Integer.parseInt(poolConfigProps.getProperty("maxTotal"));
    		
    		this.setConnectionUrl(dbcpUrl + poolName);
    		
			Class.forName(jdbcDriver);

			ConnectionFactory connFactory = new DriverManagerConnectionFactory(jdbcUrl, dbUser, dbPass);

			PoolableConnectionFactory poolableConnFactory = new PoolableConnectionFactory(connFactory, null);
			poolableConnFactory.setValidationQuery(validationQuery);

			GenericObjectPoolConfig<PoolableConnection> poolConfig = new GenericObjectPoolConfig<PoolableConnection>();
			poolConfig.setTimeBetweenEvictionRunsMillis(timeBetweenEvictionRunsMillis);
			poolConfig.setTestWhileIdle(true);
			poolConfig.setMinIdle(minIdle);
			poolConfig.setMaxTotal(maxTotal);

			GenericObjectPool<PoolableConnection> connectionPool = new GenericObjectPool<PoolableConnection>(poolableConnFactory, poolConfig);
			poolableConnFactory.setPool(connectionPool);
			
			Class.forName(dbcpDriver);
			PoolingDriver driver = (PoolingDriver) DriverManager.getDriver(dbcpUrl);
			driver.registerPool(poolName, connectionPool);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	
}
