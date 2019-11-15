package org.jboss.netty.handler.ipfilter;

import com.mi.milinkforgame.sdk.base.os.Http;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.StringTokenizer;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.internal.StringUtil;

public class IpV4Subnet implements Comparable<IpV4Subnet>, IpSet {
    private static final int BYTE_ADDRESS_MASK = 255;
    private static final int SUBNET_MASK = Integer.MIN_VALUE;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(IpV4Subnet.class);
    private int cidrMask;
    private InetAddress inetAddress;
    private int mask;
    private int subnet;

    public IpV4Subnet() {
        this.mask = -1;
        this.inetAddress = null;
        this.subnet = 0;
        this.cidrMask = 0;
    }

    public IpV4Subnet(String str) throws UnknownHostException {
        setNetAddress(str);
    }

    public IpV4Subnet(InetAddress inetAddress2, int i) {
        setNetAddress(inetAddress2, i);
    }

    public IpV4Subnet(InetAddress inetAddress2, String str) {
        setNetAddress(inetAddress2, str);
    }

    private void setNetAddress(String str) throws UnknownHostException {
        String[] split = StringUtil.split(str, Http.PROTOCOL_HOST_SPLITTER);
        if (split.length != 2) {
            throw new IllegalArgumentException("netAddress: " + str + " (expected: CIDR or Decimal Notation)");
        } else if (split[1].length() < 3) {
            setNetId(split[0]);
            setCidrNetMask(Integer.parseInt(split[1]));
        } else {
            setNetId(split[0]);
            setNetMask(split[1]);
        }
    }

    private void setNetAddress(InetAddress inetAddress2, int i) {
        setNetId(inetAddress2);
        setCidrNetMask(i);
    }

    private void setNetAddress(InetAddress inetAddress2, String str) {
        setNetId(inetAddress2);
        setNetMask(str);
    }

    private void setNetId(String str) throws UnknownHostException {
        setNetId(InetAddress.getByName(str));
    }

    private static int toInt(InetAddress inetAddress2) {
        byte b = 0;
        for (byte b2 : inetAddress2.getAddress()) {
            b = (b << 8) | (b2 & 255);
        }
        return b;
    }

    private void setNetId(InetAddress inetAddress2) {
        this.inetAddress = inetAddress2;
        this.subnet = toInt(inetAddress2);
    }

    private void setNetMask(String str) {
        int i = 0;
        StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
        int[] iArr = new int[4];
        int i2 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            iArr[i2] = Integer.parseInt(stringTokenizer.nextToken());
            i2++;
        }
        for (int i3 = 0; i3 < 4; i3++) {
            i += Integer.bitCount(iArr[i3]);
        }
        setCidrNetMask(i);
    }

    private void setCidrNetMask(int i) {
        this.cidrMask = i;
        this.mask = Integer.MIN_VALUE >> (this.cidrMask - 1);
    }

    public boolean contains(String str) throws UnknownHostException {
        return contains(InetAddress.getByName(str));
    }

    public boolean contains(InetAddress inetAddress2) {
        if (this.mask == -1 || (toInt(inetAddress2) & this.mask) == this.subnet) {
            return true;
        }
        return false;
    }

    public String toString() {
        return this.inetAddress.getHostAddress() + Http.PROTOCOL_HOST_SPLITTER + this.cidrMask;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof IpV4Subnet)) {
            return false;
        }
        IpV4Subnet ipV4Subnet = (IpV4Subnet) obj;
        if (ipV4Subnet.subnet == this.subnet && ipV4Subnet.cidrMask == this.cidrMask) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.subnet;
    }

    public int compareTo(IpV4Subnet ipV4Subnet) {
        if (ipV4Subnet.subnet == this.subnet && ipV4Subnet.cidrMask == this.cidrMask) {
            return 0;
        }
        if (ipV4Subnet.subnet < this.subnet) {
            return 1;
        }
        if (ipV4Subnet.subnet > this.subnet) {
            return -1;
        }
        if (ipV4Subnet.cidrMask < this.cidrMask) {
            return -1;
        }
        return 1;
    }
}
