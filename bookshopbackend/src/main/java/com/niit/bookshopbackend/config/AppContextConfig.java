package com.niit.bookshopbackend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;

@Configuration
@ComponentScan(basePackages="com.niit")
public class AppContextConfig {
		
	@Bean
	public DataSource getH2DataSource()
	{
		BasicDataSource dataSource=new BasicDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/testjava");
		dataSource.setUsername("sa");
		dataSource.setPassword("");
		return dataSource;
	}
	@Autowired
	@Bean	
	public LocalSessionFactoryBean getSessionFactory(DataSource datasource)
	
	{
		LocalSessionFactoryBean sessionFactory=new LocalSessionFactoryBean();
		sessionFactory.setDataSource(getH2DataSource());
		sessionFactory.setHibernateProperties(getHibernateProerties());
		sessionFactory.setPackagesToScan(new String[] {"com.niit.bookshopbackend.model"});
		return sessionFactory;
	}
	
	public Properties getHibernateProerties()
	
	{		
		Properties properties=new Properties();
		properties.setProperty("hibernate.dialect","org.hibernate.dialect.H2Dialect");
		properties.setProperty("hibernate.show_sql", "true");
		properties.setProperty("hibernate.hbm2ddl.auto", "update");
		return properties;	
		
	}
	
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory)
	{
		HibernateTransactionManager transactionManager=new HibernateTransactionManager();
		transactionManager.setSessionFactory(sessionFactory);
	    return transactionManager;
	}
	
	
}
