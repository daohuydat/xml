/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.huydat.entities;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author datdh
 */
@XmlRootElement(name = "Exrate")
public class Exrate {

    private String currencyCode;
    private String currencyName;
    private String buy;
    private String transfer;
    private String sell;

    public Exrate() {
    }

    public String getCurrencyCode() {
        return currencyCode;
    }

    @XmlAttribute(name = "CurrencyCode")
    public void setCurrencyCode(String currencyCode) {
        this.currencyCode = currencyCode;
    }

    public String getCurrencyName() {
        return currencyName;
    }

    @XmlAttribute(name = "CurrencyName")
    public void setCurrencyName(String currencyName) {
        this.currencyName = currencyName;
    }

    public String getBuy() {
        return buy;
    }

    @XmlAttribute(name = "Buy")
    public void setBuy(String buy) {
        if ("0".equals(buy)) {
            this.buy = "-";
        } else {
            this.buy = buy;
        }
    }

    public String getTransfer() {
        return transfer;
    }

    @XmlAttribute(name = "Transfer")
    public void setTransfer(String transfer) {
        if ("0".equals(transfer)) {
            this.transfer = "-";
        } else {
            this.transfer = transfer;
        }
    }

    public String getSell() {
        return sell;
    }

    @XmlAttribute(name = "Sell")
    public void setSell(String sell) {
        if ("0".equals(sell)) {
            this.sell = "-";
        } else {
            this.sell = sell;
        }
    }

}
