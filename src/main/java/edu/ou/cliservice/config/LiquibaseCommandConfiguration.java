package edu.ou.cliservice.config;

import liquibase.integration.spring.SpringLiquibase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.liquibase.LiquibaseProperties;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

@Configuration
public class LiquibaseCommandConfiguration {
    @Bean
    @ConfigurationProperties(prefix = "datasource.auth-group.command")
    public DataSource authGroupCommandDataSource() {
        return DataSourceBuilder
                .create()
                .build();
    }

    @Bean
    @ConfigurationProperties(prefix = "datasource.auth-group.command.liquibase")
    public LiquibaseProperties authGroupCommandLiquibaseProperties() {
        return new LiquibaseProperties();
    }

    @Bean
    public SpringLiquibase authGroupCommandLiquibase(
            @Autowired DataSource authGroupCommandDataSource,
            @Autowired LiquibaseProperties authGroupCommandLiquibaseProperties
    ) {
        return springLiquibase(
                authGroupCommandDataSource,
                authGroupCommandLiquibaseProperties
        );
    }

    @Bean
    @ConfigurationProperties(prefix = "datasource.building-group.command")
    public DataSource buildingGroupCommandDataSource() {
        return DataSourceBuilder
                .create()
                .build();
    }

    @Bean
    @ConfigurationProperties(prefix = "datasource.building-group.command.liquibase")
    public LiquibaseProperties buildingGroupCommandLiquibaseProperties() {
        return new LiquibaseProperties();
    }

    @Bean
    public SpringLiquibase buildingGroupCommandLiquibase(
            @Autowired DataSource buildingGroupCommandDataSource,
            @Autowired LiquibaseProperties buildingGroupCommandLiquibaseProperties
    ) {
        return springLiquibase(
                buildingGroupCommandDataSource,
                buildingGroupCommandLiquibaseProperties
        );
    }

    @Bean
    @ConfigurationProperties(prefix = "datasource.human-group.command")
    public DataSource humanGroupCommandDataSource() {
        return DataSourceBuilder
                .create()
                .build();
    }

    @Bean
    @ConfigurationProperties(prefix = "datasource.human-group.command.liquibase")
    public LiquibaseProperties humanGroupCommandLiquibaseProperties() {
        return new LiquibaseProperties();
    }

    @Bean
    public SpringLiquibase humanGroupCommandLiquibase(
            @Autowired DataSource humanGroupCommandDataSource,
            @Autowired LiquibaseProperties humanGroupCommandLiquibaseProperties
    ) {
        return springLiquibase(
                humanGroupCommandDataSource,
                humanGroupCommandLiquibaseProperties
        );
    }

    @Bean
    @ConfigurationProperties(prefix = "datasource.payment-group.command")
    public DataSource paymentGroupCommandDataSource() {
        return DataSourceBuilder
                .create()
                .build();
    }

    @Bean
    @ConfigurationProperties(prefix = "datasource.payment-group.command.liquibase")
    public LiquibaseProperties paymentGroupCommandLiquibaseProperties() {
        return new LiquibaseProperties();
    }

    @Bean
    public SpringLiquibase paymentGroupCommandLiquibase(
            @Autowired DataSource paymentGroupCommandDataSource,
            @Autowired LiquibaseProperties paymentGroupCommandLiquibaseProperties
    ) {
        return springLiquibase(
                paymentGroupCommandDataSource,
                paymentGroupCommandLiquibaseProperties
        );
    }

    @Bean
    @ConfigurationProperties(prefix = "datasource.activity-group.command")
    public DataSource activityGroupCommandDataSource() {
        return DataSourceBuilder
                .create()
                .build();
    }

    @Bean
    @ConfigurationProperties(prefix = "datasource.activity-group.command.liquibase")
    public LiquibaseProperties activityGroupCommandLiquibaseProperties() {
        return new LiquibaseProperties();
    }

    @Bean
    public SpringLiquibase activityGroupCommandLiquibase(
            @Autowired DataSource activityGroupCommandDataSource,
            @Autowired LiquibaseProperties activityGroupCommandLiquibaseProperties
    ) {
        return springLiquibase(
                activityGroupCommandDataSource,
                activityGroupCommandLiquibaseProperties
        );
    }


    private static SpringLiquibase springLiquibase(
            DataSource dataSource,
            LiquibaseProperties properties
    ) {
        final SpringLiquibase liquibase = new SpringLiquibase();
        liquibase.setDataSource(dataSource);
        liquibase.setChangeLog(properties.getChangeLog());
        liquibase.setContexts(properties.getContexts());
        liquibase.setDefaultSchema(properties.getDefaultSchema());
        liquibase.setDropFirst(properties.isDropFirst());
        liquibase.setShouldRun(properties.isEnabled());
        liquibase.setLabelFilter(properties.getLabels());
        liquibase.setChangeLogParameters(properties.getParameters());
        liquibase.setRollbackFile(properties.getRollbackFile());
        return liquibase;
    }
}
