/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.huydat.entities;

import java.util.List;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author datdh
 */
@XmlRootElement(name = "channel")
public class Channel {

    private String title;
    private String link;
    private String description;

    private List<RssItem> items;

    public Channel() {
    }

    public String getTitle() {
        return title;
    }

    @XmlElement
    public void setTitle(String title) {
        this.title = title;
    }

    public String getLink() {
        return link;
    }

    @XmlElement
    public void setLink(String link) {
        this.link = link;
    }

    public String getDescription() {
        return description;
    }

    @XmlElement
    public void setDescription(String description) {
        this.description = description;
    }

    public List<RssItem> getItems() {
        return items;
    }

    @XmlElement(name = "item")
    public void setItems(List<RssItem> items) {
        this.items = items;
    }

}
