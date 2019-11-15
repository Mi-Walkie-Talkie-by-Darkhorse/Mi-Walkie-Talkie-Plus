package com.mi.milinkforgame.sdk.base.os.dns;

import com.mi.milinkforgame.sdk.base.debug.CustomLogcat;
import com.mi.milinkforgame.sdk.base.os.Http;
import java.io.IOException;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;

public class DnsMain {
    private static final String TAG = DnsMain.class.getName();

    public static InetAddress[] getBetterHostByName(String str, long j) {
        String hostName = getHostName(str);
        CustomLogcat.w("DNSResolve", "hostName:" + hostName + ",timeout:" + j);
        CustomLogcat.v(TAG, "get better host for name:" + hostName);
        if (hostName == null || hostName.trim().length() <= 0) {
            return null;
        }
        String trim = hostName.trim();
        try {
            InetAddress[] run = new Lookup(DnsConstants.DNS_SERVER_ADDRESS_114).run(trim, j);
            if (run != null && run.length > 0) {
                return run;
            }
            CustomLogcat.e(TAG, "114 - Address == null ? WTF ?!");
            return null;
        } catch (UnknownHostException e) {
            CustomLogcat.e(TAG, "UnknownHostException cause[" + trim + "][114.114.114.114]." + e.getMessage());
        } catch (WireParseException e2) {
            CustomLogcat.e(TAG, "WireParseException cause[" + trim + "][114.114.114.114]." + e2.getMessage());
        } catch (SocketTimeoutException e3) {
            CustomLogcat.e(TAG, "SocketTimeoutException cause[" + trim + "][114.114.114.114]." + e3.getMessage());
        } catch (IOException e4) {
            CustomLogcat.e(TAG, "IOException cause[" + trim + "][114.114.114.114]." + e4.getMessage());
        } catch (Exception e5) {
            CustomLogcat.e(TAG, "Exception cause[" + trim + "][114.114.114.114]." + e5.getMessage());
        }
    }

    public static String getHostName(String str) {
        if (str == null) {
            return "";
        }
        String trim = str.trim();
        String lowerCase = trim.toLowerCase();
        if (lowerCase.startsWith(Http.PROTOCOL_PREFIX)) {
            int indexOf = trim.indexOf("/", 8);
            if (indexOf > 7) {
                return trim.substring(7, indexOf);
            }
            return trim.substring(7);
        } else if (lowerCase.startsWith("https://")) {
            int indexOf2 = trim.indexOf("/", 9);
            if (indexOf2 > 8) {
                return trim.substring(8, indexOf2);
            }
            return trim.substring(8);
        } else if (trim.indexOf("/", 1) > 1) {
            return trim.substring(0, trim.indexOf("/", 1));
        } else {
            return trim;
        }
    }
}
