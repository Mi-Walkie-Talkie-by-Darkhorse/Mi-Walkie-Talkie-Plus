package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.channel.commonutils.string.d;
import com.xiaomi.push.service.ae;
import com.xiaomi.xmpush.thrift.ac;
import com.xiaomi.xmpush.thrift.af;
import com.xiaomi.xmpush.thrift.ak;
import com.xiaomi.xmpush.thrift.ar;
import com.xiaomi.xmpush.thrift.p;
import com.xiaomi.xmpush.thrift.r;
import com.xiaomi.xmpush.thrift.s;
import com.xiaomi.xmpush.thrift.u;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.TimeZone;
import org.apache.thrift.a;
import org.apache.thrift.f;

public class x {
    private static x a = null;
    private static Queue<String> c;
    private static Object d = new Object();
    private Context b;

    private x(Context context) {
        this.b = context.getApplicationContext();
        if (this.b == null) {
            this.b = context;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0026  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.content.Intent a(android.content.Context r6, java.lang.String r7, java.util.Map<java.lang.String, java.lang.String> r8) {
        /*
            r1 = 0
            if (r8 == 0) goto L_0x000b
            java.lang.String r0 = "notify_effect"
            boolean r0 = r8.containsKey(r0)
            if (r0 != 0) goto L_0x000c
        L_0x000b:
            return r1
        L_0x000c:
            java.lang.String r0 = "notify_effect"
            java.lang.Object r0 = r8.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            java.lang.String r2 = com.xiaomi.push.service.ao.a
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L_0x0056
            android.content.pm.PackageManager r0 = r6.getPackageManager()     // Catch:{ Exception -> 0x0039 }
            android.content.Intent r0 = r0.getLaunchIntentForPackage(r7)     // Catch:{ Exception -> 0x0039 }
        L_0x0024:
            if (r0 == 0) goto L_0x000b
            r2 = 268435456(0x10000000, float:2.5243549E-29)
            r0.addFlags(r2)
            android.content.pm.PackageManager r2 = r6.getPackageManager()     // Catch:{ Exception -> 0x016c }
            r3 = 65536(0x10000, float:9.18355E-41)
            android.content.pm.ResolveInfo r2 = r2.resolveActivity(r0, r3)     // Catch:{ Exception -> 0x016c }
            if (r2 == 0) goto L_0x000b
            r1 = r0
            goto L_0x000b
        L_0x0039:
            r0 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Cause: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r0 = r0.getMessage()
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r0 = r0.toString()
            com.xiaomi.channel.commonutils.logger.b.d(r0)
            r0 = r1
            goto L_0x0024
        L_0x0056:
            java.lang.String r2 = com.xiaomi.push.service.ao.b
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L_0x00e8
            java.lang.String r0 = "intent_uri"
            boolean r0 = r8.containsKey(r0)
            if (r0 == 0) goto L_0x0095
            java.lang.String r0 = "intent_uri"
            java.lang.Object r0 = r8.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L_0x0199
            r2 = 1
            android.content.Intent r0 = android.content.Intent.parseUri(r0, r2)     // Catch:{ URISyntaxException -> 0x018c }
            r0.setPackage(r7)     // Catch:{ URISyntaxException -> 0x0079 }
            goto L_0x0024
        L_0x0079:
            r2 = move-exception
        L_0x007a:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Cause: "
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r2 = r2.getMessage()
            java.lang.StringBuilder r2 = r3.append(r2)
            java.lang.String r2 = r2.toString()
            com.xiaomi.channel.commonutils.logger.b.d(r2)
            goto L_0x0024
        L_0x0095:
            java.lang.String r0 = "class_name"
            boolean r0 = r8.containsKey(r0)
            if (r0 == 0) goto L_0x0196
            java.lang.String r0 = "class_name"
            java.lang.Object r0 = r8.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            android.content.Intent r2 = new android.content.Intent
            r2.<init>()
            android.content.ComponentName r3 = new android.content.ComponentName
            r3.<init>(r7, r0)
            r2.setComponent(r3)
            java.lang.String r0 = "intent_flag"
            boolean r0 = r8.containsKey(r0)     // Catch:{ NumberFormatException -> 0x00cc }
            if (r0 == 0) goto L_0x00c9
            java.lang.String r0 = "intent_flag"
            java.lang.Object r0 = r8.get(r0)     // Catch:{ NumberFormatException -> 0x00cc }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ NumberFormatException -> 0x00cc }
            int r0 = java.lang.Integer.parseInt(r0)     // Catch:{ NumberFormatException -> 0x00cc }
            r2.setFlags(r0)     // Catch:{ NumberFormatException -> 0x00cc }
        L_0x00c9:
            r0 = r2
            goto L_0x0024
        L_0x00cc:
            r0 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Cause by intent_flag: "
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r0 = r0.getMessage()
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.String r0 = r0.toString()
            com.xiaomi.channel.commonutils.logger.b.d(r0)
            goto L_0x00c9
        L_0x00e8:
            java.lang.String r2 = com.xiaomi.push.service.ao.c
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L_0x0196
            java.lang.String r0 = "web_uri"
            java.lang.Object r0 = r8.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L_0x0196
            java.lang.String r0 = r0.trim()
            java.lang.String r2 = "http://"
            boolean r2 = r0.startsWith(r2)
            if (r2 != 0) goto L_0x0194
            java.lang.String r2 = "https://"
            boolean r2 = r0.startsWith(r2)
            if (r2 != 0) goto L_0x0194
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "http://"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r0 = r0.toString()
            r2 = r0
        L_0x0122:
            java.net.URL r0 = new java.net.URL     // Catch:{ MalformedURLException -> 0x0189 }
            r0.<init>(r2)     // Catch:{ MalformedURLException -> 0x0189 }
            java.lang.String r0 = r0.getProtocol()     // Catch:{ MalformedURLException -> 0x0189 }
            java.lang.String r3 = "http"
            boolean r3 = r3.equals(r0)     // Catch:{ MalformedURLException -> 0x0189 }
            if (r3 != 0) goto L_0x013b
            java.lang.String r3 = "https"
            boolean r0 = r3.equals(r0)     // Catch:{ MalformedURLException -> 0x0189 }
            if (r0 == 0) goto L_0x0191
        L_0x013b:
            android.content.Intent r0 = new android.content.Intent     // Catch:{ MalformedURLException -> 0x0189 }
            java.lang.String r3 = "android.intent.action.VIEW"
            r0.<init>(r3)     // Catch:{ MalformedURLException -> 0x0189 }
            android.net.Uri r2 = android.net.Uri.parse(r2)     // Catch:{ MalformedURLException -> 0x014b }
            r0.setData(r2)     // Catch:{ MalformedURLException -> 0x014b }
            goto L_0x0024
        L_0x014b:
            r2 = move-exception
            r5 = r2
            r2 = r0
            r0 = r5
        L_0x014f:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Cause: "
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r0 = r0.getMessage()
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.String r0 = r0.toString()
            com.xiaomi.channel.commonutils.logger.b.d(r0)
            r0 = r2
            goto L_0x0024
        L_0x016c:
            r0 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Cause: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r0 = r0.getMessage()
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r0 = r0.toString()
            com.xiaomi.channel.commonutils.logger.b.d(r0)
            goto L_0x000b
        L_0x0189:
            r0 = move-exception
            r2 = r1
            goto L_0x014f
        L_0x018c:
            r0 = move-exception
            r2 = r0
            r0 = r1
            goto L_0x007a
        L_0x0191:
            r0 = r1
            goto L_0x0024
        L_0x0194:
            r2 = r0
            goto L_0x0122
        L_0x0196:
            r0 = r1
            goto L_0x0024
        L_0x0199:
            r0 = r1
            goto L_0x0024
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.x.a(android.content.Context, java.lang.String, java.util.Map):android.content.Intent");
    }

    /* JADX WARNING: Removed duplicated region for block: B:289:0x072c  */
    /* JADX WARNING: Removed duplicated region for block: B:292:0x0739  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.xiaomi.mipush.sdk.PushMessageHandler.a a(com.xiaomi.xmpush.thrift.ac r13, boolean r14, byte[] r15) {
        /*
            r12 = this;
            r2 = -2
            r9 = 1
            r10 = 0
            r8 = 0
            r5 = 0
            android.content.Context r0 = r12.b     // Catch:{ d -> 0x0077, f -> 0x007f }
            org.apache.thrift.a r0 = com.xiaomi.mipush.sdk.v.a(r0, r13)     // Catch:{ d -> 0x0077, f -> 0x007f }
            if (r0 != 0) goto L_0x0027
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ d -> 0x0077, f -> 0x007f }
            r0.<init>()     // Catch:{ d -> 0x0077, f -> 0x007f }
            java.lang.String r1 = "receiving an un-recognized message. "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ d -> 0x0077, f -> 0x007f }
            com.xiaomi.xmpush.thrift.a r1 = r13.a     // Catch:{ d -> 0x0077, f -> 0x007f }
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ d -> 0x0077, f -> 0x007f }
            java.lang.String r0 = r0.toString()     // Catch:{ d -> 0x0077, f -> 0x007f }
            com.xiaomi.channel.commonutils.logger.b.d(r0)     // Catch:{ d -> 0x0077, f -> 0x007f }
        L_0x0026:
            return r5
        L_0x0027:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ d -> 0x0077, f -> 0x007f }
            r1.<init>()     // Catch:{ d -> 0x0077, f -> 0x007f }
            java.lang.String r3 = "receive a message."
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ d -> 0x0077, f -> 0x007f }
            java.lang.StringBuilder r1 = r1.append(r0)     // Catch:{ d -> 0x0077, f -> 0x007f }
            java.lang.String r1 = r1.toString()     // Catch:{ d -> 0x0077, f -> 0x007f }
            com.xiaomi.channel.commonutils.logger.b.c(r1)     // Catch:{ d -> 0x0077, f -> 0x007f }
            com.xiaomi.xmpush.thrift.a r1 = r13.a()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "processing a message, action="
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.StringBuilder r3 = r3.append(r1)
            java.lang.String r3 = r3.toString()
            com.xiaomi.channel.commonutils.logger.b.a(r3)
            int[] r3 = com.xiaomi.mipush.sdk.y.a
            int r1 = r1.ordinal()
            r1 = r3[r1]
            switch(r1) {
                case 1: goto L_0x0063;
                case 2: goto L_0x0089;
                case 3: goto L_0x00c6;
                case 4: goto L_0x0268;
                case 5: goto L_0x02a0;
                case 6: goto L_0x02d8;
                case 7: goto L_0x03c6;
                default: goto L_0x0062;
            }
        L_0x0062:
            goto L_0x0026
        L_0x0063:
            android.content.Context r1 = r12.b
            com.xiaomi.mipush.sdk.c r1 = com.xiaomi.mipush.sdk.c.a(r1)
            boolean r1 = r1.k()
            if (r1 == 0) goto L_0x00e1
            if (r14 != 0) goto L_0x00e1
            java.lang.String r0 = "receive a message in pause state. drop it"
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            goto L_0x0026
        L_0x0077:
            r0 = move-exception
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            r12.a(r13)
            goto L_0x0026
        L_0x007f:
            r0 = move-exception
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            java.lang.String r0 = "receive a message which action string is not valid. is the reg expired?"
            com.xiaomi.channel.commonutils.logger.b.d(r0)
            goto L_0x0026
        L_0x0089:
            r4 = r0
            com.xiaomi.xmpush.thrift.ah r4 = (com.xiaomi.xmpush.thrift.ah) r4
            long r0 = r4.f
            int r0 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
            if (r0 != 0) goto L_0x009f
            android.content.Context r0 = r12.b
            com.xiaomi.mipush.sdk.c r0 = com.xiaomi.mipush.sdk.c.a(r0)
            java.lang.String r1 = r4.h
            java.lang.String r2 = r4.i
            r0.b(r1, r2)
        L_0x009f:
            java.lang.String r0 = r4.h
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x07d2
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.lang.String r0 = r4.h
            r1.add(r0)
        L_0x00b1:
            java.lang.String r0 = "register"
            long r2 = r4.f
            java.lang.String r4 = r4.g
            com.xiaomi.mipush.sdk.MiPushCommandMessage r5 = com.xiaomi.mipush.sdk.PushMessageHelper.generateCommandMessage(r0, r1, r2, r4, r5)
            android.content.Context r0 = r12.b
            com.xiaomi.mipush.sdk.z r0 = com.xiaomi.mipush.sdk.z.a(r0)
            r0.e()
            goto L_0x0026
        L_0x00c6:
            com.xiaomi.xmpush.thrift.ao r0 = (com.xiaomi.xmpush.thrift.ao) r0
            long r0 = r0.f
            int r0 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
            if (r0 != 0) goto L_0x00dc
            android.content.Context r0 = r12.b
            com.xiaomi.mipush.sdk.c r0 = com.xiaomi.mipush.sdk.c.a(r0)
            r0.h()
            android.content.Context r0 = r12.b
            com.xiaomi.mipush.sdk.MiPushClient.clearExtras(r0)
        L_0x00dc:
            com.xiaomi.mipush.sdk.PushMessageHandler.a()
            goto L_0x0026
        L_0x00e1:
            com.xiaomi.xmpush.thrift.ak r0 = (com.xiaomi.xmpush.thrift.ak) r0
            com.xiaomi.xmpush.thrift.r r3 = r0.l()
            if (r3 != 0) goto L_0x00f0
            java.lang.String r0 = "receive an empty message without push content, drop it"
            com.xiaomi.channel.commonutils.logger.b.d(r0)
            goto L_0x0026
        L_0x00f0:
            if (r14 == 0) goto L_0x010b
            boolean r1 = com.xiaomi.push.service.ae.b(r13)
            if (r1 == 0) goto L_0x017e
            android.content.Context r1 = r12.b
            java.lang.String r2 = r3.b()
            com.xiaomi.xmpush.thrift.s r4 = r13.m()
            java.lang.String r6 = r13.f
            java.lang.String r7 = r3.d()
            com.xiaomi.mipush.sdk.MiPushClient.reportIgnoreRegMessageClicked(r1, r2, r4, r6, r7)
        L_0x010b:
            if (r14 != 0) goto L_0x012e
            java.lang.String r1 = r0.j()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L_0x0191
            android.content.Context r1 = r12.b
            java.lang.String r2 = r0.j()
            long r6 = com.xiaomi.mipush.sdk.MiPushClient.aliasSetTime(r1, r2)
            int r1 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r1 >= 0) goto L_0x0191
            android.content.Context r1 = r12.b
            java.lang.String r2 = r0.j()
            com.xiaomi.mipush.sdk.MiPushClient.addAlias(r1, r2)
        L_0x012e:
            com.xiaomi.xmpush.thrift.s r1 = r13.h
            if (r1 == 0) goto L_0x07cf
            com.xiaomi.xmpush.thrift.s r1 = r13.h
            java.util.Map r1 = r1.s()
            if (r1 == 0) goto L_0x07cf
            com.xiaomi.xmpush.thrift.s r1 = r13.h
            java.util.Map<java.lang.String, java.lang.String> r1 = r1.j
            java.lang.String r2 = "jobkey"
            java.lang.Object r1 = r1.get(r2)
            java.lang.String r1 = (java.lang.String) r1
        L_0x0146:
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 == 0) goto L_0x07cc
            java.lang.String r1 = r3.b()
            r2 = r1
        L_0x0151:
            if (r14 != 0) goto L_0x01b4
            android.content.Context r1 = r12.b
            boolean r1 = a(r1, r2)
            if (r1 == 0) goto L_0x01b4
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "drop a duplicate message, key="
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            com.xiaomi.channel.commonutils.logger.b.a(r1)
        L_0x0171:
            com.xiaomi.xmpush.thrift.s r1 = r13.m()
            if (r1 != 0) goto L_0x0026
            if (r14 != 0) goto L_0x0026
            r12.a(r0, r13)
            goto L_0x0026
        L_0x017e:
            android.content.Context r1 = r12.b
            java.lang.String r2 = r3.b()
            com.xiaomi.xmpush.thrift.s r4 = r13.m()
            java.lang.String r6 = r3.d()
            com.xiaomi.mipush.sdk.MiPushClient.reportMessageClicked(r1, r2, r4, r6)
            goto L_0x010b
        L_0x0191:
            java.lang.String r1 = r0.h()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L_0x012e
            android.content.Context r1 = r12.b
            java.lang.String r2 = r0.h()
            long r6 = com.xiaomi.mipush.sdk.MiPushClient.topicSubscribedTime(r1, r2)
            int r1 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r1 >= 0) goto L_0x012e
            android.content.Context r1 = r12.b
            java.lang.String r2 = r0.h()
            com.xiaomi.mipush.sdk.MiPushClient.addTopic(r1, r2)
            goto L_0x012e
        L_0x01b4:
            com.xiaomi.xmpush.thrift.s r1 = r13.m()
            com.xiaomi.mipush.sdk.MiPushMessage r1 = com.xiaomi.mipush.sdk.PushMessageHelper.generateMessage(r0, r1, r14)
            int r4 = r1.getPassThrough()
            if (r4 != 0) goto L_0x01d5
            if (r14 != 0) goto L_0x01d5
            java.util.Map r4 = r1.getExtra()
            boolean r4 = com.xiaomi.push.service.ae.a(r4)
            if (r4 == 0) goto L_0x01d5
            android.content.Context r0 = r12.b
            com.xiaomi.push.service.ae.a(r0, r13, r15)
            goto L_0x0026
        L_0x01d5:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r6 = "receive a message, msgid="
            java.lang.StringBuilder r4 = r4.append(r6)
            java.lang.String r6 = r3.b()
            java.lang.StringBuilder r4 = r4.append(r6)
            java.lang.String r6 = ", jobkey="
            java.lang.StringBuilder r4 = r4.append(r6)
            java.lang.StringBuilder r2 = r4.append(r2)
            java.lang.String r2 = r2.toString()
            com.xiaomi.channel.commonutils.logger.b.a(r2)
            if (r14 == 0) goto L_0x07c9
            java.util.Map r2 = r1.getExtra()
            if (r2 == 0) goto L_0x07c9
            java.util.Map r2 = r1.getExtra()
            java.lang.String r4 = "notify_effect"
            boolean r2 = r2.containsKey(r4)
            if (r2 == 0) goto L_0x07c9
            java.util.Map r2 = r1.getExtra()
            java.lang.String r0 = "notify_effect"
            java.lang.Object r0 = r2.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            boolean r4 = com.xiaomi.push.service.ae.b(r13)
            if (r4 == 0) goto L_0x0246
            android.content.Context r0 = r12.b
            java.lang.String r1 = r13.f
            android.content.Intent r0 = a(r0, r1, r2)
            if (r0 != 0) goto L_0x0230
            java.lang.String r0 = "Getting Intent fail from ignore reg message. "
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            goto L_0x0026
        L_0x0230:
            java.lang.String r1 = r3.f()
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 != 0) goto L_0x023f
            java.lang.String r2 = "payload"
            r0.putExtra(r2, r1)
        L_0x023f:
            android.content.Context r1 = r12.b
            r1.startActivity(r0)
            goto L_0x0026
        L_0x0246:
            android.content.Context r3 = r12.b
            android.content.Context r4 = r12.b
            java.lang.String r4 = r4.getPackageName()
            android.content.Intent r2 = a(r3, r4, r2)
            if (r2 == 0) goto L_0x0026
            java.lang.String r3 = com.xiaomi.push.service.ao.c
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L_0x0261
            java.lang.String r0 = "key_message"
            r2.putExtra(r0, r1)
        L_0x0261:
            android.content.Context r0 = r12.b
            r0.startActivity(r2)
            goto L_0x0026
        L_0x0268:
            r6 = r0
            com.xiaomi.xmpush.thrift.am r6 = (com.xiaomi.xmpush.thrift.am) r6
            long r0 = r6.f
            int r0 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
            if (r0 != 0) goto L_0x027a
            android.content.Context r0 = r12.b
            java.lang.String r1 = r6.h()
            com.xiaomi.mipush.sdk.MiPushClient.addTopic(r0, r1)
        L_0x027a:
            java.lang.String r0 = r6.h()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x07c6
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.lang.String r0 = r6.h()
            r1.add(r0)
        L_0x0290:
            java.lang.String r0 = "subscribe-topic"
            long r2 = r6.f
            java.lang.String r4 = r6.g
            java.lang.String r5 = r6.k()
            com.xiaomi.mipush.sdk.MiPushCommandMessage r5 = com.xiaomi.mipush.sdk.PushMessageHelper.generateCommandMessage(r0, r1, r2, r4, r5)
            goto L_0x0026
        L_0x02a0:
            r6 = r0
            com.xiaomi.xmpush.thrift.aq r6 = (com.xiaomi.xmpush.thrift.aq) r6
            long r0 = r6.f
            int r0 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
            if (r0 != 0) goto L_0x02b2
            android.content.Context r0 = r12.b
            java.lang.String r1 = r6.h()
            com.xiaomi.mipush.sdk.MiPushClient.removeTopic(r0, r1)
        L_0x02b2:
            java.lang.String r0 = r6.h()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x07c3
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.lang.String r0 = r6.h()
            r1.add(r0)
        L_0x02c8:
            java.lang.String r0 = "unsubscibe-topic"
            long r2 = r6.f
            java.lang.String r4 = r6.g
            java.lang.String r5 = r6.k()
            com.xiaomi.mipush.sdk.MiPushCommandMessage r5 = com.xiaomi.mipush.sdk.PushMessageHelper.generateCommandMessage(r0, r1, r2, r4, r5)
            goto L_0x0026
        L_0x02d8:
            r5 = r0
            com.xiaomi.xmpush.thrift.ab r5 = (com.xiaomi.xmpush.thrift.ab) r5
            java.lang.String r0 = r5.e()
            java.util.List r3 = r5.k()
            long r6 = r5.g
            int r1 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r1 != 0) goto L_0x03c3
            java.lang.String r1 = "accept-time"
            boolean r1 = android.text.TextUtils.equals(r0, r1)
            if (r1 == 0) goto L_0x0351
            if (r3 == 0) goto L_0x0351
            int r1 = r3.size()
            if (r1 <= r9) goto L_0x0351
            android.content.Context r4 = r12.b
            java.lang.Object r1 = r3.get(r8)
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r2 = r3.get(r9)
            java.lang.String r2 = (java.lang.String) r2
            com.xiaomi.mipush.sdk.MiPushClient.addAcceptTime(r4, r1, r2)
            java.lang.String r1 = "00:00"
            java.lang.Object r2 = r3.get(r8)
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0347
            java.lang.String r1 = "00:00"
            java.lang.Object r2 = r3.get(r9)
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0347
            android.content.Context r1 = r12.b
            com.xiaomi.mipush.sdk.c r1 = com.xiaomi.mipush.sdk.c.a(r1)
            r1.a(r9)
        L_0x032b:
            java.lang.String r1 = "GMT+08"
            java.util.TimeZone r1 = java.util.TimeZone.getTimeZone(r1)
            java.util.TimeZone r2 = java.util.TimeZone.getDefault()
            java.util.List r1 = r12.a(r1, r2, r3)
        L_0x0339:
            long r2 = r5.g
            java.lang.String r4 = r5.h
            java.lang.String r5 = r5.m()
            com.xiaomi.mipush.sdk.MiPushCommandMessage r5 = com.xiaomi.mipush.sdk.PushMessageHelper.generateCommandMessage(r0, r1, r2, r4, r5)
            goto L_0x0026
        L_0x0347:
            android.content.Context r1 = r12.b
            com.xiaomi.mipush.sdk.c r1 = com.xiaomi.mipush.sdk.c.a(r1)
            r1.a(r8)
            goto L_0x032b
        L_0x0351:
            java.lang.String r1 = "set-alias"
            boolean r1 = android.text.TextUtils.equals(r0, r1)
            if (r1 == 0) goto L_0x036e
            if (r3 == 0) goto L_0x036e
            int r1 = r3.size()
            if (r1 <= 0) goto L_0x036e
            android.content.Context r2 = r12.b
            java.lang.Object r1 = r3.get(r8)
            java.lang.String r1 = (java.lang.String) r1
            com.xiaomi.mipush.sdk.MiPushClient.addAlias(r2, r1)
            r1 = r3
            goto L_0x0339
        L_0x036e:
            java.lang.String r1 = "unset-alias"
            boolean r1 = android.text.TextUtils.equals(r0, r1)
            if (r1 == 0) goto L_0x038b
            if (r3 == 0) goto L_0x038b
            int r1 = r3.size()
            if (r1 <= 0) goto L_0x038b
            android.content.Context r2 = r12.b
            java.lang.Object r1 = r3.get(r8)
            java.lang.String r1 = (java.lang.String) r1
            com.xiaomi.mipush.sdk.MiPushClient.removeAlias(r2, r1)
            r1 = r3
            goto L_0x0339
        L_0x038b:
            java.lang.String r1 = "set-account"
            boolean r1 = android.text.TextUtils.equals(r0, r1)
            if (r1 == 0) goto L_0x03a8
            if (r3 == 0) goto L_0x03a8
            int r1 = r3.size()
            if (r1 <= 0) goto L_0x03a8
            android.content.Context r2 = r12.b
            java.lang.Object r1 = r3.get(r8)
            java.lang.String r1 = (java.lang.String) r1
            com.xiaomi.mipush.sdk.MiPushClient.addAccount(r2, r1)
            r1 = r3
            goto L_0x0339
        L_0x03a8:
            java.lang.String r1 = "unset-account"
            boolean r1 = android.text.TextUtils.equals(r0, r1)
            if (r1 == 0) goto L_0x03c3
            if (r3 == 0) goto L_0x03c3
            int r1 = r3.size()
            if (r1 <= 0) goto L_0x03c3
            android.content.Context r2 = r12.b
            java.lang.Object r1 = r3.get(r8)
            java.lang.String r1 = (java.lang.String) r1
            com.xiaomi.mipush.sdk.MiPushClient.removeAccount(r2, r1)
        L_0x03c3:
            r1 = r3
            goto L_0x0339
        L_0x03c6:
            boolean r1 = r0 instanceof com.xiaomi.xmpush.thrift.y
            if (r1 == 0) goto L_0x0543
            com.xiaomi.xmpush.thrift.y r0 = (com.xiaomi.xmpush.thrift.y) r0
            java.lang.String r1 = r0.c()
            com.xiaomi.xmpush.thrift.p r2 = com.xiaomi.xmpush.thrift.p.DisablePushMessage
            java.lang.String r2 = r2.T
            java.lang.String r3 = r0.e
            boolean r2 = r2.equalsIgnoreCase(r3)
            if (r2 == 0) goto L_0x0490
            long r2 = r0.g
            int r0 = (r2 > r10 ? 1 : (r2 == r10 ? 0 : -1))
            if (r0 != 0) goto L_0x0433
            java.lang.Class<com.xiaomi.mipush.sdk.u> r2 = com.xiaomi.mipush.sdk.u.class
            monitor-enter(r2)
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x0430 }
            com.xiaomi.mipush.sdk.u r0 = com.xiaomi.mipush.sdk.u.a(r0)     // Catch:{ all -> 0x0430 }
            boolean r0 = r0.e(r1)     // Catch:{ all -> 0x0430 }
            if (r0 == 0) goto L_0x042d
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x0430 }
            com.xiaomi.mipush.sdk.u r0 = com.xiaomi.mipush.sdk.u.a(r0)     // Catch:{ all -> 0x0430 }
            r0.d(r1)     // Catch:{ all -> 0x0430 }
            java.lang.String r0 = "disable_syncing"
            android.content.Context r1 = r12.b     // Catch:{ all -> 0x0430 }
            com.xiaomi.mipush.sdk.u r1 = com.xiaomi.mipush.sdk.u.a(r1)     // Catch:{ all -> 0x0430 }
            java.lang.String r1 = r1.a()     // Catch:{ all -> 0x0430 }
            boolean r0 = r0.equals(r1)     // Catch:{ all -> 0x0430 }
            if (r0 == 0) goto L_0x042d
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x0430 }
            com.xiaomi.mipush.sdk.u r0 = com.xiaomi.mipush.sdk.u.a(r0)     // Catch:{ all -> 0x0430 }
            java.lang.String r1 = "disable_synced"
            r0.f(r1)     // Catch:{ all -> 0x0430 }
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x0430 }
            com.xiaomi.mipush.sdk.MiPushClient.clearNotification(r0)     // Catch:{ all -> 0x0430 }
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x0430 }
            com.xiaomi.mipush.sdk.MiPushClient.clearLocalNotificationType(r0)     // Catch:{ all -> 0x0430 }
            com.xiaomi.mipush.sdk.PushMessageHandler.a()     // Catch:{ all -> 0x0430 }
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x0430 }
            com.xiaomi.mipush.sdk.z r0 = com.xiaomi.mipush.sdk.z.a(r0)     // Catch:{ all -> 0x0430 }
            r0.b()     // Catch:{ all -> 0x0430 }
        L_0x042d:
            monitor-exit(r2)     // Catch:{ all -> 0x0430 }
            goto L_0x0026
        L_0x0430:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0430 }
            throw r0
        L_0x0433:
            java.lang.String r0 = "disable_syncing"
            android.content.Context r2 = r12.b
            com.xiaomi.mipush.sdk.u r2 = com.xiaomi.mipush.sdk.u.a(r2)
            java.lang.String r2 = r2.a()
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L_0x0485
            java.lang.Class<com.xiaomi.mipush.sdk.u> r2 = com.xiaomi.mipush.sdk.u.class
            monitor-enter(r2)
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x0478 }
            com.xiaomi.mipush.sdk.u r0 = com.xiaomi.mipush.sdk.u.a(r0)     // Catch:{ all -> 0x0478 }
            boolean r0 = r0.e(r1)     // Catch:{ all -> 0x0478 }
            if (r0 == 0) goto L_0x0475
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x0478 }
            com.xiaomi.mipush.sdk.u r0 = com.xiaomi.mipush.sdk.u.a(r0)     // Catch:{ all -> 0x0478 }
            int r0 = r0.c(r1)     // Catch:{ all -> 0x0478 }
            r3 = 10
            if (r0 >= r3) goto L_0x047b
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x0478 }
            com.xiaomi.mipush.sdk.u r0 = com.xiaomi.mipush.sdk.u.a(r0)     // Catch:{ all -> 0x0478 }
            r0.b(r1)     // Catch:{ all -> 0x0478 }
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x0478 }
            com.xiaomi.mipush.sdk.z r0 = com.xiaomi.mipush.sdk.z.a(r0)     // Catch:{ all -> 0x0478 }
            r3 = 1
            r0.a(r3, r1)     // Catch:{ all -> 0x0478 }
        L_0x0475:
            monitor-exit(r2)     // Catch:{ all -> 0x0478 }
            goto L_0x0026
        L_0x0478:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0478 }
            throw r0
        L_0x047b:
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x0478 }
            com.xiaomi.mipush.sdk.u r0 = com.xiaomi.mipush.sdk.u.a(r0)     // Catch:{ all -> 0x0478 }
            r0.d(r1)     // Catch:{ all -> 0x0478 }
            goto L_0x0475
        L_0x0485:
            android.content.Context r0 = r12.b
            com.xiaomi.mipush.sdk.u r0 = com.xiaomi.mipush.sdk.u.a(r0)
            r0.d(r1)
            goto L_0x0026
        L_0x0490:
            com.xiaomi.xmpush.thrift.p r2 = com.xiaomi.xmpush.thrift.p.EnablePushMessage
            java.lang.String r2 = r2.T
            java.lang.String r3 = r0.e
            boolean r2 = r2.equalsIgnoreCase(r3)
            if (r2 == 0) goto L_0x0026
            long r2 = r0.g
            int r0 = (r2 > r10 ? 1 : (r2 == r10 ? 0 : -1))
            if (r0 != 0) goto L_0x04e6
            java.lang.Class<com.xiaomi.mipush.sdk.u> r2 = com.xiaomi.mipush.sdk.u.class
            monitor-enter(r2)
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x04e3 }
            com.xiaomi.mipush.sdk.u r0 = com.xiaomi.mipush.sdk.u.a(r0)     // Catch:{ all -> 0x04e3 }
            boolean r0 = r0.e(r1)     // Catch:{ all -> 0x04e3 }
            if (r0 == 0) goto L_0x04e0
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x04e3 }
            com.xiaomi.mipush.sdk.u r0 = com.xiaomi.mipush.sdk.u.a(r0)     // Catch:{ all -> 0x04e3 }
            r0.d(r1)     // Catch:{ all -> 0x04e3 }
            java.lang.String r0 = "enable_syncing"
            android.content.Context r3 = r12.b     // Catch:{ all -> 0x04e3 }
            com.xiaomi.mipush.sdk.u r3 = com.xiaomi.mipush.sdk.u.a(r3)     // Catch:{ all -> 0x04e3 }
            java.lang.String r3 = r3.a()     // Catch:{ all -> 0x04e3 }
            boolean r0 = r0.equals(r3)     // Catch:{ all -> 0x04e3 }
            if (r0 == 0) goto L_0x04e0
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x04e3 }
            com.xiaomi.mipush.sdk.u r0 = com.xiaomi.mipush.sdk.u.a(r0)     // Catch:{ all -> 0x04e3 }
            java.lang.String r3 = "enable_synced"
            r0.f(r3)     // Catch:{ all -> 0x04e3 }
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x04e3 }
            com.xiaomi.mipush.sdk.u r0 = com.xiaomi.mipush.sdk.u.a(r0)     // Catch:{ all -> 0x04e3 }
            r0.d(r1)     // Catch:{ all -> 0x04e3 }
        L_0x04e0:
            monitor-exit(r2)     // Catch:{ all -> 0x04e3 }
            goto L_0x0026
        L_0x04e3:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x04e3 }
            throw r0
        L_0x04e6:
            java.lang.String r0 = "enable_syncing"
            android.content.Context r2 = r12.b
            com.xiaomi.mipush.sdk.u r2 = com.xiaomi.mipush.sdk.u.a(r2)
            java.lang.String r2 = r2.a()
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L_0x0538
            java.lang.Class<com.xiaomi.mipush.sdk.u> r2 = com.xiaomi.mipush.sdk.u.class
            monitor-enter(r2)
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x052b }
            com.xiaomi.mipush.sdk.u r0 = com.xiaomi.mipush.sdk.u.a(r0)     // Catch:{ all -> 0x052b }
            boolean r0 = r0.e(r1)     // Catch:{ all -> 0x052b }
            if (r0 == 0) goto L_0x0528
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x052b }
            com.xiaomi.mipush.sdk.u r0 = com.xiaomi.mipush.sdk.u.a(r0)     // Catch:{ all -> 0x052b }
            int r0 = r0.c(r1)     // Catch:{ all -> 0x052b }
            r3 = 10
            if (r0 >= r3) goto L_0x052e
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x052b }
            com.xiaomi.mipush.sdk.u r0 = com.xiaomi.mipush.sdk.u.a(r0)     // Catch:{ all -> 0x052b }
            r0.b(r1)     // Catch:{ all -> 0x052b }
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x052b }
            com.xiaomi.mipush.sdk.z r0 = com.xiaomi.mipush.sdk.z.a(r0)     // Catch:{ all -> 0x052b }
            r3 = 0
            r0.a(r3, r1)     // Catch:{ all -> 0x052b }
        L_0x0528:
            monitor-exit(r2)     // Catch:{ all -> 0x052b }
            goto L_0x0026
        L_0x052b:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x052b }
            throw r0
        L_0x052e:
            android.content.Context r0 = r12.b     // Catch:{ all -> 0x052b }
            com.xiaomi.mipush.sdk.u r0 = com.xiaomi.mipush.sdk.u.a(r0)     // Catch:{ all -> 0x052b }
            r0.d(r1)     // Catch:{ all -> 0x052b }
            goto L_0x0528
        L_0x0538:
            android.content.Context r0 = r12.b
            com.xiaomi.mipush.sdk.u r0 = com.xiaomi.mipush.sdk.u.a(r0)
            r0.d(r1)
            goto L_0x0026
        L_0x0543:
            boolean r1 = r0 instanceof com.xiaomi.xmpush.thrift.af
            if (r1 == 0) goto L_0x0026
            com.xiaomi.xmpush.thrift.af r0 = (com.xiaomi.xmpush.thrift.af) r0
            java.lang.String r1 = "registration id expired"
            java.lang.String r3 = r0.e
            boolean r1 = r1.equalsIgnoreCase(r3)
            if (r1 == 0) goto L_0x05c9
            android.content.Context r0 = r12.b
            java.util.List r0 = com.xiaomi.mipush.sdk.MiPushClient.getAllAlias(r0)
            android.content.Context r1 = r12.b
            java.util.List r1 = com.xiaomi.mipush.sdk.MiPushClient.getAllTopic(r1)
            android.content.Context r2 = r12.b
            java.util.List r2 = com.xiaomi.mipush.sdk.MiPushClient.getAllUserAccount(r2)
            android.content.Context r3 = r12.b
            java.lang.String r3 = com.xiaomi.mipush.sdk.MiPushClient.getAcceptTime(r3)
            android.content.Context r4 = r12.b
            com.xiaomi.xmpush.thrift.u r6 = com.xiaomi.xmpush.thrift.u.RegIdExpired
            com.xiaomi.mipush.sdk.MiPushClient.reInitialize(r4, r6)
            java.util.Iterator r4 = r0.iterator()
        L_0x0576:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L_0x0588
            java.lang.Object r0 = r4.next()
            java.lang.String r0 = (java.lang.String) r0
            android.content.Context r6 = r12.b
            com.xiaomi.mipush.sdk.MiPushClient.setAlias(r6, r0, r5)
            goto L_0x0576
        L_0x0588:
            java.util.Iterator r1 = r1.iterator()
        L_0x058c:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x059e
            java.lang.Object r0 = r1.next()
            java.lang.String r0 = (java.lang.String) r0
            android.content.Context r4 = r12.b
            com.xiaomi.mipush.sdk.MiPushClient.subscribe(r4, r0, r5)
            goto L_0x058c
        L_0x059e:
            java.util.Iterator r1 = r2.iterator()
        L_0x05a2:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x05b4
            java.lang.Object r0 = r1.next()
            java.lang.String r0 = (java.lang.String) r0
            android.content.Context r2 = r12.b
            com.xiaomi.mipush.sdk.MiPushClient.setUserAccount(r2, r0, r5)
            goto L_0x05a2
        L_0x05b4:
            java.lang.String r0 = ","
            java.lang.String[] r0 = r3.split(r0)
            int r1 = r0.length
            r2 = 2
            if (r1 != r2) goto L_0x0026
            android.content.Context r1 = r12.b
            r2 = r0[r8]
            r0 = r0[r9]
            com.xiaomi.mipush.sdk.MiPushClient.addAcceptTime(r1, r2, r0)
            goto L_0x0026
        L_0x05c9:
            java.lang.String r1 = "client_info_update_ok"
            java.lang.String r3 = r0.e
            boolean r1 = r1.equalsIgnoreCase(r3)
            if (r1 == 0) goto L_0x05fc
            java.util.Map r1 = r0.i()
            if (r1 == 0) goto L_0x0026
            java.util.Map r1 = r0.i()
            java.lang.String r2 = "app_version"
            boolean r1 = r1.containsKey(r2)
            if (r1 == 0) goto L_0x0026
            java.util.Map r0 = r0.i()
            java.lang.String r1 = "app_version"
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            android.content.Context r1 = r12.b
            com.xiaomi.mipush.sdk.c r1 = com.xiaomi.mipush.sdk.c.a(r1)
            r1.a(r0)
            goto L_0x0026
        L_0x05fc:
            java.lang.String r1 = "awake_app"
            java.lang.String r3 = r0.e
            boolean r1 = r1.equalsIgnoreCase(r3)
            if (r1 == 0) goto L_0x0631
            java.util.Map r1 = r0.i()
            if (r1 == 0) goto L_0x0026
            java.util.Map r1 = r0.i()
            java.lang.String r2 = "packages"
            boolean r1 = r1.containsKey(r2)
            if (r1 == 0) goto L_0x0026
            java.util.Map r0 = r0.i()
            java.lang.String r1 = "packages"
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            java.lang.String r1 = ","
            java.lang.String[] r0 = r0.split(r1)
            android.content.Context r1 = r12.b
            com.xiaomi.mipush.sdk.MiPushClient.awakeApps(r1, r0)
            goto L_0x0026
        L_0x0631:
            com.xiaomi.xmpush.thrift.p r1 = com.xiaomi.xmpush.thrift.p.NormalClientConfigUpdate
            java.lang.String r1 = r1.T
            java.lang.String r3 = r0.e
            boolean r1 = r1.equalsIgnoreCase(r3)
            if (r1 == 0) goto L_0x065a
            com.xiaomi.xmpush.thrift.ae r1 = new com.xiaomi.xmpush.thrift.ae
            r1.<init>()
            byte[] r0 = r0.m()     // Catch:{ f -> 0x0654 }
            com.xiaomi.xmpush.thrift.ar.a(r1, r0)     // Catch:{ f -> 0x0654 }
            android.content.Context r0 = r12.b     // Catch:{ f -> 0x0654 }
            com.xiaomi.push.service.aj r0 = com.xiaomi.push.service.aj.a(r0)     // Catch:{ f -> 0x0654 }
            com.xiaomi.push.service.ak.a(r0, r1)     // Catch:{ f -> 0x0654 }
            goto L_0x0026
        L_0x0654:
            r0 = move-exception
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            goto L_0x0026
        L_0x065a:
            com.xiaomi.xmpush.thrift.p r1 = com.xiaomi.xmpush.thrift.p.CustomClientConfigUpdate
            java.lang.String r1 = r1.T
            java.lang.String r3 = r0.e
            boolean r1 = r1.equalsIgnoreCase(r3)
            if (r1 == 0) goto L_0x0683
            com.xiaomi.xmpush.thrift.ad r1 = new com.xiaomi.xmpush.thrift.ad
            r1.<init>()
            byte[] r0 = r0.m()     // Catch:{ f -> 0x067d }
            com.xiaomi.xmpush.thrift.ar.a(r1, r0)     // Catch:{ f -> 0x067d }
            android.content.Context r0 = r12.b     // Catch:{ f -> 0x067d }
            com.xiaomi.push.service.aj r0 = com.xiaomi.push.service.aj.a(r0)     // Catch:{ f -> 0x067d }
            com.xiaomi.push.service.ak.a(r0, r1)     // Catch:{ f -> 0x067d }
            goto L_0x0026
        L_0x067d:
            r0 = move-exception
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            goto L_0x0026
        L_0x0683:
            com.xiaomi.xmpush.thrift.p r1 = com.xiaomi.xmpush.thrift.p.SyncInfoResult
            java.lang.String r1 = r1.T
            java.lang.String r3 = r0.e
            boolean r1 = r1.equalsIgnoreCase(r3)
            if (r1 == 0) goto L_0x0696
            android.content.Context r1 = r12.b
            com.xiaomi.mipush.sdk.ad.a(r1, r0)
            goto L_0x0026
        L_0x0696:
            com.xiaomi.xmpush.thrift.p r1 = com.xiaomi.xmpush.thrift.p.ForceSync
            java.lang.String r1 = r1.T
            java.lang.String r3 = r0.e
            boolean r1 = r1.equalsIgnoreCase(r3)
            if (r1 == 0) goto L_0x06ae
            java.lang.String r0 = "receive force sync notification"
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            android.content.Context r0 = r12.b
            com.xiaomi.mipush.sdk.ad.a(r0, r8)
            goto L_0x0026
        L_0x06ae:
            com.xiaomi.xmpush.thrift.p r1 = com.xiaomi.xmpush.thrift.p.GeoRegsiter
            java.lang.String r1 = r1.T
            java.lang.String r3 = r0.e
            boolean r1 = r1.equalsIgnoreCase(r3)
            if (r1 == 0) goto L_0x06c5
            android.content.Context r1 = r12.b
            com.xiaomi.mipush.sdk.g r1 = com.xiaomi.mipush.sdk.g.a(r1)
            r1.a(r0)
            goto L_0x0026
        L_0x06c5:
            com.xiaomi.xmpush.thrift.p r1 = com.xiaomi.xmpush.thrift.p.GeoUnregsiter
            java.lang.String r1 = r1.T
            java.lang.String r3 = r0.e
            boolean r1 = r1.equalsIgnoreCase(r3)
            if (r1 == 0) goto L_0x06dc
            android.content.Context r1 = r12.b
            com.xiaomi.mipush.sdk.g r1 = com.xiaomi.mipush.sdk.g.a(r1)
            r1.b(r0)
            goto L_0x0026
        L_0x06dc:
            com.xiaomi.xmpush.thrift.p r1 = com.xiaomi.xmpush.thrift.p.GeoSync
            java.lang.String r1 = r1.T
            java.lang.String r3 = r0.e
            boolean r1 = r1.equalsIgnoreCase(r3)
            if (r1 == 0) goto L_0x06f3
            android.content.Context r1 = r12.b
            com.xiaomi.mipush.sdk.g r1 = com.xiaomi.mipush.sdk.g.a(r1)
            r1.c(r0)
            goto L_0x0026
        L_0x06f3:
            com.xiaomi.xmpush.thrift.p r1 = com.xiaomi.xmpush.thrift.p.CancelPushMessage
            java.lang.String r1 = r1.T
            java.lang.String r3 = r0.e
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L_0x0774
            java.lang.String r1 = ""
            java.util.Map r1 = r0.i()
            if (r1 == 0) goto L_0x0026
            java.util.Map r1 = r0.i()
            java.lang.String r3 = com.xiaomi.push.service.ao.H
            boolean r1 = r1.containsKey(r3)
            if (r1 == 0) goto L_0x07c0
            java.util.Map r1 = r0.i()
            java.lang.String r3 = com.xiaomi.push.service.ao.H
            java.lang.Object r1 = r1.get(r3)
            java.lang.String r1 = (java.lang.String) r1
            boolean r3 = android.text.TextUtils.isEmpty(r1)
            if (r3 != 0) goto L_0x07c0
            int r1 = java.lang.Integer.parseInt(r1)     // Catch:{ NumberFormatException -> 0x0733 }
        L_0x0729:
            r2 = -1
            if (r1 < r2) goto L_0x0739
            android.content.Context r0 = r12.b
            com.xiaomi.mipush.sdk.MiPushClient.clearNotification(r0, r1)
            goto L_0x0026
        L_0x0733:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            r1 = r2
            goto L_0x0729
        L_0x0739:
            java.lang.String r1 = ""
            java.lang.String r2 = ""
            java.util.Map r3 = r0.i()
            java.lang.String r4 = com.xiaomi.push.service.ao.F
            boolean r3 = r3.containsKey(r4)
            if (r3 == 0) goto L_0x0755
            java.util.Map r1 = r0.i()
            java.lang.String r3 = com.xiaomi.push.service.ao.F
            java.lang.Object r1 = r1.get(r3)
            java.lang.String r1 = (java.lang.String) r1
        L_0x0755:
            java.util.Map r3 = r0.i()
            java.lang.String r4 = com.xiaomi.push.service.ao.G
            boolean r3 = r3.containsKey(r4)
            if (r3 == 0) goto L_0x07be
            java.util.Map r0 = r0.i()
            java.lang.String r2 = com.xiaomi.push.service.ao.G
            java.lang.Object r0 = r0.get(r2)
            java.lang.String r0 = (java.lang.String) r0
        L_0x076d:
            android.content.Context r2 = r12.b
            com.xiaomi.mipush.sdk.MiPushClient.clearNotification(r2, r1, r0)
            goto L_0x0026
        L_0x0774:
            com.xiaomi.xmpush.thrift.p r1 = com.xiaomi.xmpush.thrift.p.HybridRegisterResult
            java.lang.String r1 = r1.T
            java.lang.String r2 = r0.e
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0799
            com.xiaomi.xmpush.thrift.ah r1 = new com.xiaomi.xmpush.thrift.ah     // Catch:{ f -> 0x0793 }
            r1.<init>()     // Catch:{ f -> 0x0793 }
            byte[] r0 = r0.m()     // Catch:{ f -> 0x0793 }
            com.xiaomi.xmpush.thrift.ar.a(r1, r0)     // Catch:{ f -> 0x0793 }
            android.content.Context r0 = r12.b     // Catch:{ f -> 0x0793 }
            com.xiaomi.mipush.sdk.p.a(r0, r1)     // Catch:{ f -> 0x0793 }
            goto L_0x0026
        L_0x0793:
            r0 = move-exception
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            goto L_0x0026
        L_0x0799:
            com.xiaomi.xmpush.thrift.p r1 = com.xiaomi.xmpush.thrift.p.HybridUnregisterResult
            java.lang.String r1 = r1.T
            java.lang.String r2 = r0.e
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0026
            com.xiaomi.xmpush.thrift.ao r1 = new com.xiaomi.xmpush.thrift.ao     // Catch:{ f -> 0x07b8 }
            r1.<init>()     // Catch:{ f -> 0x07b8 }
            byte[] r0 = r0.m()     // Catch:{ f -> 0x07b8 }
            com.xiaomi.xmpush.thrift.ar.a(r1, r0)     // Catch:{ f -> 0x07b8 }
            android.content.Context r0 = r12.b     // Catch:{ f -> 0x07b8 }
            com.xiaomi.mipush.sdk.p.a(r0, r1)     // Catch:{ f -> 0x07b8 }
            goto L_0x0026
        L_0x07b8:
            r0 = move-exception
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            goto L_0x0026
        L_0x07be:
            r0 = r2
            goto L_0x076d
        L_0x07c0:
            r1 = r2
            goto L_0x0729
        L_0x07c3:
            r1 = r5
            goto L_0x02c8
        L_0x07c6:
            r1 = r5
            goto L_0x0290
        L_0x07c9:
            r5 = r1
            goto L_0x0171
        L_0x07cc:
            r2 = r1
            goto L_0x0151
        L_0x07cf:
            r1 = r5
            goto L_0x0146
        L_0x07d2:
            r1 = r5
            goto L_0x00b1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.x.a(com.xiaomi.xmpush.thrift.ac, boolean, byte[]):com.xiaomi.mipush.sdk.PushMessageHandler$a");
    }

    private a a(ac acVar, byte[] bArr) {
        String str = null;
        try {
            a a2 = v.a(this.b, acVar);
            if (a2 == null) {
                b.d("message arrived: receiving an un-recognized message. " + acVar.a);
                return null;
            }
            b.c("message arrived: receive a message." + a2);
            com.xiaomi.xmpush.thrift.a a3 = acVar.a();
            b.a("message arrived: processing an arrived message, action=" + a3);
            switch (y.a[a3.ordinal()]) {
                case 1:
                    ak akVar = (ak) a2;
                    r l = akVar.l();
                    if (l == null) {
                        b.d("message arrived: receive an empty message without push content, drop it");
                        return null;
                    }
                    if (!(acVar.h == null || acVar.h.s() == null)) {
                        str = (String) acVar.h.j.get("jobkey");
                    }
                    MiPushMessage generateMessage = PushMessageHelper.generateMessage(akVar, acVar.m(), false);
                    generateMessage.setArrivedMessage(true);
                    b.a("message arrived: receive a message, msgid=" + l.b() + ", jobkey=" + str);
                    return generateMessage;
                default:
                    return null;
            }
        } catch (d e) {
            b.a((Throwable) e);
            b.d("message arrived: receive a message but decrypt failed. report when click.");
            return null;
        } catch (f e2) {
            b.a((Throwable) e2);
            b.d("message arrived: receive a message which action string is not valid. is the reg expired?");
            return null;
        }
    }

    public static x a(Context context) {
        if (a == null) {
            a = new x(context);
        }
        return a;
    }

    private void a() {
        SharedPreferences sharedPreferences = this.b.getSharedPreferences(MiPushClient.PREF_EXTRA, 0);
        long currentTimeMillis = System.currentTimeMillis();
        if (Math.abs(currentTimeMillis - sharedPreferences.getLong(Constants.SP_KEY_LAST_REINITIALIZE, 0)) > 1800000) {
            MiPushClient.reInitialize(this.b, u.PackageUnregistered);
            sharedPreferences.edit().putLong(Constants.SP_KEY_LAST_REINITIALIZE, currentTimeMillis).commit();
        }
    }

    private void a(ac acVar) {
        b.a("receive a message but decrypt failed. report now.");
        af afVar = new af(acVar.m().a, false);
        afVar.c(p.DecryptMessageFail.T);
        afVar.b(acVar.h());
        afVar.d(acVar.f);
        afVar.h = new HashMap();
        afVar.h.put("regid", MiPushClient.getRegId(this.b));
        z.a(this.b).a(afVar, com.xiaomi.xmpush.thrift.a.Notification, false, null);
    }

    private void a(ak akVar, ac acVar) {
        s m = acVar.m();
        com.xiaomi.xmpush.thrift.x xVar = new com.xiaomi.xmpush.thrift.x();
        xVar.b(akVar.e());
        xVar.a(akVar.c());
        xVar.a(akVar.l().h());
        if (!TextUtils.isEmpty(akVar.h())) {
            xVar.c(akVar.h());
        }
        if (!TextUtils.isEmpty(akVar.j())) {
            xVar.d(akVar.j());
        }
        xVar.a(ar.a(this.b, acVar));
        z.a(this.b).a(xVar, com.xiaomi.xmpush.thrift.a.AckMessage, m);
    }

    private static boolean a(Context context, String str) {
        boolean z = false;
        synchronized (d) {
            c.a(context);
            SharedPreferences b2 = c.b(context);
            if (c == null) {
                String[] split = b2.getString("pref_msg_ids", "").split(Constants.ACCEPT_TIME_SEPARATOR_SP);
                c = new LinkedList();
                for (String add : split) {
                    c.add(add);
                }
            }
            if (c.contains(str)) {
                z = true;
            } else {
                c.add(str);
                if (c.size() > 25) {
                    c.poll();
                }
                String a2 = d.a((Collection<?>) c, Constants.ACCEPT_TIME_SEPARATOR_SP);
                Editor edit = b2.edit();
                edit.putString("pref_msg_ids", a2);
                edit.commit();
            }
        }
        return z;
    }

    private void b(ac acVar) {
        s m = acVar.m();
        com.xiaomi.xmpush.thrift.x xVar = new com.xiaomi.xmpush.thrift.x();
        xVar.b(acVar.h());
        xVar.a(m.b());
        xVar.a(m.d());
        if (!TextUtils.isEmpty(m.f())) {
            xVar.c(m.f());
        }
        xVar.a(ar.a(this.b, acVar));
        z.a(this.b).a(xVar, com.xiaomi.xmpush.thrift.a.AckMessage, false, acVar.m());
    }

    public a a(Intent intent) {
        String action = intent.getAction();
        b.a("receive an intent from server, action=" + action);
        String stringExtra = intent.getStringExtra("mrt");
        if (stringExtra == null) {
            stringExtra = Long.toString(System.currentTimeMillis());
        }
        if ("com.xiaomi.mipush.RECEIVE_MESSAGE".equals(action)) {
            byte[] byteArrayExtra = intent.getByteArrayExtra("mipush_payload");
            boolean booleanExtra = intent.getBooleanExtra("mipush_notified", false);
            if (byteArrayExtra == null) {
                b.d("receiving an empty message, drop");
                return null;
            }
            ac acVar = new ac();
            try {
                ar.a(acVar, byteArrayExtra);
                c a2 = c.a(this.b);
                s m = acVar.m();
                if (acVar.a() == com.xiaomi.xmpush.thrift.a.SendMessage && m != null && !a2.k() && !booleanExtra) {
                    if (m != null) {
                        acVar.m().a("mrt", stringExtra);
                        acVar.m().a("mat", Long.toString(System.currentTimeMillis()));
                    }
                    b(acVar);
                }
                if (acVar.a() == com.xiaomi.xmpush.thrift.a.SendMessage && !acVar.c()) {
                    if (!ae.b(acVar)) {
                        String str = "drop an un-encrypted messages. %1$s, %2$s";
                        Object[] objArr = new Object[2];
                        objArr[0] = acVar.j();
                        objArr[1] = m != null ? m.b() : "";
                        b.a(String.format(str, objArr));
                        return null;
                    } else if (!booleanExtra || m.s() == null || !m.s().containsKey("notify_effect")) {
                        b.a(String.format("drop an un-encrypted messages. %1$s, %2$s", new Object[]{acVar.j(), m.b()}));
                        return null;
                    }
                }
                if (a2.i() || acVar.a == com.xiaomi.xmpush.thrift.a.Registration) {
                    if (!a2.i() || !a2.m()) {
                        return a(acVar, booleanExtra, byteArrayExtra);
                    }
                    if (acVar.a == com.xiaomi.xmpush.thrift.a.UnRegistration) {
                        a2.h();
                        MiPushClient.clearExtras(this.b);
                        PushMessageHandler.a();
                    } else {
                        MiPushClient.unregisterPush(this.b);
                    }
                } else if (ae.b(acVar)) {
                    return a(acVar, booleanExtra, byteArrayExtra);
                } else {
                    b.d("receive message without registration. need re-register!");
                    a();
                }
            } catch (f e) {
                b.a((Throwable) e);
            } catch (Exception e2) {
                b.a((Throwable) e2);
            }
        } else if ("com.xiaomi.mipush.ERROR".equals(action)) {
            MiPushCommandMessage miPushCommandMessage = new MiPushCommandMessage();
            ac acVar2 = new ac();
            try {
                byte[] byteArrayExtra2 = intent.getByteArrayExtra("mipush_payload");
                if (byteArrayExtra2 != null) {
                    ar.a(acVar2, byteArrayExtra2);
                }
            } catch (f e3) {
            }
            miPushCommandMessage.setCommand(String.valueOf(acVar2.a()));
            miPushCommandMessage.setResultCode((long) intent.getIntExtra("mipush_error_code", 0));
            miPushCommandMessage.setReason(intent.getStringExtra("mipush_error_msg"));
            b.d("receive a error message. code = " + intent.getIntExtra("mipush_error_code", 0) + ", msg= " + intent.getStringExtra("mipush_error_msg"));
            return miPushCommandMessage;
        } else if ("com.xiaomi.mipush.MESSAGE_ARRIVED".equals(action)) {
            byte[] byteArrayExtra3 = intent.getByteArrayExtra("mipush_payload");
            if (byteArrayExtra3 == null) {
                b.d("message arrived: receiving an empty message, drop");
                return null;
            }
            ac acVar3 = new ac();
            try {
                ar.a(acVar3, byteArrayExtra3);
                c a3 = c.a(this.b);
                if (ae.b(acVar3)) {
                    b.d("message arrived: receive ignore reg message, ignore!");
                } else if (!a3.i()) {
                    b.d("message arrived: receive message without registration. need unregister or re-register!");
                } else if (!a3.i() || !a3.m()) {
                    return a(acVar3, byteArrayExtra3);
                } else {
                    b.d("message arrived: app info is invalidated");
                }
            } catch (f e4) {
                b.a((Throwable) e4);
            } catch (Exception e5) {
                b.a((Throwable) e5);
            }
        }
        return null;
    }

    public List<String> a(TimeZone timeZone, TimeZone timeZone2, List<String> list) {
        if (timeZone.equals(timeZone2)) {
            return list;
        }
        long rawOffset = (long) (((timeZone.getRawOffset() - timeZone2.getRawOffset()) / 1000) / 60);
        long parseLong = Long.parseLong(((String) list.get(0)).split(":")[0]);
        long parseLong2 = Long.parseLong(((String) list.get(0)).split(":")[1]);
        long j = ((((parseLong * 60) + parseLong2) - rawOffset) + 1440) % 1440;
        long parseLong3 = (((Long.parseLong(((String) list.get(1)).split(":")[1]) + (60 * Long.parseLong(((String) list.get(1)).split(":")[0]))) - rawOffset) + 1440) % 1440;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add(String.format("%1$02d:%2$02d", new Object[]{Long.valueOf(j / 60), Long.valueOf(j % 60)}));
        ArrayList arrayList3 = arrayList;
        arrayList3.add(String.format("%1$02d:%2$02d", new Object[]{Long.valueOf(parseLong3 / 60), Long.valueOf(parseLong3 % 60)}));
        return arrayList;
    }
}
