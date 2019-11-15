package org.jboss.netty.handler.ipfilter;

import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;

public class CIDR4 extends CIDR {
    private final int addressEndInt;
    private int addressInt;

    protected CIDR4(Inet4Address inet4Address, int i) {
        this.cidrMask = i;
        this.addressInt = ipv4AddressToInt((InetAddress) inet4Address);
        this.addressInt = ipv4PrefixLengthToMask(i) & this.addressInt;
        try {
            this.baseAddress = intToIPv4Address(this.addressInt);
        } catch (UnknownHostException e) {
        }
        this.addressEndInt = (this.addressInt + ipv4PrefixLengthToLength(this.cidrMask)) - 1;
    }

    public InetAddress getEndAddress() {
        try {
            return intToIPv4Address(this.addressEndInt);
        } catch (UnknownHostException e) {
            return null;
        }
    }

    public int compareTo(CIDR cidr) {
        if (cidr instanceof CIDR6) {
            int ipv4AddressToInt = ipv4AddressToInt(getIpV4FromIpV6((Inet6Address) cidr.baseAddress));
            if (ipv4AddressToInt == this.addressInt && cidr.cidrMask == this.cidrMask) {
                return 0;
            }
            if (ipv4AddressToInt < this.addressInt) {
                return 1;
            }
            if (ipv4AddressToInt > this.addressInt) {
                return -1;
            }
            if (cidr.cidrMask < this.cidrMask) {
                return -1;
            }
            return 1;
        }
        CIDR4 cidr4 = (CIDR4) cidr;
        if (cidr4.addressInt == this.addressInt && cidr4.cidrMask == this.cidrMask) {
            return 0;
        }
        if (cidr4.addressInt < this.addressInt) {
            return 1;
        }
        if (cidr4.addressInt > this.addressInt) {
            return -1;
        }
        if (cidr4.cidrMask < this.cidrMask) {
            return -1;
        }
        return 1;
    }

    public boolean contains(InetAddress inetAddress) {
        int ipv4AddressToInt = ipv4AddressToInt(inetAddress);
        return ipv4AddressToInt >= this.addressInt && ipv4AddressToInt <= this.addressEndInt;
    }

    private static int ipv4PrefixLengthToLength(int i) {
        return 1 << (32 - i);
    }

    private static int ipv4PrefixLengthToMask(int i) {
        return ((1 << (32 - i)) - 1) ^ -1;
    }

    private static InetAddress intToIPv4Address(int i) throws UnknownHostException {
        return InetAddress.getByAddress(new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)});
    }

    private static int ipv4AddressToInt(InetAddress inetAddress) {
        byte[] address;
        if (inetAddress instanceof Inet6Address) {
            address = getIpV4FromIpV6((Inet6Address) inetAddress);
        } else {
            address = inetAddress.getAddress();
        }
        return ipv4AddressToInt(address);
    }

    private static int ipv4AddressToInt(byte[] bArr) {
        byte b = 0;
        for (byte b2 : bArr) {
            b = (b << 8) | (b2 & 255);
        }
        return b;
    }
}
