package it.project.configuration;
import static org.hibernate.cfg.AvailableSettings.C3P0_ACQUIRE_INCREMENT;
import static org.hibernate.cfg.AvailableSettings.C3P0_MAX_SIZE;
import static org.hibernate.cfg.AvailableSettings.C3P0_MAX_STATEMENTS;
import static org.hibernate.cfg.AvailableSettings.C3P0_MIN_SIZE;
import static org.hibernate.cfg.AvailableSettings.C3P0_TIMEOUT;

import java.util.Locale;
import java.util.Properties;

import javax.persistence.SharedCacheMode;
import javax.persistence.ValidationMode;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
//configurazione standard per app web su spring
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
@EnableWebMvc // le configurazioni standard di spring per le app web
@ComponentScan(basePackages = { "it.project.*"})
@EnableTransactionManagement // autorizza transazioni sul db
@PropertySource(value = { "classpath:application.properties" }) // questo file potrebbe essere esternalizzato, indica
																// che e dentro il prog
// deve avere questo nome
@EnableJpaRepositories(basePackages = {"it.project.dao"}, entityManagerFactoryRef = "emf", transactionManagerRef = "tmf")
public class ContextConfiguration implements WebMvcConfigurer {
	@Autowired // oggetto gia istanziato e pronto all'uso
	private Environment environment;

	@Override
	// delega richieste non gestite nel DispatcherServlet
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();// lo "/"
	}

	@Bean
	// gestione delle view grafiche
	public InternalResourceViewResolver geInternalResourceViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/view/");
		resolver.setSuffix(".jsp");
		return resolver;
	}

	@Bean
	public TilesConfigurer geTilesConfigurer() {
		TilesConfigurer configurer = new TilesConfigurer();
		configurer.setDefinitions("/WEB-INF/layout/definition/tiles.xml");
		configurer.setCheckRefresh(true);
		return configurer;
	}

	// aggancio il tiles al view resolver
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		TilesViewResolver resolver = new TilesViewResolver();
		registry.viewResolver(resolver);
	}

//	// bean di validazione form spring
//	@Bean
//	public LocalValidatorFactoryBean validator() {
//		LocalValidatorFactoryBean validator = new LocalValidatorFactoryBean();
//		validator.setValidationMessageSource(messageSource());
//		return validator;
//	}

//	@Override
//	public Validator getValidator() {
//		return validator();
//	}

//	// configurazione risorse messaggi
//	@Bean
//	public MessageSource messageSource() {
//		ResourceBundleMessageSource source = new ResourceBundleMessageSource();
//		source.setBasename("message");
//		return source;
//	}

	// bean di configurazione del DataSource
	@Bean(name = "dataSource")
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(environment.getRequiredProperty("jdbc.driver"));
		dataSource.setUrl(environment.getRequiredProperty("jdbc.url"));
		dataSource.setUsername(environment.getRequiredProperty("jdbc.username"));
		dataSource.setPassword(environment.getRequiredProperty("jdbc.password"));
		return dataSource;
	}

	// bean per lavorare con jdbcTemplate
	@Bean
	public JdbcTemplate getJdbcTemplate(DataSource dataSource) {
		return new JdbcTemplate(dataSource);
	}

//	// bean per gestire transazioni con DataSource
//	@Bean
//	public DataSourceTransactionManager getDataSourceTransactionManager() {
//		DataSourceTransactionManager manager = new DataSourceTransactionManager();
//		manager.setDataSource(getDataSource());
//		return manager;
//	}

	// bean di configurazione generale JPA
	@Bean
	public JpaVendorAdapter getJpaVendorAdapter() {
		HibernateJpaVendorAdapter adapter = new HibernateJpaVendorAdapter();
		adapter.setShowSql(true);
		adapter.setGenerateDdl(false);
		adapter.setDatabasePlatform(environment.getRequiredProperty("hibernate.dialect"));
		return adapter;
	}

	// bean di configurazione Entity Manager di Hibernate
	@Bean(name = "emf")
	public LocalContainerEntityManagerFactoryBean getEntityManagerFactoryBean()
	{
	LocalContainerEntityManagerFactoryBean bean = new LocalContainerEntityManagerFactoryBean();
	bean.setJpaVendorAdapter(getJpaVendorAdapter());
	bean.setDataSource(getDataSource());
	bean.setPackagesToScan("it.project.model");
	bean.setJpaProperties(getJpaProperties());
	bean.setSharedCacheMode(SharedCacheMode.ENABLE_SELECTIVE);
	bean.setValidationMode(ValidationMode.NONE);
	return bean;
	}

	// metodo per definire le proprietà di hibernate utilizzando libreria C3P0
	private Properties getJpaProperties() {
		Properties prop = new Properties();
		prop.put("javax.persistence.schema-generation.database.action", "none");
		prop.put("hibernate.dialect", environment.getRequiredProperty("hibernate.dialect"));
		prop.put("hibernate.show_sql", environment.getRequiredProperty("hibernate.show_sql"));
		prop.put("hibernate.format_sql", environment.getRequiredProperty("hibernate.format_sql"));
		prop.put(C3P0_MIN_SIZE, environment.getProperty("hibernate.c3p0.min_size"));
		prop.put(C3P0_MAX_SIZE, environment.getProperty("hibernate.c3p0.max_size"));
		prop.put(C3P0_ACQUIRE_INCREMENT, environment.getRequiredProperty("hibernate.c3p0.acquire_increment"));
		prop.put(C3P0_TIMEOUT, environment.getRequiredProperty("hibernate.c3p0.timeout"));
		prop.put(C3P0_MAX_STATEMENTS, environment.getProperty("hibernate.c3p0.max_statements"));
		return prop;
	}

	// bean per gestione transazioni Jpa (in alternativa a quello associato al
	// DataSource)
	@Bean(name = "tmf")
	public JpaTransactionManager getJpaTransactionManager() {
		JpaTransactionManager manager = new JpaTransactionManager();
		manager.setEntityManagerFactory(getEntityManagerFactoryBean().getObject());
		return manager;
	}
	
	//bean per la gestione delle impostazioni locale
	@Bean
	public SessionLocaleResolver localeResolver()
	{
		SessionLocaleResolver resolver = new SessionLocaleResolver();
		resolver.setDefaultLocale(new Locale("it","IT"));
		return resolver;
	}

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		LocaleChangeInterceptor interceptor = new LocaleChangeInterceptor();
		interceptor.setParamName("language");
		registry.addInterceptor(interceptor);
	}
	
}












