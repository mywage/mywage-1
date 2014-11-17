// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.hero.mywage.controller;

import com.hero.mywage.controller.MyWebPageFileController;
import com.hero.mywage.entity.ContentType;
import com.hero.mywage.entity.MyWebPageFile;
import com.hero.mywage.service.MyWebPageFileService;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.util.Arrays;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect MyWebPageFileController_Roo_Controller {
    
    @Autowired
    MyWebPageFileService MyWebPageFileController.myWebPageFileService;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String MyWebPageFileController.create(@Valid MyWebPageFile myWebPageFile, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, myWebPageFile);
            return "mywebpagefiles/create";
        }
        uiModel.asMap().clear();
        myWebPageFileService.saveMyWebPageFile(myWebPageFile);
        return "redirect:/mywebpagefiles/" + encodeUrlPathSegment(myWebPageFile.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String MyWebPageFileController.createForm(Model uiModel) {
        populateEditForm(uiModel, new MyWebPageFile());
        return "mywebpagefiles/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String MyWebPageFileController.show(@PathVariable("id") BigInteger id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("mywebpagefile", myWebPageFileService.findMyWebPageFile(id));
        uiModel.addAttribute("itemId", id);
        return "mywebpagefiles/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String MyWebPageFileController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("mywebpagefiles", myWebPageFileService.findMyWebPageFileEntries(firstResult, sizeNo));
            float nrOfPages = (float) myWebPageFileService.countAllMyWebPageFiles() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("mywebpagefiles", myWebPageFileService.findAllMyWebPageFiles());
        }
        addDateTimeFormatPatterns(uiModel);
        return "mywebpagefiles/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String MyWebPageFileController.update(@Valid MyWebPageFile myWebPageFile, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, myWebPageFile);
            return "mywebpagefiles/update";
        }
        uiModel.asMap().clear();
        myWebPageFileService.updateMyWebPageFile(myWebPageFile);
        return "redirect:/mywebpagefiles/" + encodeUrlPathSegment(myWebPageFile.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String MyWebPageFileController.updateForm(@PathVariable("id") BigInteger id, Model uiModel) {
        populateEditForm(uiModel, myWebPageFileService.findMyWebPageFile(id));
        return "mywebpagefiles/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String MyWebPageFileController.delete(@PathVariable("id") BigInteger id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        MyWebPageFile myWebPageFile = myWebPageFileService.findMyWebPageFile(id);
        myWebPageFileService.deleteMyWebPageFile(myWebPageFile);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/mywebpagefiles";
    }
    
    void MyWebPageFileController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("myWebPageFile_createtime_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("myWebPageFile_updatetime_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void MyWebPageFileController.populateEditForm(Model uiModel, MyWebPageFile myWebPageFile) {
        uiModel.addAttribute("myWebPageFile", myWebPageFile);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("contenttypes", Arrays.asList(ContentType.values()));
    }
    
    String MyWebPageFileController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
