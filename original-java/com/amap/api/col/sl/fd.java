package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.location.AMapLocationClientOption;
import java.util.ArrayList;
import org.json.JSONObject;

/* compiled from: OffLineManager */
public final class fd {
    private String a = "com.autonavi.aps.amapapi.offline.Off";
    private Object b = null;
    private boolean c = false;
    private boolean d = false;
    private Context e = null;

    public final void a(Context context) {
        try {
            this.e = context;
            if (fp.w() && this.b == null && !this.c) {
                bz a2 = fq.a("OfflineLocation", "1.0.0");
                this.c = fv.a(context, a2);
                if (this.c) {
                    try {
                        this.b = cy.a(context, a2, this.a, null, new Class[]{Context.class}, new Object[]{context});
                    } catch (Throwable th) {
                    }
                } else {
                    this.c = true;
                }
            }
        } catch (Throwable th2) {
            fq.a(th2, "OffLineLocManager", "initOffLocation");
        }
    }

    public final void a() {
        try {
            if (d()) {
                ft.a(this.b, "getOffDlHist", new Object[0]);
            } else if (this.b != null) {
                ft.a(this.b, "stopOff", new Object[0]);
                this.d = false;
            }
        } catch (Throwable th) {
        }
    }

    private boolean d() {
        return this.b != null && fp.w();
    }

    public final void a(AMapLocationClientOption aMapLocationClientOption, String str) {
        try {
            if (d() && !this.d) {
                if (aMapLocationClientOption == null) {
                    aMapLocationClientOption = new AMapLocationClientOption();
                }
                ft.a(this.b, "startOff", fq.a(aMapLocationClientOption), str);
                this.d = true;
            }
        } catch (Throwable th) {
            fq.a(th, "OffLineLocManager", "getLocation:isOffLineLoc");
        }
    }

    public final void b() {
        a("stopOff");
        a("destroy");
        c();
        this.d = false;
        this.b = null;
    }

    public final void c() {
        try {
            if (d()) {
                ft.a(this.b, "resetPureOfflineCache", new Object[0]);
            }
        } catch (Throwable th) {
        }
    }

    public final void a(JSONObject jSONObject) {
        try {
            if (d()) {
                ft.a(this.b, "setLastLoc", jSONObject);
            }
        } catch (Throwable th) {
        }
    }

    public final ev a(fg fgVar, String str, String str2, AMapLocationClientOption aMapLocationClientOption, String str3, ev evVar) {
        if (evVar != null && evVar.getErrorCode() == 7) {
            return evVar;
        }
        if (aMapLocationClientOption == null) {
            aMapLocationClientOption = new AMapLocationClientOption();
        }
        ev a2 = a(str, str2, fq.a(aMapLocationClientOption), str3);
        if (!fy.a(a2)) {
            return evVar;
        }
        fgVar.a(str2);
        a2.e(HttpPostBodyUtil.FILE);
        a2.setLocationType(8);
        a2.setLocationDetail("离线定位，在线定位失败原因:" + evVar.getErrorInfo());
        a(a2.toJson(1));
        return a2;
    }

    private ev a(String str, String str2, JSONObject jSONObject, String str3) {
        Object obj;
        try {
            if (d()) {
                try {
                    obj = ft.a(this.b, "getPureOfflineLocation", str, str2, jSONObject, str3);
                } catch (Throwable th) {
                    obj = null;
                }
                String str4 = (String) obj;
                ev evVar = new ev("");
                evVar.b(new JSONObject(str4));
                return evVar;
            }
        } catch (Throwable th2) {
        }
        return null;
    }

    private void a(String str) {
        try {
            if (d()) {
                try {
                    ft.a(this.b, str, new Object[0]);
                } catch (Throwable th) {
                }
                if (this.e == null) {
                }
            } else if (this.b != null) {
                ft.a(this.b, "stopOff", new Object[0]);
                this.d = false;
            }
        } catch (Throwable th2) {
        }
    }

    public final void a(fb fbVar) {
        ArrayList<fa> arrayList = fbVar.b;
        int i = fbVar.a & 3;
        if (!arrayList.isEmpty()) {
            switch (i) {
                case 1:
                    a("resetCdmaData");
                    return;
                case 2:
                    fa faVar = (fa) arrayList.get(0);
                    if (faVar.f <= 0 || faVar.e <= 0) {
                        a("resetCdmaData");
                        return;
                    } else if (d()) {
                        ft.a(this.b, "setCdmaLatLon", Integer.valueOf(faVar.e), Integer.valueOf(faVar.f));
                        return;
                    } else {
                        return;
                    }
                default:
                    a("resetCdmaData");
                    return;
            }
        }
    }

    public final void a(String str, ev evVar) {
        try {
            if (fy.a(evVar) && this.e != null) {
                double latitude = evVar.getLatitude();
                double longitude = evVar.getLongitude();
                if (d()) {
                    ft.a(this.b, "updateHM", this.e, str, Double.valueOf(latitude), Double.valueOf(longitude));
                }
            }
        } catch (Throwable th) {
        }
    }
}
