package org.jboss.netty.handler.ipfilter;

public interface IpFilteringHandler {
    void removeIpFilterListener();

    void setIpFilterListener(IpFilterListener ipFilterListener);
}
