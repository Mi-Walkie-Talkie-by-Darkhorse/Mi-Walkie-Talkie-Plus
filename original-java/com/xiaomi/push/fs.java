package com.xiaomi.push;

import com.xiaomi.mipush.sdk.Constants;
import java.net.UnknownHostException;

/* loaded from: classes2.dex */
final class fs {

    /* loaded from: classes2.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        fm f8960a;

        /* renamed from: a  reason: collision with other field name */
        String f378a;

        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(Exception exc) {
        m282a(exc);
        boolean z = exc instanceof gu;
        Exception exc2 = exc;
        if (z) {
            gu guVar = (gu) exc;
            exc2 = exc;
            if (guVar.a() != null) {
                exc2 = guVar.a();
            }
        }
        a aVar = new a();
        String message = exc2.getMessage();
        if (exc2.getCause() != null) {
            message = exc2.getCause().getMessage();
        }
        String str = exc2.getClass().getSimpleName() + Constants.COLON_SEPARATOR + message;
        int a2 = gl.a(exc2);
        if (a2 != 0) {
            aVar.f8960a = fm.a(fm.GSLB_REQUEST_SUCCESS.a() + a2);
        }
        if (aVar.f8960a == null) {
            aVar.f8960a = fm.GSLB_TCP_ERR_OTHER;
        }
        if (aVar.f8960a == fm.GSLB_TCP_ERR_OTHER) {
            aVar.f378a = str;
        }
        return aVar;
    }

    /* renamed from: a  reason: collision with other method in class */
    private static void m282a(Exception exc) {
        if (exc == null) {
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a b(Exception exc) {
        fm fmVar;
        fm fmVar2;
        Throwable cause;
        m282a(exc);
        boolean z = exc instanceof gu;
        Exception exc2 = exc;
        if (z) {
            gu guVar = (gu) exc;
            exc2 = exc;
            if (guVar.a() != null) {
                exc2 = guVar.a();
            }
        }
        a aVar = new a();
        String message = exc2.getMessage();
        if (exc2.getCause() != null) {
            message = exc2.getCause().getMessage();
        }
        int a2 = gl.a(exc2);
        String str = exc2.getClass().getSimpleName() + Constants.COLON_SEPARATOR + message;
        if (a2 != 0) {
            fm a3 = fm.a(fm.CONN_SUCCESS.a() + a2);
            aVar.f8960a = a3;
            if (a3 == fm.CONN_BOSH_ERR && (cause = exc2.getCause()) != null && (cause instanceof UnknownHostException)) {
                fmVar2 = fm.CONN_BOSH_UNKNOWNHOST;
            }
            fmVar = aVar.f8960a;
            if (fmVar != fm.CONN_TCP_ERR_OTHER || fmVar == fm.CONN_XMPP_ERR || fmVar == fm.CONN_BOSH_ERR) {
                aVar.f378a = str;
            }
            return aVar;
        }
        fmVar2 = fm.CONN_XMPP_ERR;
        aVar.f8960a = fmVar2;
        fmVar = aVar.f8960a;
        if (fmVar != fm.CONN_TCP_ERR_OTHER) {
        }
        aVar.f378a = str;
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a c(Exception exc) {
        fm fmVar;
        fm fmVar2;
        m282a(exc);
        boolean z = exc instanceof gu;
        Exception exc2 = exc;
        if (z) {
            gu guVar = (gu) exc;
            exc2 = exc;
            if (guVar.a() != null) {
                exc2 = guVar.a();
            }
        }
        a aVar = new a();
        String message = exc2.getMessage();
        if (exc2.getCause() != null) {
            message = exc2.getCause().getMessage();
        }
        int a2 = gl.a(exc2);
        String str = exc2.getClass().getSimpleName() + Constants.COLON_SEPARATOR + message;
        if (a2 == 105) {
            fmVar2 = fm.BIND_TCP_READ_TIMEOUT;
        } else if (a2 == 199) {
            fmVar2 = fm.BIND_TCP_ERR;
        } else if (a2 != 499) {
            fmVar2 = a2 != 109 ? a2 != 110 ? fm.BIND_XMPP_ERR : fm.BIND_TCP_BROKEN_PIPE : fm.BIND_TCP_CONNRESET;
        } else {
            aVar.f8960a = fm.BIND_BOSH_ERR;
            if (message.startsWith("Terminal binding condition encountered: item-not-found")) {
                fmVar2 = fm.BIND_BOSH_ITEM_NOT_FOUND;
            }
            fmVar = aVar.f8960a;
            if (fmVar != fm.BIND_TCP_ERR || fmVar == fm.BIND_XMPP_ERR || fmVar == fm.BIND_BOSH_ERR) {
                aVar.f378a = str;
            }
            return aVar;
        }
        aVar.f8960a = fmVar2;
        fmVar = aVar.f8960a;
        if (fmVar != fm.BIND_TCP_ERR) {
        }
        aVar.f378a = str;
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a d(Exception exc) {
        fm fmVar;
        fm fmVar2;
        m282a(exc);
        boolean z = exc instanceof gu;
        Exception exc2 = exc;
        if (z) {
            gu guVar = (gu) exc;
            exc2 = exc;
            if (guVar.a() != null) {
                exc2 = guVar.a();
            }
        }
        a aVar = new a();
        String message = exc2.getMessage();
        int a2 = gl.a(exc2);
        String str = exc2.getClass().getSimpleName() + Constants.COLON_SEPARATOR + message;
        if (a2 == 105) {
            fmVar2 = fm.CHANNEL_TCP_READTIMEOUT;
        } else if (a2 == 199) {
            fmVar2 = fm.CHANNEL_TCP_ERR;
        } else if (a2 != 499) {
            fmVar2 = a2 != 109 ? a2 != 110 ? fm.CHANNEL_XMPPEXCEPTION : fm.CHANNEL_TCP_BROKEN_PIPE : fm.CHANNEL_TCP_CONNRESET;
        } else {
            aVar.f8960a = fm.CHANNEL_BOSH_EXCEPTION;
            if (message.startsWith("Terminal binding condition encountered: item-not-found")) {
                fmVar2 = fm.CHANNEL_BOSH_ITEMNOTFIND;
            }
            fmVar = aVar.f8960a;
            if (fmVar != fm.CHANNEL_TCP_ERR || fmVar == fm.CHANNEL_XMPPEXCEPTION || fmVar == fm.CHANNEL_BOSH_EXCEPTION) {
                aVar.f378a = str;
            }
            return aVar;
        }
        aVar.f8960a = fmVar2;
        fmVar = aVar.f8960a;
        if (fmVar != fm.CHANNEL_TCP_ERR) {
        }
        aVar.f378a = str;
        return aVar;
    }
}
