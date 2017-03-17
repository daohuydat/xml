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
@XmlRootElement(name = "ExrateList")
public class ExrateList {

    private String dateTime;
    private List<Exrate> exrates;

    public ExrateList() {
    }

    public List<Exrate> getExrates() {
        return exrates;
    }

    @XmlElement(name = "Exrate")
    public void setExrates(List<Exrate> exrates) {
        this.exrates = exrates;
    }

    public String getDateTime() {
        return dateTime;
    }

    @XmlElement(name = "DateTime")
    public void setDateTime(String dateTime) {
        this.dateTime = dateTime;
    }

}
