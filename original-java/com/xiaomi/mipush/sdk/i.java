package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PermissionInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashSet;

public class i {

    public static class a extends RuntimeException {
        public a(String str) {
            super(str);
        }
    }

    public static class b {
        public String a;
        public boolean b;
        public boolean c;
        public String d;

        public b(String str, boolean z, boolean z2, String str2) {
            this.a = str;
            this.b = z;
            this.c = z2;
            this.d = str2;
        }
    }

    private static ActivityInfo a(PackageManager packageManager, Intent intent, Class<?> cls) {
        for (ResolveInfo resolveInfo : packageManager.queryBroadcastReceivers(intent, 16384)) {
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (activityInfo != null && cls.getCanonicalName().equals(activityInfo.name)) {
                return activityInfo;
            }
        }
        return null;
    }

    public static void a(Context context) {
        new Thread(new j(context)).start();
    }

    private static void a(ActivityInfo activityInfo, Boolean[] boolArr) {
        if (boolArr[0].booleanValue() != activityInfo.enabled) {
            throw new a(String.format("<receiver android:name=\"%1$s\" .../> in AndroidManifest had the wrong enabled attribute, which should be android:enabled=%2$b.", new Object[]{activityInfo.name, boolArr[0]}));
        } else if (boolArr[1].booleanValue() != activityInfo.exported) {
            throw new a(String.format("<receiver android:name=\"%1$s\" .../> in AndroidManifest had the wrong exported attribute, which should be android:exported=%2$b.", new Object[]{activityInfo.name, boolArr[1]}));
        }
    }

    private static boolean a(PackageInfo packageInfo, String[] strArr) {
        for (ServiceInfo serviceInfo : packageInfo.services) {
            if (a(strArr, serviceInfo.name)) {
                return true;
            }
        }
        return false;
    }

    private static boolean a(String[] strArr, String str) {
        if (strArr == null || str == null) {
            return false;
        }
        for (String equals : strArr) {
            if (TextUtils.equals(equals, str)) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0080 A[EDGE_INSN: B:38:0x0080->B:23:0x0080 ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00c1 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void c(android.content.Context r9) {
        /*
            r3 = 1
            r2 = 0
            android.content.pm.PackageManager r1 = r9.getPackageManager()
            java.lang.String r4 = r9.getPackageName()
            android.content.Intent r0 = new android.content.Intent
            java.lang.String r5 = com.xiaomi.push.service.ao.o
            r0.<init>(r5)
            r0.setPackage(r4)
            java.lang.String r5 = "com.xiaomi.push.service.receivers.PingReceiver"
            java.lang.Class r5 = java.lang.Class.forName(r5)     // Catch:{ ClassNotFoundException -> 0x003a }
            android.content.pm.ActivityInfo r0 = a(r1, r0, r5)     // Catch:{ ClassNotFoundException -> 0x003a }
            boolean r5 = com.xiaomi.mipush.sdk.MiPushClient.shouldUseMIUIPush(r9)     // Catch:{ ClassNotFoundException -> 0x003a }
            if (r5 != 0) goto L_0x00a1
            if (r0 != 0) goto L_0x008a
            com.xiaomi.mipush.sdk.i$a r0 = new com.xiaomi.mipush.sdk.i$a     // Catch:{ ClassNotFoundException -> 0x003a }
            java.lang.String r5 = "<receiver android:name=\"%1$s\" .../> is missing or disabled in AndroidManifest."
            r6 = 1
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch:{ ClassNotFoundException -> 0x003a }
            r7 = 0
            java.lang.String r8 = "com.xiaomi.push.service.receivers.PingReceiver"
            r6[r7] = r8     // Catch:{ ClassNotFoundException -> 0x003a }
            java.lang.String r5 = java.lang.String.format(r5, r6)     // Catch:{ ClassNotFoundException -> 0x003a }
            r0.<init>(r5)     // Catch:{ ClassNotFoundException -> 0x003a }
            throw r0     // Catch:{ ClassNotFoundException -> 0x003a }
        L_0x003a:
            r0 = move-exception
            com.xiaomi.channel.commonutils.logger.b.a(r0)
        L_0x003e:
            android.content.Intent r0 = new android.content.Intent
            java.lang.String r5 = "com.xiaomi.mipush.RECEIVE_MESSAGE"
            r0.<init>(r5)
            r0.setPackage(r4)
            r4 = 16384(0x4000, float:2.2959E-41)
            java.util.List r0 = r1.queryBroadcastReceivers(r0, r4)
            java.util.Iterator r4 = r0.iterator()
            r1 = r2
        L_0x0053:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L_0x00c4
            java.lang.Object r0 = r4.next()
            android.content.pm.ResolveInfo r0 = (android.content.pm.ResolveInfo) r0
            android.content.pm.ActivityInfo r0 = r0.activityInfo
            if (r0 == 0) goto L_0x00ba
            java.lang.String r5 = r0.name     // Catch:{ ClassNotFoundException -> 0x00bc }
            boolean r5 = android.text.TextUtils.isEmpty(r5)     // Catch:{ ClassNotFoundException -> 0x00bc }
            if (r5 != 0) goto L_0x00ba
            java.lang.Class<com.xiaomi.mipush.sdk.PushMessageReceiver> r5 = com.xiaomi.mipush.sdk.PushMessageReceiver.class
            java.lang.String r6 = r0.name     // Catch:{ ClassNotFoundException -> 0x00bc }
            java.lang.Class r6 = java.lang.Class.forName(r6)     // Catch:{ ClassNotFoundException -> 0x00bc }
            boolean r5 = r5.isAssignableFrom(r6)     // Catch:{ ClassNotFoundException -> 0x00bc }
            if (r5 == 0) goto L_0x00ba
            boolean r0 = r0.enabled     // Catch:{ ClassNotFoundException -> 0x00bc }
            if (r0 == 0) goto L_0x00ba
            r0 = r3
        L_0x007e:
            if (r0 == 0) goto L_0x00c1
        L_0x0080:
            if (r0 != 0) goto L_0x00c3
            com.xiaomi.mipush.sdk.i$a r0 = new com.xiaomi.mipush.sdk.i$a
            java.lang.String r1 = "Receiver: none of the subclasses of PushMessageReceiver is enabled or defined."
            r0.<init>(r1)
            throw r0
        L_0x008a:
            r5 = 2
            java.lang.Boolean[] r5 = new java.lang.Boolean[r5]     // Catch:{ ClassNotFoundException -> 0x003a }
            r6 = 0
            r7 = 1
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch:{ ClassNotFoundException -> 0x003a }
            r5[r6] = r7     // Catch:{ ClassNotFoundException -> 0x003a }
            r6 = 1
            r7 = 0
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch:{ ClassNotFoundException -> 0x003a }
            r5[r6] = r7     // Catch:{ ClassNotFoundException -> 0x003a }
            a(r0, r5)     // Catch:{ ClassNotFoundException -> 0x003a }
            goto L_0x003e
        L_0x00a1:
            if (r0 == 0) goto L_0x003e
            r5 = 2
            java.lang.Boolean[] r5 = new java.lang.Boolean[r5]     // Catch:{ ClassNotFoundException -> 0x003a }
            r6 = 0
            r7 = 1
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch:{ ClassNotFoundException -> 0x003a }
            r5[r6] = r7     // Catch:{ ClassNotFoundException -> 0x003a }
            r6 = 1
            r7 = 0
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch:{ ClassNotFoundException -> 0x003a }
            r5[r6] = r7     // Catch:{ ClassNotFoundException -> 0x003a }
            a(r0, r5)     // Catch:{ ClassNotFoundException -> 0x003a }
            goto L_0x003e
        L_0x00ba:
            r0 = r2
            goto L_0x007e
        L_0x00bc:
            r0 = move-exception
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            r0 = r1
        L_0x00c1:
            r1 = r0
            goto L_0x0053
        L_0x00c3:
            return
        L_0x00c4:
            r0 = r1
            goto L_0x0080
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.i.c(android.content.Context):void");
    }

    /* access modifiers changed from: private */
    public static void c(Context context, PackageInfo packageInfo) {
        boolean z;
        String[] strArr;
        HashSet hashSet = new HashSet();
        String str = context.getPackageName() + ".permission.MIPUSH_RECEIVE";
        hashSet.addAll(Arrays.asList(new String[]{"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", str, "android.permission.ACCESS_WIFI_STATE", "android.permission.READ_PHONE_STATE", "android.permission.GET_TASKS", "android.permission.VIBRATE"}));
        if (packageInfo.permissions != null) {
            PermissionInfo[] permissionInfoArr = packageInfo.permissions;
            int length = permissionInfoArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                } else if (str.equals(permissionInfoArr[i].name)) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        z = false;
        if (!z) {
            throw new a(String.format("<permission android:name=\"%1$s\" .../> is undefined in AndroidManifest.", new Object[]{str}));
        }
        if (packageInfo.requestedPermissions != null) {
            for (String str2 : packageInfo.requestedPermissions) {
                if (!TextUtils.isEmpty(str2) && hashSet.contains(str2)) {
                    hashSet.remove(str2);
                    if (hashSet.isEmpty()) {
                        break;
                    }
                }
            }
        }
        if (!hashSet.isEmpty()) {
            throw new a(String.format("<uses-permission android:name=\"%1$s\"/> is missing in AndroidManifest.", new Object[]{hashSet.iterator().next()}));
        }
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:3:0x004d, code lost:
        if (a(r14, new java.lang.String[]{"com.xiaomi.push.service.XMJobService", "com.xiaomi.push.service.XMPushService"}) != false) goto L_0x004f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void d(android.content.Context r13, android.content.pm.PackageInfo r14) {
        /*
            r12 = 2
            r2 = 0
            r11 = 1
            java.util.HashMap r3 = new java.util.HashMap
            r3.<init>()
            java.util.HashMap r4 = new java.util.HashMap
            r4.<init>()
            java.lang.Class<com.xiaomi.mipush.sdk.PushMessageHandler> r0 = com.xiaomi.mipush.sdk.PushMessageHandler.class
            java.lang.String r0 = r0.getCanonicalName()
            com.xiaomi.mipush.sdk.i$b r1 = new com.xiaomi.mipush.sdk.i$b
            java.lang.Class<com.xiaomi.mipush.sdk.PushMessageHandler> r5 = com.xiaomi.mipush.sdk.PushMessageHandler.class
            java.lang.String r5 = r5.getCanonicalName()
            java.lang.String r6 = ""
            r1.<init>(r5, r11, r11, r6)
            r4.put(r0, r1)
            java.lang.Class<com.xiaomi.mipush.sdk.MessageHandleService> r0 = com.xiaomi.mipush.sdk.MessageHandleService.class
            java.lang.String r0 = r0.getCanonicalName()
            com.xiaomi.mipush.sdk.i$b r1 = new com.xiaomi.mipush.sdk.i$b
            java.lang.Class<com.xiaomi.mipush.sdk.MessageHandleService> r5 = com.xiaomi.mipush.sdk.MessageHandleService.class
            java.lang.String r5 = r5.getCanonicalName()
            java.lang.String r6 = ""
            r1.<init>(r5, r11, r2, r6)
            r4.put(r0, r1)
            boolean r0 = com.xiaomi.mipush.sdk.MiPushClient.shouldUseMIUIPush(r13)
            if (r0 == 0) goto L_0x004f
            java.lang.String[] r0 = new java.lang.String[r12]
            java.lang.String r1 = "com.xiaomi.push.service.XMJobService"
            r0[r2] = r1
            java.lang.String r1 = "com.xiaomi.push.service.XMPushService"
            r0[r11] = r1
            boolean r0 = a(r14, r0)
            if (r0 == 0) goto L_0x006b
        L_0x004f:
            java.lang.String r0 = "com.xiaomi.push.service.XMJobService"
            com.xiaomi.mipush.sdk.i$b r1 = new com.xiaomi.mipush.sdk.i$b
            java.lang.String r5 = "com.xiaomi.push.service.XMJobService"
            java.lang.String r6 = "android.permission.BIND_JOB_SERVICE"
            r1.<init>(r5, r11, r2, r6)
            r4.put(r0, r1)
            java.lang.String r0 = "com.xiaomi.push.service.XMPushService"
            com.xiaomi.mipush.sdk.i$b r1 = new com.xiaomi.mipush.sdk.i$b
            java.lang.String r5 = "com.xiaomi.push.service.XMPushService"
            java.lang.String r6 = ""
            r1.<init>(r5, r11, r2, r6)
            r4.put(r0, r1)
        L_0x006b:
            android.content.pm.ServiceInfo[] r0 = r14.services
            if (r0 == 0) goto L_0x00fc
            android.content.pm.ServiceInfo[] r5 = r14.services
            int r6 = r5.length
            r1 = r2
        L_0x0073:
            if (r1 >= r6) goto L_0x00fc
            r7 = r5[r1]
            java.lang.String r0 = r7.name
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x011e
            java.lang.String r0 = r7.name
            boolean r0 = r4.containsKey(r0)
            if (r0 == 0) goto L_0x011e
            java.lang.String r0 = r7.name
            java.lang.Object r0 = r4.remove(r0)
            com.xiaomi.mipush.sdk.i$b r0 = (com.xiaomi.mipush.sdk.i.b) r0
            boolean r8 = r0.b
            boolean r9 = r0.c
            java.lang.String r0 = r0.d
            boolean r10 = r7.enabled
            if (r8 == r10) goto L_0x00b1
            com.xiaomi.mipush.sdk.i$a r0 = new com.xiaomi.mipush.sdk.i$a
            java.lang.String r1 = "<service android:name=\"%1$s\" .../> in AndroidManifest had the wrong enabled attribute, which should be android:enabled=%2$b."
            java.lang.Object[] r3 = new java.lang.Object[r12]
            java.lang.String r4 = r7.name
            r3[r2] = r4
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r8)
            r3[r11] = r2
            java.lang.String r1 = java.lang.String.format(r1, r3)
            r0.<init>(r1)
            throw r0
        L_0x00b1:
            boolean r8 = r7.exported
            if (r9 == r8) goto L_0x00cd
            com.xiaomi.mipush.sdk.i$a r0 = new com.xiaomi.mipush.sdk.i$a
            java.lang.String r1 = "<service android:name=\"%1$s\" .../> in AndroidManifest had the wrong exported attribute, which should be android:exported=%2$b."
            java.lang.Object[] r3 = new java.lang.Object[r12]
            java.lang.String r4 = r7.name
            r3[r2] = r4
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r9)
            r3[r11] = r2
            java.lang.String r1 = java.lang.String.format(r1, r3)
            r0.<init>(r1)
            throw r0
        L_0x00cd:
            boolean r8 = android.text.TextUtils.isEmpty(r0)
            if (r8 != 0) goto L_0x00ef
            java.lang.String r8 = r7.permission
            boolean r8 = android.text.TextUtils.equals(r0, r8)
            if (r8 != 0) goto L_0x00ef
            com.xiaomi.mipush.sdk.i$a r1 = new com.xiaomi.mipush.sdk.i$a
            java.lang.String r3 = "<service android:name=\"%1$s\" .../> in AndroidManifest had the wrong permission attribute, which should be android:permission=\"%2$s\"."
            java.lang.Object[] r4 = new java.lang.Object[r12]
            java.lang.String r5 = r7.name
            r4[r2] = r5
            r4[r11] = r0
            java.lang.String r0 = java.lang.String.format(r3, r4)
            r1.<init>(r0)
            throw r1
        L_0x00ef:
            java.lang.String r0 = r7.name
            java.lang.String r7 = r7.processName
            r3.put(r0, r7)
            boolean r0 = r4.isEmpty()
            if (r0 == 0) goto L_0x011e
        L_0x00fc:
            boolean r0 = r4.isEmpty()
            if (r0 != 0) goto L_0x0123
            com.xiaomi.mipush.sdk.i$a r0 = new com.xiaomi.mipush.sdk.i$a
            java.lang.String r1 = "<service android:name=\"%1$s\" .../> is missing or disabled in AndroidManifest."
            java.lang.Object[] r3 = new java.lang.Object[r11]
            java.util.Set r4 = r4.keySet()
            java.util.Iterator r4 = r4.iterator()
            java.lang.Object r4 = r4.next()
            r3[r2] = r4
            java.lang.String r1 = java.lang.String.format(r1, r3)
            r0.<init>(r1)
            throw r0
        L_0x011e:
            int r0 = r1 + 1
            r1 = r0
            goto L_0x0073
        L_0x0123:
            java.lang.Class<com.xiaomi.mipush.sdk.PushMessageHandler> r0 = com.xiaomi.mipush.sdk.PushMessageHandler.class
            java.lang.String r0 = r0.getCanonicalName()
            java.lang.Object r0 = r3.get(r0)
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            java.lang.Class<com.xiaomi.mipush.sdk.MessageHandleService> r1 = com.xiaomi.mipush.sdk.MessageHandleService.class
            java.lang.String r1 = r1.getCanonicalName()
            java.lang.Object r1 = r3.get(r1)
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 != 0) goto L_0x015f
            com.xiaomi.mipush.sdk.i$a r0 = new com.xiaomi.mipush.sdk.i$a
            java.lang.String r1 = "\"%1$s\" and \"%2$s\" must be running in the same process."
            java.lang.Object[] r3 = new java.lang.Object[r12]
            java.lang.Class<com.xiaomi.mipush.sdk.PushMessageHandler> r4 = com.xiaomi.mipush.sdk.PushMessageHandler.class
            java.lang.String r4 = r4.getCanonicalName()
            r3[r2] = r4
            java.lang.Class<com.xiaomi.mipush.sdk.MessageHandleService> r2 = com.xiaomi.mipush.sdk.MessageHandleService.class
            java.lang.String r2 = r2.getCanonicalName()
            r3[r11] = r2
            java.lang.String r1 = java.lang.String.format(r1, r3)
            r0.<init>(r1)
            throw r0
        L_0x015f:
            java.lang.String r0 = "com.xiaomi.push.service.XMJobService"
            boolean r0 = r3.containsKey(r0)
            if (r0 == 0) goto L_0x019b
            java.lang.String r0 = "com.xiaomi.push.service.XMPushService"
            boolean r0 = r3.containsKey(r0)
            if (r0 == 0) goto L_0x019b
            java.lang.String r0 = "com.xiaomi.push.service.XMJobService"
            java.lang.Object r0 = r3.get(r0)
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            java.lang.String r1 = "com.xiaomi.push.service.XMPushService"
            java.lang.Object r1 = r3.get(r1)
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 != 0) goto L_0x019b
            com.xiaomi.mipush.sdk.i$a r0 = new com.xiaomi.mipush.sdk.i$a
            java.lang.String r1 = "\"%1$s\" and \"%2$s\" must be running in the same process."
            java.lang.Object[] r3 = new java.lang.Object[r12]
            java.lang.String r4 = "com.xiaomi.push.service.XMJobService"
            r3[r2] = r4
            java.lang.String r2 = "com.xiaomi.push.service.XMPushService"
            r3[r11] = r2
            java.lang.String r1 = java.lang.String.format(r1, r3)
            r0.<init>(r1)
            throw r0
        L_0x019b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.i.d(android.content.Context, android.content.pm.PackageInfo):void");
    }
}
