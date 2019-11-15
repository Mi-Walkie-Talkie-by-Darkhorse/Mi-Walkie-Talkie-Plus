package com.amap.api.location;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.webkit.WebView;
import com.amap.api.col.sl.bz;
import com.amap.api.col.sl.ca;
import com.amap.api.col.sl.cy;
import com.amap.api.col.sl.d;
import com.amap.api.col.sl.fq;
import com.amap.api.col.sl.fw;

public class AMapLocationClient {
    Context a;
    LocationManagerBase b;

    public AMapLocationClient(Context context) {
        if (context == null) {
            try {
                throw new IllegalArgumentException("Context参数不能为null");
            } catch (Throwable th) {
                fq.a(th, "AMapLocationClient", "AMapLocationClient 1");
            }
        } else {
            this.a = context.getApplicationContext();
            this.b = a(this.a, null);
        }
    }

    public AMapLocationClient(Context context, Intent intent) {
        if (context == null) {
            try {
                throw new IllegalArgumentException("Context参数不能为null");
            } catch (Throwable th) {
                fq.a(th, "AMapLocationClient", "AMapLocationClient 2");
            }
        } else {
            this.a = context.getApplicationContext();
            this.b = a(this.a, intent);
        }
    }

    private static LocationManagerBase a(Context context, Intent intent) {
        LocationManagerBase dVar;
        try {
            bz b2 = fq.b();
            fw.a(context, b2);
            boolean c = fw.c(context);
            fw.a(context);
            if (c) {
                Context context2 = context;
                dVar = (LocationManagerBase) cy.a(context2, b2, ca.c("IY29tLmFtYXAuYXBpLmxvY2F0aW9uLkxvY2F0aW9uTWFuYWdlcldyYXBwZXI="), d.class, new Class[]{Context.class, Intent.class}, new Object[]{context, intent});
            } else {
                dVar = new d(context, intent);
            }
        } catch (Throwable th) {
            dVar = new d(context, intent);
        }
        if (dVar == null) {
            return new d(context, intent);
        }
        return dVar;
    }

    public void setLocationOption(AMapLocationClientOption aMapLocationClientOption) {
        if (aMapLocationClientOption == null) {
            try {
                throw new IllegalArgumentException("LocationManagerOption参数不能为null");
            } catch (Throwable th) {
                fq.a(th, "AMapLocationClient", "setLocationOption");
            }
        } else if (this.b != null) {
            this.b.setLocationOption(aMapLocationClientOption);
        }
    }

    public void setLocationListener(AMapLocationListener aMapLocationListener) {
        if (aMapLocationListener == null) {
            try {
                throw new IllegalArgumentException("listener参数不能为null");
            } catch (Throwable th) {
                fq.a(th, "AMapLocationClient", "setLocationListener");
            }
        } else if (this.b != null) {
            this.b.setLocationListener(aMapLocationListener);
        }
    }

    public void startLocation() {
        try {
            if (this.b != null) {
                this.b.startLocation();
            }
        } catch (Throwable th) {
            fq.a(th, "AMapLocationClient", "startLocation");
        }
    }

    public void stopLocation() {
        try {
            if (this.b != null) {
                this.b.stopLocation();
            }
        } catch (Throwable th) {
            fq.a(th, "AMapLocationClient", "stopLocation");
        }
    }

    public AMapLocation getLastKnownLocation() {
        try {
            if (this.b != null) {
                return this.b.getLastKnownLocation();
            }
        } catch (Throwable th) {
            fq.a(th, "AMapLocationClient", "getLastKnownLocation");
        }
        return null;
    }

    public void startAssistantLocation() {
        try {
            if (this.b != null) {
                this.b.startAssistantLocation();
            }
        } catch (Throwable th) {
            fq.a(th, "AMapLocationClient", "startAssistantLocation");
        }
    }

    public void startAssistantLocation(WebView webView) {
        try {
            if (this.b != null) {
                this.b.startAssistantLocation(webView);
            }
        } catch (Throwable th) {
            fq.a(th, "AMapLocationClient", "startAssistantLocation1");
        }
    }

    public void stopAssistantLocation() {
        try {
            if (this.b != null) {
                this.b.stopAssistantLocation();
            }
        } catch (Throwable th) {
            fq.a(th, "AMapLocationClient", "stopAssistantLocation");
        }
    }

    public String getVersion() {
        return "3.8.0";
    }

    public static void setApiKey(String str) {
        try {
            AMapLocationClientOption.a = str;
        } catch (Throwable th) {
            fq.a(th, "AMapLocationClient", "setApiKey");
        }
    }

    public boolean isStarted() {
        try {
            if (this.b != null) {
                return this.b.isStarted();
            }
        } catch (Throwable th) {
            fq.a(th, "AMapLocationClient", "isStarted");
        }
        return false;
    }

    public void unRegisterLocationListener(AMapLocationListener aMapLocationListener) {
        try {
            if (this.b != null) {
                this.b.unRegisterLocationListener(aMapLocationListener);
            }
        } catch (Throwable th) {
            fq.a(th, "AMapLocationClient", "unRegisterLocationListener");
        }
    }

    public void onDestroy() {
        try {
            if (this.b != null) {
                this.b.onDestroy();
            }
        } catch (Throwable th) {
            fq.a(th, "AMapLocationClient", "onDestroy");
        }
    }

    public void enableBackgroundLocation(int i, Notification notification) {
        try {
            if (this.b != null) {
                this.b.enableBackgroundLocation(i, notification);
            }
        } catch (Throwable th) {
            fq.a(th, "AMapLocationClient", "enableBackgroundLocation");
        }
    }

    public void disableBackgroundLocation(boolean z) {
        try {
            if (this.b != null) {
                this.b.disableBackgroundLocation(z);
            }
        } catch (Throwable th) {
            fq.a(th, "AMapLocationClient", "disableBackgroundLocation");
        }
    }
}
