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
@XmlRootElement(name = "rss")
public class Rss {
    private Channel channel;

    public Rss() {
    }

    public Channel getChannel() {
        return channel;
    }
@XmlElement(name = "channel")
    public void setChannel(Channel channel) {
        this.channel = channel;
    }
    
}
