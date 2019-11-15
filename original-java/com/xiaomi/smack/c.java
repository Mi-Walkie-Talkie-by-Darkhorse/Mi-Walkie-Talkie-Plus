package com.xiaomi.smack;

import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;

public class c {
    public static int a(Throwable th) {
        Throwable th2 = (!(th instanceof l) || ((l) th).a() == null) ? th : ((l) th).a();
        String message = th2.getMessage();
        if (th2.getCause() != null) {
            message = th2.getCause().getMessage();
        }
        if (th2 instanceof SocketTimeoutException) {
            return 105;
        }
        if (th2 instanceof SocketException) {
            if (message.indexOf("Network is unreachable") != -1) {
                return 102;
            }
            if (message.indexOf("Connection refused") != -1) {
                return 103;
            }
            if (message.indexOf("Connection timed out") != -1) {
                return 105;
            }
            if (message.endsWith("EACCES (Permission denied)")) {
                return 101;
            }
            if (message.indexOf("Connection reset by peer") != -1) {
                return 109;
            }
            if (message.indexOf("Broken pipe") != -1) {
                return 110;
            }
            if (message.indexOf("No route to host") != -1) {
                return 104;
            }
            return message.endsWith("EINVAL (Invalid argument)") ? 106 : 199;
        } else if (th2 instanceof UnknownHostException) {
            return 107;
        } else {
            return th instanceof l ? 399 : 0;
        }
    }
}
