package com.xiaomi.stats;

final class d {

    static class a {
        com.xiaomi.push.thrift.a a;
        String b;

        a() {
        }
    }

    /* JADX WARNING: type inference failed for: r4v1, types: [java.lang.Throwable, java.lang.Object] */
    /* JADX WARNING: type inference failed for: r4v3, types: [java.lang.Throwable] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static com.xiaomi.stats.d.a a(java.lang.Exception r4) {
        /*
            e(r4)
            boolean r0 = r4 instanceof com.xiaomi.smack.l
            if (r0 == 0) goto L_0x0016
            r0 = r4
            com.xiaomi.smack.l r0 = (com.xiaomi.smack.l) r0
            java.lang.Throwable r0 = r0.a()
            if (r0 == 0) goto L_0x0016
            com.xiaomi.smack.l r4 = (com.xiaomi.smack.l) r4
            java.lang.Throwable r4 = r4.a()
        L_0x0016:
            com.xiaomi.stats.d$a r1 = new com.xiaomi.stats.d$a
            r1.<init>()
            java.lang.String r0 = r4.getMessage()
            java.lang.Throwable r2 = r4.getCause()
            if (r2 == 0) goto L_0x002d
            java.lang.Throwable r0 = r4.getCause()
            java.lang.String r0 = r0.getMessage()
        L_0x002d:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.Class r3 = r4.getClass()
            java.lang.String r3 = r3.getSimpleName()
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = ":"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r0 = r0.toString()
            int r2 = com.xiaomi.smack.c.a(r4)
            if (r2 == 0) goto L_0x005f
            com.xiaomi.push.thrift.a r3 = com.xiaomi.push.thrift.a.GSLB_REQUEST_SUCCESS
            int r3 = r3.a()
            int r2 = r2 + r3
            com.xiaomi.push.thrift.a r2 = com.xiaomi.push.thrift.a.a(r2)
            r1.a = r2
        L_0x005f:
            com.xiaomi.push.thrift.a r2 = r1.a
            if (r2 != 0) goto L_0x0067
            com.xiaomi.push.thrift.a r2 = com.xiaomi.push.thrift.a.GSLB_TCP_ERR_OTHER
            r1.a = r2
        L_0x0067:
            com.xiaomi.push.thrift.a r2 = r1.a
            com.xiaomi.push.thrift.a r3 = com.xiaomi.push.thrift.a.GSLB_TCP_ERR_OTHER
            if (r2 != r3) goto L_0x006f
            r1.b = r0
        L_0x006f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.stats.d.a(java.lang.Exception):com.xiaomi.stats.d$a");
    }

    /* JADX WARNING: type inference failed for: r5v1, types: [java.lang.Throwable, java.lang.Object] */
    /* JADX WARNING: type inference failed for: r5v3, types: [java.lang.Throwable] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static com.xiaomi.stats.d.a b(java.lang.Exception r5) {
        /*
            e(r5)
            boolean r0 = r5 instanceof com.xiaomi.smack.l
            if (r0 == 0) goto L_0x0016
            r0 = r5
            com.xiaomi.smack.l r0 = (com.xiaomi.smack.l) r0
            java.lang.Throwable r0 = r0.a()
            if (r0 == 0) goto L_0x0016
            com.xiaomi.smack.l r5 = (com.xiaomi.smack.l) r5
            java.lang.Throwable r5 = r5.a()
        L_0x0016:
            com.xiaomi.stats.d$a r1 = new com.xiaomi.stats.d$a
            r1.<init>()
            java.lang.String r0 = r5.getMessage()
            java.lang.Throwable r2 = r5.getCause()
            if (r2 == 0) goto L_0x002d
            java.lang.Throwable r0 = r5.getCause()
            java.lang.String r0 = r0.getMessage()
        L_0x002d:
            int r2 = com.xiaomi.smack.c.a(r5)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.Class r4 = r5.getClass()
            java.lang.String r4 = r4.getSimpleName()
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r4 = ":"
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.String r0 = r0.toString()
            if (r2 == 0) goto L_0x0088
            com.xiaomi.push.thrift.a r3 = com.xiaomi.push.thrift.a.CONN_SUCCESS
            int r3 = r3.a()
            int r2 = r2 + r3
            com.xiaomi.push.thrift.a r2 = com.xiaomi.push.thrift.a.a(r2)
            r1.a = r2
            com.xiaomi.push.thrift.a r2 = r1.a
            com.xiaomi.push.thrift.a r3 = com.xiaomi.push.thrift.a.CONN_BOSH_ERR
            if (r2 != r3) goto L_0x0073
            java.lang.Throwable r2 = r5.getCause()
            if (r2 == 0) goto L_0x0073
            boolean r2 = r2 instanceof java.net.UnknownHostException
            if (r2 == 0) goto L_0x0073
            com.xiaomi.push.thrift.a r2 = com.xiaomi.push.thrift.a.CONN_BOSH_UNKNOWNHOST
            r1.a = r2
        L_0x0073:
            com.xiaomi.push.thrift.a r2 = r1.a
            com.xiaomi.push.thrift.a r3 = com.xiaomi.push.thrift.a.CONN_TCP_ERR_OTHER
            if (r2 == r3) goto L_0x0085
            com.xiaomi.push.thrift.a r2 = r1.a
            com.xiaomi.push.thrift.a r3 = com.xiaomi.push.thrift.a.CONN_XMPP_ERR
            if (r2 == r3) goto L_0x0085
            com.xiaomi.push.thrift.a r2 = r1.a
            com.xiaomi.push.thrift.a r3 = com.xiaomi.push.thrift.a.CONN_BOSH_ERR
            if (r2 != r3) goto L_0x0087
        L_0x0085:
            r1.b = r0
        L_0x0087:
            return r1
        L_0x0088:
            com.xiaomi.push.thrift.a r2 = com.xiaomi.push.thrift.a.CONN_XMPP_ERR
            r1.a = r2
            goto L_0x0073
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.stats.d.b(java.lang.Exception):com.xiaomi.stats.d$a");
    }

    /* JADX WARNING: type inference failed for: r5v1, types: [java.lang.Throwable, java.lang.Object] */
    /* JADX WARNING: type inference failed for: r5v3, types: [java.lang.Throwable] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static com.xiaomi.stats.d.a c(java.lang.Exception r5) {
        /*
            e(r5)
            boolean r0 = r5 instanceof com.xiaomi.smack.l
            if (r0 == 0) goto L_0x0016
            r0 = r5
            com.xiaomi.smack.l r0 = (com.xiaomi.smack.l) r0
            java.lang.Throwable r0 = r0.a()
            if (r0 == 0) goto L_0x0016
            com.xiaomi.smack.l r5 = (com.xiaomi.smack.l) r5
            java.lang.Throwable r5 = r5.a()
        L_0x0016:
            com.xiaomi.stats.d$a r1 = new com.xiaomi.stats.d$a
            r1.<init>()
            java.lang.String r0 = r5.getMessage()
            java.lang.Throwable r2 = r5.getCause()
            if (r2 == 0) goto L_0x002d
            java.lang.Throwable r0 = r5.getCause()
            java.lang.String r0 = r0.getMessage()
        L_0x002d:
            int r2 = com.xiaomi.smack.c.a(r5)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.Class r4 = r5.getClass()
            java.lang.String r4 = r4.getSimpleName()
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r4 = ":"
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.StringBuilder r3 = r3.append(r0)
            java.lang.String r3 = r3.toString()
            switch(r2) {
                case 105: goto L_0x006c;
                case 109: goto L_0x0071;
                case 110: goto L_0x0076;
                case 199: goto L_0x007b;
                case 499: goto L_0x0080;
                default: goto L_0x0053;
            }
        L_0x0053:
            com.xiaomi.push.thrift.a r0 = com.xiaomi.push.thrift.a.BIND_XMPP_ERR
            r1.a = r0
        L_0x0057:
            com.xiaomi.push.thrift.a r0 = r1.a
            com.xiaomi.push.thrift.a r2 = com.xiaomi.push.thrift.a.BIND_TCP_ERR
            if (r0 == r2) goto L_0x0069
            com.xiaomi.push.thrift.a r0 = r1.a
            com.xiaomi.push.thrift.a r2 = com.xiaomi.push.thrift.a.BIND_XMPP_ERR
            if (r0 == r2) goto L_0x0069
            com.xiaomi.push.thrift.a r0 = r1.a
            com.xiaomi.push.thrift.a r2 = com.xiaomi.push.thrift.a.BIND_BOSH_ERR
            if (r0 != r2) goto L_0x006b
        L_0x0069:
            r1.b = r3
        L_0x006b:
            return r1
        L_0x006c:
            com.xiaomi.push.thrift.a r0 = com.xiaomi.push.thrift.a.BIND_TCP_READ_TIMEOUT
            r1.a = r0
            goto L_0x0057
        L_0x0071:
            com.xiaomi.push.thrift.a r0 = com.xiaomi.push.thrift.a.BIND_TCP_CONNRESET
            r1.a = r0
            goto L_0x0057
        L_0x0076:
            com.xiaomi.push.thrift.a r0 = com.xiaomi.push.thrift.a.BIND_TCP_BROKEN_PIPE
            r1.a = r0
            goto L_0x0057
        L_0x007b:
            com.xiaomi.push.thrift.a r0 = com.xiaomi.push.thrift.a.BIND_TCP_ERR
            r1.a = r0
            goto L_0x0057
        L_0x0080:
            com.xiaomi.push.thrift.a r2 = com.xiaomi.push.thrift.a.BIND_BOSH_ERR
            r1.a = r2
            java.lang.String r2 = "Terminal binding condition encountered: item-not-found"
            boolean r0 = r0.startsWith(r2)
            if (r0 == 0) goto L_0x0057
            com.xiaomi.push.thrift.a r0 = com.xiaomi.push.thrift.a.BIND_BOSH_ITEM_NOT_FOUND
            r1.a = r0
            goto L_0x0057
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.stats.d.c(java.lang.Exception):com.xiaomi.stats.d$a");
    }

    /* JADX WARNING: type inference failed for: r5v1, types: [java.lang.Throwable, java.lang.Object] */
    /* JADX WARNING: type inference failed for: r5v3, types: [java.lang.Throwable] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static com.xiaomi.stats.d.a d(java.lang.Exception r5) {
        /*
            e(r5)
            boolean r0 = r5 instanceof com.xiaomi.smack.l
            if (r0 == 0) goto L_0x0016
            r0 = r5
            com.xiaomi.smack.l r0 = (com.xiaomi.smack.l) r0
            java.lang.Throwable r0 = r0.a()
            if (r0 == 0) goto L_0x0016
            com.xiaomi.smack.l r5 = (com.xiaomi.smack.l) r5
            java.lang.Throwable r5 = r5.a()
        L_0x0016:
            com.xiaomi.stats.d$a r0 = new com.xiaomi.stats.d$a
            r0.<init>()
            java.lang.String r1 = r5.getMessage()
            int r2 = com.xiaomi.smack.c.a(r5)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.Class r4 = r5.getClass()
            java.lang.String r4 = r4.getSimpleName()
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r4 = ":"
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.StringBuilder r3 = r3.append(r1)
            java.lang.String r3 = r3.toString()
            switch(r2) {
                case 105: goto L_0x005e;
                case 109: goto L_0x0063;
                case 110: goto L_0x0068;
                case 199: goto L_0x006d;
                case 499: goto L_0x0072;
                default: goto L_0x0045;
            }
        L_0x0045:
            com.xiaomi.push.thrift.a r1 = com.xiaomi.push.thrift.a.CHANNEL_XMPPEXCEPTION
            r0.a = r1
        L_0x0049:
            com.xiaomi.push.thrift.a r1 = r0.a
            com.xiaomi.push.thrift.a r2 = com.xiaomi.push.thrift.a.CHANNEL_TCP_ERR
            if (r1 == r2) goto L_0x005b
            com.xiaomi.push.thrift.a r1 = r0.a
            com.xiaomi.push.thrift.a r2 = com.xiaomi.push.thrift.a.CHANNEL_XMPPEXCEPTION
            if (r1 == r2) goto L_0x005b
            com.xiaomi.push.thrift.a r1 = r0.a
            com.xiaomi.push.thrift.a r2 = com.xiaomi.push.thrift.a.CHANNEL_BOSH_EXCEPTION
            if (r1 != r2) goto L_0x005d
        L_0x005b:
            r0.b = r3
        L_0x005d:
            return r0
        L_0x005e:
            com.xiaomi.push.thrift.a r1 = com.xiaomi.push.thrift.a.CHANNEL_TCP_READTIMEOUT
            r0.a = r1
            goto L_0x0049
        L_0x0063:
            com.xiaomi.push.thrift.a r1 = com.xiaomi.push.thrift.a.CHANNEL_TCP_CONNRESET
            r0.a = r1
            goto L_0x0049
        L_0x0068:
            com.xiaomi.push.thrift.a r1 = com.xiaomi.push.thrift.a.CHANNEL_TCP_BROKEN_PIPE
            r0.a = r1
            goto L_0x0049
        L_0x006d:
            com.xiaomi.push.thrift.a r1 = com.xiaomi.push.thrift.a.CHANNEL_TCP_ERR
            r0.a = r1
            goto L_0x0049
        L_0x0072:
            com.xiaomi.push.thrift.a r2 = com.xiaomi.push.thrift.a.CHANNEL_BOSH_EXCEPTION
            r0.a = r2
            java.lang.String r2 = "Terminal binding condition encountered: item-not-found"
            boolean r1 = r1.startsWith(r2)
            if (r1 == 0) goto L_0x0049
            com.xiaomi.push.thrift.a r1 = com.xiaomi.push.thrift.a.CHANNEL_BOSH_ITEMNOTFIND
            r0.a = r1
            goto L_0x0049
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.stats.d.d(java.lang.Exception):com.xiaomi.stats.d$a");
    }

    private static void e(Exception exc) {
        if (exc == null) {
            throw new NullPointerException();
        }
    }
}
