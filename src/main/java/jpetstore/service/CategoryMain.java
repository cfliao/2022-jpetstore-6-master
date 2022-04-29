package jpetstore.service;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class CategoryMain {

    public static void main(String[] args) {

        AnnotationConfigApplicationContext appContext = new AnnotationConfigApplicationContext();
        appContext.scan(new String[]{"jpetstore.repository","jpetstore.service"});
        appContext.refresh();

        CatalogService svc = (CatalogService) appContext.getBean("catalogService");
        svc.test();

        appContext.close();
    }
}
