package taxi.config;

import javax.annotation.PostConstruct;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.service.DriverService;

@Service
public class DataInitializer {
    @Inject
    private DriverService driverService;

    @PostConstruct
    public void inject() {
        Driver driver = new Driver();
        driver.setName("Admin");
        driver.setLogin("admin@admin.com");
        driver.setLicenseNumber("a1d2m3i4n5");
        driver.setPassword("adminadmin");
        driverService.create(driver);

    }
}
