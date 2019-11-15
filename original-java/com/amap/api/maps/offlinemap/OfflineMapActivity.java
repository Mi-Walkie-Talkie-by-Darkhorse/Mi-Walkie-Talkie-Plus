package com.amap.api.maps.offlinemap;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import com.amap.api.mapcore.util.fc;
import com.amap.api.mapcore.util.fd;
import com.amap.api.mapcore.util.ff;
import com.amap.api.offlineservice.AMapPermissionActivity;
import com.amap.api.offlineservice.a;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class OfflineMapActivity extends AMapPermissionActivity implements OnClickListener {
    private static int a = 0;
    private a b;
    private fc c;
    private fc[] d = new fc[32];
    private int e = -1;
    private fd f;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            getWindow().setSoftInputMode(32);
            getWindow().setFormat(-3);
            requestWindowFeature(1);
            ff.a(getApplicationContext());
            this.e = -1;
            a = 0;
            newScr(new fc(1, null));
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void showScr() {
        try {
            setContentView(this.b.c());
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    private void a(fc fcVar) {
        try {
            if (this.b != null) {
                this.b.d();
                this.b = null;
            }
            this.b = b(fcVar);
            if (this.b != null) {
                this.c = fcVar;
                this.b.a(this);
                this.b.a(this.c.b);
                this.b.a();
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void newScr(fc fcVar) {
        try {
            a++;
            a(fcVar);
            this.e = (this.e + 1) % 32;
            this.d[this.e] = fcVar;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    private a b(fc fcVar) {
        try {
            switch (fcVar.a) {
                case 1:
                    if (this.f == null) {
                        this.f = new fd();
                    }
                    return this.f;
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        try {
            super.onStart();
            if (this.b != null) {
                this.b.e();
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        try {
            super.onResume();
            if (this.b != null) {
                this.b.f();
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        try {
            super.onPause();
            if (this.b != null) {
                this.b.h();
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        try {
            super.onStop();
            if (this.b != null) {
                this.b.g();
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        try {
            super.onConfigurationChanged(configuration);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void closeScr() {
        try {
            if (!a((Bundle) null)) {
                if (this.b != null) {
                    this.b.d();
                }
                finish();
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void closeScr(Bundle bundle) {
        try {
            if (!a(bundle)) {
                if (this.b != null) {
                    this.b.d();
                }
                finish();
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    private boolean a(Bundle bundle) {
        try {
            if ((a == 1 && this.b != null) || a <= 1) {
                return false;
            }
            a--;
            this.e = ((this.e - 1) + 32) % 32;
            fc fcVar = this.d[this.e];
            fcVar.b = bundle;
            a(fcVar);
            return true;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        try {
            super.onDestroy();
            if (this.b != null) {
                this.b.d();
                this.b = null;
            }
            this.c = null;
            this.d = null;
            if (this.f != null) {
                this.f.d();
                this.f = null;
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void onClick(View view) {
        try {
            if (this.b != null) {
                this.b.a(view);
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            try {
                if (this.b != null && !this.b.b()) {
                    return true;
                }
                if (a((Bundle) null)) {
                    return false;
                }
                if (keyEvent == null) {
                    if (a == 1) {
                        finish();
                    }
                    return false;
                }
                this.e = -1;
                a = 0;
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
        return super.onKeyDown(i, keyEvent);
    }
}
