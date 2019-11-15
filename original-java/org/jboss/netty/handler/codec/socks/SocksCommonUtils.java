package org.jboss.netty.handler.codec.socks;

import com.mi.milinkforgame.sdk.session.util.StreamUtil;

final class SocksCommonUtils {
    static final /* synthetic */ boolean $assertionsDisabled = (!SocksCommonUtils.class.desiredAssertionStatus());
    private static final int FIRST_ADDRESS_OCTET_SHIFT = 24;
    private static final int SECOND_ADDRESS_OCTET_SHIFT = 16;
    private static final int THIRD_ADDRESS_OCTET_SHIFT = 8;
    public static final SocksRequest UNKNOWN_SOCKS_REQUEST = new UnknownSocksRequest();
    public static final SocksResponse UNKNOWN_SOCKS_RESPONSE = new UnknownSocksResponse();
    private static final int XOR_DEFAULT_VALUE = 255;
    private static final char[] ipv6conseqZeroFiller = {':', ':'};
    private static final char ipv6hextetSeparator = ':';

    private SocksCommonUtils() {
    }

    public static String intToIp(int i) {
        return String.valueOf((i >> 24) & 255) + '.' + ((i >> 16) & 255) + '.' + ((i >> 8) & 255) + '.' + (i & 255);
    }

    public static String ipv6toCompressedForm(byte[] bArr) {
        int i;
        if ($assertionsDisabled || bArr.length == 16) {
            int i2 = 0;
            int i3 = 0;
            int i4 = -1;
            while (i2 < 8) {
                int i5 = i2 * 2;
                int i6 = 0;
                while (i5 < bArr.length && bArr[i5] == 0 && bArr[i5 + 1] == 0) {
                    i5 += 2;
                    i6++;
                }
                if (i6 > i3) {
                    i = i2;
                } else {
                    i6 = i3;
                    i = i4;
                }
                i2 = (i5 / 2) + 1;
                i4 = i;
                i3 = i6;
            }
            if (i4 == -1 || i3 < 2) {
                return ipv6toStr(bArr);
            }
            StringBuilder sb = new StringBuilder(39);
            ipv6toStr(sb, bArr, 0, i4);
            sb.append(ipv6conseqZeroFiller);
            ipv6toStr(sb, bArr, i4 + i3, 8);
            return sb.toString();
        }
        throw new AssertionError();
    }

    public static String ipv6toStr(byte[] bArr) {
        if ($assertionsDisabled || bArr.length == 16) {
            StringBuilder sb = new StringBuilder(39);
            ipv6toStr(sb, bArr, 0, 8);
            return sb.toString();
        }
        throw new AssertionError();
    }

    private static void ipv6toStr(StringBuilder sb, byte[] bArr, int i, int i2) {
        while (i < i2) {
            sb.append(Integer.toHexString(((bArr[i << 1] << 8) & StreamUtil.MNS_ENCODE_NONE) | (bArr[(i << 1) + 1] & 255)));
            if (i < i2 - 1) {
                sb.append(':');
            }
            i++;
        }
    }
}
