package com.mi.milinkforgame.sdk.base.os.dns;

import java.io.IOException;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;

public class Lookup {
    private String dnsServerAddress = "";

    public Lookup(String str) throws UnknownHostException {
        this.dnsServerAddress = str;
    }

    public void setDnsAddress(String str) {
        this.dnsServerAddress = str;
    }

    public InetAddress[] run(String str, long j) throws IOException, SocketTimeoutException, WireParseException, UnknownHostException, Exception {
        InetAddress[] inetAddressArr = null;
        RequestPacket requestPacket = new RequestPacket(str);
        byte[] queryData = requestPacket.getQueryData();
        if (queryData != null) {
            try {
                UdpClient udpClient = new UdpClient();
                udpClient.setTimeout(j);
                byte[] sendrecv = udpClient.sendrecv(this.dnsServerAddress, queryData);
                if (sendrecv != null) {
                    ResponsePacket responsePacket = new ResponsePacket(new DNSInput(sendrecv), str);
                    if (responsePacket.getReqId() == requestPacket.getReqId()) {
                        inetAddressArr = responsePacket.getByAddress();
                        if (inetAddressArr != null && inetAddressArr.length > 0) {
                            HostCacheManager.getInstance().addCache(str, inetAddressArr, responsePacket.getExpireTime());
                        }
                    }
                }
            } catch (WireParseException e) {
                throw e;
            } catch (SocketTimeoutException e2) {
                throw e2;
            } catch (IOException e3) {
                throw e3;
            }
        }
        return inetAddressArr;
    }
}
