package edu.ou.cliservice.config;

import liquibase.Liquibase;
import liquibase.database.DatabaseFactory;
import liquibase.exception.DatabaseException;
import liquibase.ext.mongodb.database.MongoLiquibaseDatabase;
import liquibase.integration.spring.SpringResourceAccessor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ResourceLoader;

@Configuration
public class LiquibaseQueryConfiguration {

    @Value("${datasource.auth-group.query.url}")
    private String authQueryUrl;

    @Value("${datasource.auth-group.query.liquibase.change-log}")
    private String authQueryChangeLog;

    @Value("${datasource.building-group.query.url}")
    private String buildingQueryUrl;

    @Value("${datasource.building-group.query.liquibase.change-log}")
    private String buildingQueryChangeLog;

    @Value("${datasource.human-group.query.url}")
    private String humanQueryUrl;

    @Value("${datasource.human-group.query.liquibase.change-log}")
    private String humanQueryChangeLog;

    @Value("${datasource.payment-group.query.url}")
    private String paymentQueryUrl;

    @Value("${datasource.payment-group.query.liquibase.change-log}")
    private String paymentQueryChangeLog;

    @Value("${datasource.activity-group.query.url}")
    private String activityQueryUrl;

    @Value("${datasource.activity-group.query.liquibase.change-log}")
    private String activityQueryChangeLog;

    @Autowired
    ResourceLoader resourceLoader;

    @Bean
    public Liquibase authQueryLiquibase(
            @Autowired
            MongoLiquibaseDatabase authQueryDatabase
    ) {
        return new Liquibase(
                authQueryChangeLog,
                new SpringResourceAccessor(resourceLoader),
                authQueryDatabase
        );
    }

    @Bean(name = "authQueryDatabase")
    public MongoLiquibaseDatabase authQueryDatabase() throws DatabaseException {
        return (MongoLiquibaseDatabase)
                DatabaseFactory
                        .getInstance()
                        .openDatabase(
                                authQueryUrl,
                                null,
                                null,
                                null,
                                null
                        );
    }

    @Bean
    public Liquibase buildingQueryLiquibase(
            @Autowired
            MongoLiquibaseDatabase buildingQueryDatabase
    ) {
        return new Liquibase(
                buildingQueryChangeLog,
                new SpringResourceAccessor(resourceLoader),
                buildingQueryDatabase
        );
    }

    @Bean(name = "buildingQueryDatabase")
    public MongoLiquibaseDatabase buildingQueryDatabase() throws DatabaseException {
        return (MongoLiquibaseDatabase)
                DatabaseFactory
                        .getInstance()
                        .openDatabase(
                                buildingQueryUrl,
                                null,
                                null,
                                null,
                                null
                        );
    }

    @Bean
    public Liquibase humanQueryLiquibase(
            @Autowired
            MongoLiquibaseDatabase humanQueryDatabase
    ) {
        return new Liquibase(
                humanQueryChangeLog,
                new SpringResourceAccessor(resourceLoader),
                humanQueryDatabase
        );
    }

    @Bean(name = "humanQueryDatabase")
    public MongoLiquibaseDatabase humanQueryDatabase() throws DatabaseException {
        return (MongoLiquibaseDatabase)
                DatabaseFactory
                        .getInstance()
                        .openDatabase(
                                humanQueryUrl,
                                null,
                                null,
                                null,
                                null
                        );
    }

    @Bean
    public Liquibase paymentQueryLiquibase(
            @Autowired
            MongoLiquibaseDatabase paymentQueryDatabase
    ) {
        return new Liquibase(
                paymentQueryChangeLog,
                new SpringResourceAccessor(resourceLoader),
                paymentQueryDatabase
        );
    }

    @Bean(name = "paymentQueryDatabase")
    public MongoLiquibaseDatabase paymentQueryDatabase() throws DatabaseException {
        return (MongoLiquibaseDatabase)
                DatabaseFactory
                        .getInstance()
                        .openDatabase(
                                paymentQueryUrl,
                                null,
                                null,
                                null,
                                null
                        );
    }


    @Bean
    public Liquibase activityQueryLiquibase(
            @Autowired
            MongoLiquibaseDatabase activityQueryDatabase
    ) {
        return new Liquibase(
                activityQueryChangeLog,
                new SpringResourceAccessor(resourceLoader),
                activityQueryDatabase
        );
    }

    @Bean(name = "activityQueryDatabase")
    public MongoLiquibaseDatabase activityQueryDatabase() throws DatabaseException {
        return (MongoLiquibaseDatabase)
                DatabaseFactory
                        .getInstance()
                        .openDatabase(
                                activityQueryUrl,
                                null,
                                null,
                                null,
                                null
                        );
    }
}
