package org.jboss.netty.handler.ipfilter;

import java.net.InetAddress;

public interface IpSet {
    boolean contains(InetAddress inetAddress);
}
