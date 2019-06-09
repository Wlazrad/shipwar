package andrzej.appdemo.configuration;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	CustomizeLogoutSuccessHandler customizeLogoutSuccessHandler;
	@Autowired
	private BCryptPasswordEncoder bcp;
	
	@Autowired
	private DataSource ds;


	
	@Value("${spring.queries.users-query}")
	private String usersQuery;
	
	@Value("${spring.queries.roles-query}")
	private String rolesQuery;
	
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().usersByUsernameQuery(usersQuery)
		.authoritiesByUsernameQuery(rolesQuery)
		.dataSource(ds).passwordEncoder(bcp);
	}
	
	protected void configure(HttpSecurity httpSec) throws Exception {
		httpSec
		.authorizeRequests()
		.antMatchers("/").permitAll()
		.antMatchers("/reload")	.permitAll()
		.antMatchers("/index").permitAll()
		.antMatchers("/login").permitAll()
		.antMatchers("/register").permitAll()
		.antMatchers("/adduser").permitAll()
		.antMatchers("/viewexpert/{expert_id}").permitAll()
		.antMatchers("/resources/css/style.css").permitAll()
		.antMatchers("/resources/images/{expert_id}").permitAll()
                .antMatchers("/search/{searchWord}").permitAll()
		.antMatchers("/activatelink/**").permitAll()
				.antMatchers("/myexperts/{expert_id}").hasAnyAuthority("ROLE_USER")
				.antMatchers("/shipwar").hasAnyAuthority("ROLE_USER", "ROLE_ADMIN")

//		.antMatchers("/admin").hasAuthority("ROLE_ADMIN")
		.anyRequest().authenticated()
		.and().csrf().disable()
		.formLogin()
		.loginPage("/login")
		.failureUrl("/login?error=true")
		.defaultSuccessUrl("/index").usernameParameter("email")
		.passwordParameter("password")
		.and().logout().logoutSuccessHandler(customizeLogoutSuccessHandler)
		.logoutSuccessUrl("/index")
		.and().exceptionHandling().accessDeniedPage("/denied")
        .and().sessionManagement().maximumSessions(1).sessionRegistry(sessionRegistry());

	}


    @Bean
    public SessionRegistry sessionRegistry() {
        return new SessionRegistryImpl();
    }


}