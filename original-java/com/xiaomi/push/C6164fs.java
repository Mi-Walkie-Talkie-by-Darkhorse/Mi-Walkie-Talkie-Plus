package com.xiaomi.push;

import com.xiaomi.mipush.sdk.Constants;
import java.net.UnknownHostException;
import java.util.Objects;

/* renamed from: com.xiaomi.push.fs */
/* loaded from: classes2.dex */
final class C6164fs {

    /* renamed from: com.xiaomi.push.fs$a */
    /* loaded from: classes2.dex */
    static class C6165a {

        /* renamed from: a */
        EnumC6158fm f21650a;

        /* renamed from: a */
        String f21651a;

        C6165a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C6165a m2877a(Exception exc) {
        m2876a(exc);
        boolean z = exc instanceof C6203gu;
        Exception exc2 = exc;
        if (z) {
            C6203gu c6203gu = (C6203gu) exc;
            exc2 = exc;
            if (c6203gu.m2703a() != null) {
                exc2 = c6203gu.m2703a();
            }
        }
        C6165a c6165a = new C6165a();
        String message = exc2.getMessage();
        if (exc2.getCause() != null) {
            message = exc2.getCause().getMessage();
        }
        String str = exc2.getClass().getSimpleName() + Constants.COLON_SEPARATOR + message;
        int m2728a = C6194gl.m2728a(exc2);
        if (m2728a != 0) {
            c6165a.f21650a = EnumC6158fm.m2917a(EnumC6158fm.GSLB_REQUEST_SUCCESS.m2919a() + m2728a);
        }
        if (c6165a.f21650a == null) {
            c6165a.f21650a = EnumC6158fm.GSLB_TCP_ERR_OTHER;
        }
        if (c6165a.f21650a == EnumC6158fm.GSLB_TCP_ERR_OTHER) {
            c6165a.f21651a = str;
        }
        return c6165a;
    }

    /* renamed from: a */
    private static void m2876a(Exception exc) {
        Objects.requireNonNull(exc);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static C6165a m2875b(Exception exc) {
        EnumC6158fm enumC6158fm;
        EnumC6158fm enumC6158fm2;
        Throwable cause;
        m2876a(exc);
        boolean z = exc instanceof C6203gu;
        Exception exc2 = exc;
        if (z) {
            C6203gu c6203gu = (C6203gu) exc;
            exc2 = exc;
            if (c6203gu.m2703a() != null) {
                exc2 = c6203gu.m2703a();
            }
        }
        C6165a c6165a = new C6165a();
        String message = exc2.getMessage();
        if (exc2.getCause() != null) {
            message = exc2.getCause().getMessage();
        }
        int m2728a = C6194gl.m2728a(exc2);
        String str = exc2.getClass().getSimpleName() + Constants.COLON_SEPARATOR + message;
        if (m2728a != 0) {
            EnumC6158fm m2917a = EnumC6158fm.m2917a(EnumC6158fm.CONN_SUCCESS.m2919a() + m2728a);
            c6165a.f21650a = m2917a;
            if (m2917a == EnumC6158fm.CONN_BOSH_ERR && (cause = exc2.getCause()) != null && (cause instanceof UnknownHostException)) {
                enumC6158fm = EnumC6158fm.CONN_BOSH_UNKNOWNHOST;
            }
            enumC6158fm2 = c6165a.f21650a;
            if (enumC6158fm2 != EnumC6158fm.CONN_TCP_ERR_OTHER || enumC6158fm2 == EnumC6158fm.CONN_XMPP_ERR || enumC6158fm2 == EnumC6158fm.CONN_BOSH_ERR) {
                c6165a.f21651a = str;
            }
            return c6165a;
        }
        enumC6158fm = EnumC6158fm.CONN_XMPP_ERR;
        c6165a.f21650a = enumC6158fm;
        enumC6158fm2 = c6165a.f21650a;
        if (enumC6158fm2 != EnumC6158fm.CONN_TCP_ERR_OTHER) {
        }
        c6165a.f21651a = str;
        return c6165a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static C6165a m2874c(Exception exc) {
        EnumC6158fm enumC6158fm;
        EnumC6158fm enumC6158fm2;
        m2876a(exc);
        boolean z = exc instanceof C6203gu;
        Exception exc2 = exc;
        if (z) {
            C6203gu c6203gu = (C6203gu) exc;
            exc2 = exc;
            if (c6203gu.m2703a() != null) {
                exc2 = c6203gu.m2703a();
            }
        }
        C6165a c6165a = new C6165a();
        String message = exc2.getMessage();
        if (exc2.getCause() != null) {
            message = exc2.getCause().getMessage();
        }
        int m2728a = C6194gl.m2728a(exc2);
        String str = exc2.getClass().getSimpleName() + Constants.COLON_SEPARATOR + message;
        if (m2728a == 105) {
            enumC6158fm = EnumC6158fm.BIND_TCP_READ_TIMEOUT;
        } else if (m2728a == 199) {
            enumC6158fm = EnumC6158fm.BIND_TCP_ERR;
        } else if (m2728a == 499) {
            c6165a.f21650a = EnumC6158fm.BIND_BOSH_ERR;
            if (message.startsWith("Terminal binding condition encountered: item-not-found")) {
                enumC6158fm = EnumC6158fm.BIND_BOSH_ITEM_NOT_FOUND;
            }
            enumC6158fm2 = c6165a.f21650a;
            if (enumC6158fm2 != EnumC6158fm.BIND_TCP_ERR || enumC6158fm2 == EnumC6158fm.BIND_XMPP_ERR || enumC6158fm2 == EnumC6158fm.BIND_BOSH_ERR) {
                c6165a.f21651a = str;
            }
            return c6165a;
        } else {
            enumC6158fm = m2728a != 109 ? m2728a != 110 ? EnumC6158fm.BIND_XMPP_ERR : EnumC6158fm.BIND_TCP_BROKEN_PIPE : EnumC6158fm.BIND_TCP_CONNRESET;
        }
        c6165a.f21650a = enumC6158fm;
        enumC6158fm2 = c6165a.f21650a;
        if (enumC6158fm2 != EnumC6158fm.BIND_TCP_ERR) {
        }
        c6165a.f21651a = str;
        return c6165a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static C6165a m2873d(Exception exc) {
        EnumC6158fm enumC6158fm;
        EnumC6158fm enumC6158fm2;
        m2876a(exc);
        boolean z = exc instanceof C6203gu;
        Exception exc2 = exc;
        if (z) {
            C6203gu c6203gu = (C6203gu) exc;
            exc2 = exc;
            if (c6203gu.m2703a() != null) {
                exc2 = c6203gu.m2703a();
            }
        }
        C6165a c6165a = new C6165a();
        String message = exc2.getMessage();
        int m2728a = C6194gl.m2728a(exc2);
        String str = exc2.getClass().getSimpleName() + Constants.COLON_SEPARATOR + message;
        if (m2728a == 105) {
            enumC6158fm = EnumC6158fm.CHANNEL_TCP_READTIMEOUT;
        } else if (m2728a == 199) {
            enumC6158fm = EnumC6158fm.CHANNEL_TCP_ERR;
        } else if (m2728a == 499) {
            c6165a.f21650a = EnumC6158fm.CHANNEL_BOSH_EXCEPTION;
            if (message.startsWith("Terminal binding condition encountered: item-not-found")) {
                enumC6158fm = EnumC6158fm.CHANNEL_BOSH_ITEMNOTFIND;
            }
            enumC6158fm2 = c6165a.f21650a;
            if (enumC6158fm2 != EnumC6158fm.CHANNEL_TCP_ERR || enumC6158fm2 == EnumC6158fm.CHANNEL_XMPPEXCEPTION || enumC6158fm2 == EnumC6158fm.CHANNEL_BOSH_EXCEPTION) {
                c6165a.f21651a = str;
            }
            return c6165a;
        } else {
            enumC6158fm = m2728a != 109 ? m2728a != 110 ? EnumC6158fm.CHANNEL_XMPPEXCEPTION : EnumC6158fm.CHANNEL_TCP_BROKEN_PIPE : EnumC6158fm.CHANNEL_TCP_CONNRESET;
        }
        c6165a.f21650a = enumC6158fm;
        enumC6158fm2 = c6165a.f21650a;
        if (enumC6158fm2 != EnumC6158fm.CHANNEL_TCP_ERR) {
        }
        c6165a.f21651a = str;
        return c6165a;
    }
}
