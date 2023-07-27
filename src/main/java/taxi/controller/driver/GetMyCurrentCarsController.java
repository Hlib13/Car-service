package taxi.controller.driver;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.service.CarService;

public class GetMyCurrentCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String driverIdParam = req.getParameter("driverId");
        if (driverIdParam != null && !driverIdParam.isEmpty()) {
            long driverId = Long.parseLong(driverIdParam);
            List<Car> cars = carService.getAllByDriver(driverId);
            req.setAttribute("cars", cars);
        }
        req.getRequestDispatcher("/WEB-INF/views/cars/all.jsp").forward(req, resp);
    }
}
