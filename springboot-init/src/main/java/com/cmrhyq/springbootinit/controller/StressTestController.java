package com.cmrhyq.springbootinit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * <p></p>
 *
 * @author Alan Huang
 * @version v0.0.1
 * @classname StressTestController.java
 * @project springboot-init
 * @package com.cmrhyq.springbootinit.controller
 * @date 2024/9/6 12:46
 * @email cmrhyq@163.com
 * @since v0.0.1
 */
@Controller("/stress/test")
public class StressTestController {

    @GetMapping("/index")
    public String index() {
        return "index";
    }
}
