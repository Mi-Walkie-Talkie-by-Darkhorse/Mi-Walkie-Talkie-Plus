package org.jboss.netty.handler.ipfilter;

public interface IpFilterRule extends IpSet {
    boolean isAllowRule();

    boolean isDenyRule();
}
