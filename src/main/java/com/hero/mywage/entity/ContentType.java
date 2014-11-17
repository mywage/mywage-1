package com.hero.mywage.entity;
import javax.persistence.Enumerated;

public enum ContentType {
    ;

    /**
     */
    @Enumerated
    private ContentType HTML;

    /**
     */
    @Enumerated
    private ContentType JAVASCRIPT;

    /**
     */
    @Enumerated
    private ContentType CSS;

    /**
     */
    @Enumerated
    private ContentType XML;

    /**
     */
    @Enumerated
    private ContentType JSON;
}
