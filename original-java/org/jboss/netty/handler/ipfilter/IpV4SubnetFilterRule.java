package org.jboss.netty.handler.ipfilter;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class IpV4SubnetFilterRule extends IpV4Subnet implements IpFilterRule {
    private boolean isAllowRule = true;

    public IpV4SubnetFilterRule(boolean z) {
        this.isAllowRule = z;
    }

    public IpV4SubnetFilterRule(boolean z, InetAddress inetAddress, int i) {
        super(inetAddress, i);
        this.isAllowRule = z;
    }

    public IpV4SubnetFilterRule(boolean z, InetAddress inetAddress, String str) {
        super(inetAddress, str);
        this.isAllowRule = z;
    }

    public IpV4SubnetFilterRule(boolean z, String str) throws UnknownHostException {
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
