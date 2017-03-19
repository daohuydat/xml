/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.huydat.entities;

import java.util.List;

/**
 *
 * @author datdh
 */
public class Catalog {
    private String catalogName;
    private String catalogId;
    private List<RssItem> items;

    public Catalog() {
    }

    public Catalog(String catalogName, String catalogId, List<RssItem> items) {
        this.catalogName = catalogName;
        this.catalogId = catalogId;
        this.items = items;
    }

    

    public List<RssItem> getItems() {
        return items;
    }

    public void setItems(List<RssItem> items) {
        this.items = items;
    }

    public String getCatalogName() {
        return catalogName;
    }

    public void setCatalogName(String catalogName) {
        this.catalogName = catalogName;
    }

    public String getCatalogId() {
        return catalogId;
    }

    public void setCatalogId(String catalogId) {
        this.catalogId = catalogId;
    }
    
}
