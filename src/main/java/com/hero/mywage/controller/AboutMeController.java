package com.hero.mywage.controller;
import com.hero.mywage.entity.AboutMe;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/aboutmes")
@Controller
@RooWebScaffold(path = "aboutmes", formBackingObject = AboutMe.class)
public class AboutMeController {
}
