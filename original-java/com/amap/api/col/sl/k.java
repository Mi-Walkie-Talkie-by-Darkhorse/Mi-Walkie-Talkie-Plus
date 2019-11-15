package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.ServiceSettings;
import java.util.Map;

/* compiled from: BasicHandler */
public abstract class k<T, V> extends ds {
    protected T a;
    protected int b = 1;
    protected String c = "";
    protected Context d;
    protected String e = "";
    private int i = 1;

    /* access modifiers changed from: protected */
    public abstract V a(String str) throws AMapException;

    public k(Context context, T t) {
        this.d = context;
        this.a = t;
        this.b = 1;
        b(ServiceSettings.getInstance().getSoTimeOut());
        a(ServiceSettings.getInstance().getConnectionTimeOut());
    }

    private String d() {
        String f = f();
        if (f != null) {
            String str = ".com/";
            String str2 = "?";
            try {
                int indexOf = f.indexOf(str);
                int indexOf2 = f.indexOf(str2);
                if (indexOf2 == -1) {
                    return f.substring(str.length() + indexOf);
                }
                return f.substring(str.length() + indexOf, indexOf2);
            } catch (Throwable th) {
            }
        }
        return null;
    }

    private V a(byte[] bArr) throws AMapException {
        String str;
        try {
            str = new String(bArr, "utf-8");
        } catch (Exception e2) {
            t.a(e2, "ProtocalHandler", "loadData");
            str = null;
        }
        if (str == null || str.equals("")) {
            return null;
        }
        t.b(str);
        return a(str);
    }

    public final V a() throws AMapException {
        String str;
        if (this.a == null) {
            return null;
        }
        try {
            return g();
        } catch (AMapException e2) {
            String d2 = d();
            String str2 = this.e;
            if (d2 != null) {
                String errorType = e2.getErrorType();
                if (e2.getErrorLevel() == 0) {
                    int errorCode = e2.getErrorCode();
                    if (errorCode == 0) {
                        str = "4";
                    } else {
                        int pow = (int) Math.pow(10.0d, Math.floor(Math.log10((double) errorCode)));
                        str = ((errorCode % pow) + (pow * 4));
                    }
                } else {
                    str = e2.getErrorCode();
                }
                if (str != null && str.length() > 0) {
                    cm.a(s.a(true), d2, errorType, str2, str);
                }
            }
            throw e2;
        }
    }

    private V g() throws AMapException {
        V v = null;
        int i2 = 0;
        while (i2 < this.b) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                int protocol = ServiceSettings.getInstance().getProtocol();
                dr.b();
                a(bx.a(this.d));
                byte[] a2 = a(protocol, this);
                long currentTimeMillis2 = System.currentTimeMillis();
                v = a(a2);
                ar.a(this.d, d(), currentTimeMillis2 - currentTimeMillis, true);
                i2 = this.b;
            } catch (bo e2) {
                ar.a(this.d, d(), System.currentTimeMillis() - currentTimeMillis, false);
                i2++;
                if (i2 < this.b) {
                    try {
                        Thread.sleep((long) (this.i * 1000));
                    } catch (InterruptedException e3) {
                        if (com.amap.api.maps.AMapException.ERROR_CONNECTION.equals(e2.getMessage()) || com.amap.api.maps.AMapException.ERROR_SOCKET.equals(e2.getMessage()) || com.amap.api.maps.AMapException.ERROR_UNKNOW_SERVICE.equals(e2.getMessage())) {
                            throw new AMapException(AMapException.AMAP_CLIENT_NETWORK_EXCEPTION, 1, e2.c());
                        }
                        throw new AMapException(e2.a(), 1, e2.c());
                    }
                } else if (com.amap.api.maps.AMapException.ERROR_CONNECTION.equals(e2.getMessage()) || com.amap.api.maps.AMapException.ERROR_SOCKET.equals(e2.getMessage()) || com.amap.api.maps.AMapException.ERROR_UNKNOWN.equals(e2.a()) || com.amap.api.maps.AMapException.ERROR_UNKNOW_SERVICE.equals(e2.getMessage())) {
                    throw new AMapException(AMapException.AMAP_CLIENT_NETWORK_EXCEPTION, 1, e2.c());
                } else {
                    throw new AMapException(e2.a(), 1, e2.c());
                }
            } catch (AMapException e4) {
                ar.a(this.d, d(), System.currentTimeMillis() - currentTimeMillis, false);
                i2++;
                if (i2 >= this.b) {
                    throw e4;
                }
            } catch (Throwable th) {
                throw new AMapException(AMapException.AMAP_CLIENT_UNKNOWN_ERROR);
            }
        }
        return v;
    }

    /* access modifiers changed from: protected */
    public byte[] a(int i2, ds dsVar) throws bo {
        du duVar = i2 == 1 ? dr.a(dsVar, false) : i2 == 2 ? dr.a(dsVar, true) : null;
        if (duVar == null) {
            return null;
        }
        byte[] bArr = duVar.a;
        this.e = duVar.d;
        return bArr;
    }

    public Map<String, String> b() {
        return null;
    }

    public Map<String, String> c() {
        return null;
    }
}
