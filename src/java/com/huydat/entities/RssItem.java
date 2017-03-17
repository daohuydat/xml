/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.huydat.entities;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author datdh
 */
@XmlRootElement(name = "item")
public class RssItem {

    private String title;
    private String description;
    private String link;
    private String pubDate;

    public RssItem() {
    }

    public String getTitle() {
        return title;
    }

    @XmlElement
    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    @XmlElement
    public void setDescription(String description) {
        this.description = description;
    }

    public String getLink() {
        return "NewsDetails?n="+ link.substring(22);
    }

    @XmlElement
    public void setLink(String link) {
        this.link = link;
    }

    public String getPubDate() {
        return pubDate;
    }

    @XmlElement
    public void setPubDate(String pubDate) {
        this.pubDate = pubDate;
    }

}
