package org.jboss.netty.handler.ipfilter;

import java.net.InetAddress;
import java.net.UnknownHostException;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

public class IpSubnet implements Comparable<IpSubnet>, IpSet {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(IpSubnet.class);
    private final CIDR cidr;

    public IpSubnet() {
        this.cidr = null;
    }

    public IpSubnet(String str) throws UnknownHostException {
        this.cidr = CIDR.newCIDR(str);
    }

    public IpSubnet(InetAddress inetAddress, int i) throws UnknownHostException {
        this.cidr = CIDR.newCIDR(inetAddress, i);
    }

    public IpSubnet(InetAddress inetAddress, String str) throws UnknownHostException {
        this.cidr = CIDR.newCIDR(inetAddress, str);
    }

    public boolean contains(String str) throws UnknownHostException {
        return contains(InetAddress.getByName(str));
    }

    public boolean contains(InetAddress inetAddress) {
        if (this.cidr == null) {
            return true;
        }
        return this.cidr.contains(inetAddress);
    }

    public String toString() {
        return this.cidr.toString();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof IpSubnet)) {
            return false;
        }
        return ((IpSubnet) obj).cidr.equals(this.cidr);
    }

    public int hashCode() {
        return this.cidr.hashCode();
    }

    public int compareTo(IpSubnet ipSubnet) {
        return this.cidr.toString().compareTo(ipSubnet.cidr.toString());
    }
}
