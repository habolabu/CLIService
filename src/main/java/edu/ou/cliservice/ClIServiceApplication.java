package edu.ou.cliservice;

import liquibase.Liquibase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ClIServiceApplication implements ApplicationRunner {
    @Autowired
    Liquibase authQueryLiquibase;
    @Autowired
    Liquibase buildingQueryLiquibase;
    @Autowired
    Liquibase humanQueryLiquibase;
    @Autowired
    Liquibase paymentQueryLiquibase;
    @Autowired
    Liquibase activityQueryLiquibase;

    public static void main(String[] args) {
        SpringApplication.run(ClIServiceApplication.class, args);
    }

    @Override
    public void run(ApplicationArguments args) throws Exception {
        authQueryLiquibase.update();
        buildingQueryLiquibase.update();
        humanQueryLiquibase.update();
        paymentQueryLiquibase.update();
        activityQueryLiquibase.update();
    }
}
