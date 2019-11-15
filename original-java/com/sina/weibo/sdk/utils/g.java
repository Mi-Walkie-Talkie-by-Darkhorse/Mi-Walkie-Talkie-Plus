package com.sina.weibo.sdk.utils;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.support.v4.app.NotificationCompat.Builder;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: SDKNotification */
public class g {
    private Context a;
    private Notification b;

    /* compiled from: SDKNotification */
    public static class a {
        private String a;
        private String b;
        private String c;
        private PendingIntent d;
        private long[] e;
        private Uri f;

        public static a a() {
            return new a();
        }

        public a a(String str) {
            this.a = str;
            return this;
        }

        public a b(String str) {
            this.b = str;
            return this;
        }

        public a c(String str) {
            this.c = str;
            return this;
        }

        public a a(PendingIntent pendingIntent) {
            this.d = pendingIntent;
            return this;
        }

        public g a(Context context) {
            Builder builder = new Builder(context);
            builder.setAutoCancel(true);
            builder.setContentIntent(this.d);
            builder.setTicker(this.a);
            builder.setSmallIcon(b(context));
            builder.setWhen(System.currentTimeMillis());
            if (this.f != null) {
                builder.setSound(this.f);
            }
            if (this.e != null) {
                builder.setVibrate(this.e);
            }
            builder.setLargeIcon(((BitmapDrawable) f.a(context, "weibosdk_notification_icon.png")).getBitmap());
            builder.setContentTitle(this.b);
            builder.setContentText(this.c);
            return new g(context, builder.build(), null);
        }

        private static int b(Context context) {
            int a2 = a(context, "com_sina_weibo_sdk_weibo_logo", "drawable");
            if (a2 > 0) {
                return a2;
            }
            return 17301659;
        }

        private static int a(Context context, String str, String str2) {
            String packageName = context.getApplicationContext().getPackageName();
            try {
                return context.getPackageManager().getResourcesForApplication(packageName).getIdentifier(str, str2, packageName);
            } catch (NameNotFoundException e2) {
                ThrowableExtension.printStackTrace(e2);
                return 0;
            }
        }
    }

    private g(Context context, Notification notification) {
        this.a = context.getApplicationContext();
        this.b = notification;
    }

    /* synthetic */ g(Context context, Notification notification, g gVar) {
        this(context, notification);
    }

    public void a(int i) {
        if (this.b != null) {
            ((NotificationManager) this.a.getSystemService("notification")).notify(i, this.b);
        }
    }
}
