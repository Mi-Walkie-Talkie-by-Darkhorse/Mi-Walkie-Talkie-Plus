package org.jboss.netty.handler.ipfilter;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class IpSubnetFilterRule extends IpSubnet implements IpFilterRule {
    private boolean isAllowRule = true;

    public IpSubnetFilterRule(boolean z) {
        this.isAllowRule = z;
    }

    public IpSubnetFilterRule(boolean z, InetAddress inetAddress, int i) throws UnknownHostException {
        super(inetAddress, i);
        this.isAllowRule = z;
    }

    public IpSubnetFilterRule(boolean z, InetAddress inetAddress, String str) throws UnknownHostException {
        super(inetAddress, str);
        this.isAllowRule = z;
    }

    public IpSubnetFilterRule(boolean z, String str) throws UnknownHostException {
        super(str);
        this.isAllowRule = z;
    }

    public boolean isAllowRule() {
        return this.isAllowRule;
    }

    public boolean isDenyRule() {
        return !this.isAllowRule;
    }
}
