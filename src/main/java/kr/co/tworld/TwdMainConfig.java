package kr.co.tworld;

import java.util.HashMap;

import javax.servlet.Filter;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.cloud.config.java.AbstractCloudConfig;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.session.data.redis.config.ConfigureRedisAction;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;
import org.springframework.web.filter.CharacterEncodingFilter;

@Configuration
@EnableRedisHttpSession
@EnableAutoConfiguration
public class TwdMainConfig extends AbstractCloudConfig  {
	
	@Value("${services.redis.name}")
	private String redisName;

	@Bean
	public RedisConnectionFactory redisConnectionFactory() {
		return connectionFactory().redisConnectionFactory(redisName);
	}
	 
	@Bean
	public RedisTemplate<String, Object> redisTemplateObj() {
	    RedisTemplate<String, Object> template = new RedisTemplate<String, Object>();
	    template.setConnectionFactory(redisConnectionFactory());
	    return template;
	}
	
	@Bean
	public RedisTemplate<String, String> redisTemplateStr() {
	    RedisTemplate<String, String> template = new RedisTemplate<String, String>();
	    template.setConnectionFactory(redisConnectionFactory());
	    return template;
	}
	
	@Bean
	public RedisTemplate<String, HashMap> redisTemplateHash() {
	    RedisTemplate<String, HashMap> template = new RedisTemplate<String, HashMap>();
	    template.setConnectionFactory(redisConnectionFactory());
	    return template;
	}
	
	//redis-session
	@Bean
	public static ConfigureRedisAction configureRedisAction() {
		return ConfigureRedisAction.NO_OP;
	}
	

    @Bean
    public Filter characterEncodingFilter() {
       CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter();
       characterEncodingFilter.setEncoding("UTF-8");
       characterEncodingFilter.setForceEncoding(true);
       return characterEncodingFilter;
    }
}
