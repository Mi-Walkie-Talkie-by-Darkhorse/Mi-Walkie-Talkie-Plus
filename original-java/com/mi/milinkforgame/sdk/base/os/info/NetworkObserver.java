package com.mi.milinkforgame.sdk.base.os.info;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import com.ifengyu.im.account.UserInfo;
import com.mi.milinkforgame.sdk.base.Global;

abstract class NetworkObserver extends BroadcastReceiver {
    /* access modifiers changed from: private */
    public volatile int cellLevel = -1;
    private final boolean cellListenEnabled;
    private PhoneStateListener signalListener;

    public abstract void onNetworkChanged();

    NetworkObserver() {
        this.cellListenEnabled = VERSION.SDK_INT >= 7;
    }

    public void startListen() {
        try {
            Global.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        } catch (Exception e) {
        }
    }

    public void stopListen() {
        Global.unregisterReceiver(this);
    }

    public int getCellLevel() {
        return this.cellLevel;
    }

    public void onReceive(Context context, Intent intent) {
        if (this.cellListenEnabled && this.signalListener == null) {
            synchronized (this) {
                if (this.signalListener == null) {
                    initSignalListen();
                }
            }
        }
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            onNetworkChanged();
        }
    }

    @SuppressLint({"InlinedApi"})
    private void initSignalListen() {
        if (this.cellListenEnabled) {
            this.signalListener = new PhoneStateListener() {
                public void onSignalStrengthsChanged(SignalStrength signalStrength) {
                    NetworkObserver.this.cellLevel = NetworkObserver.this.getCellLevel(signalStrength);
                    super.onSignalStrengthsChanged(signalStrength);
                }
            };
            TelephonyManager telephonyManager = (TelephonyManager) Global.getSystemService(UserInfo.TYPE_PHONE);
            if (telephonyManager != null) {
                telephonyManager.listen(this.signalListener, 256);
            } else {
                this.signalListener = null;
            }
        }
    }

    /* access modifiers changed from: private */
    public int getCellLevel(SignalStrength signalStrength) {
        if (signalStrength == null) {
            return -1;
        }
        if (signalStrength.isGsm()) {
            return getGsmLevel(signalStrength);
        }
        int cdmaLevel = getCdmaLevel(signalStrength);
        int evdoLevel = getEvdoLevel(signalStrength);
        if (evdoLevel == 0) {
            return cdmaLevel;
        }
        if (cdmaLevel == 0) {
            return evdoLevel;
        }
        if (evdoLevel <= cdmaLevel) {
            return evdoLevel;
        }
        return cdmaLevel;
    }

    private int getGsmLevel(SignalStrength signalStrength) {
        int gsmSignalStrength = signalStrength.getGsmSignalStrength();
        if (gsmSignalStrength <= 2 || gsmSignalStrength == 99) {
            return 0;
        }
        if (gsmSignalStrength >= 12) {
            return 4;
        }
        if (gsmSignalStrength >= 8) {
            return 3;
        }
        if (gsmSignalStrength < 5) {
            return 1;
        }
        return 2;
    }

    private int getCdmaLevel(SignalStrength signalStrength) {
        int i;
        int i2 = 4;
        int cdmaDbm = signalStrength.getCdmaDbm();
        int cdmaEcio = signalStrength.getCdmaEcio();
        if (cdmaDbm >= -75) {
            i = 4;
        } else if (cdmaDbm >= -85) {
            i = 3;
        } else if (cdmaDbm >= -95) {
            i = 2;
        } else if (cdmaDbm >= -100) {
            i = 1;
        } else {
            i = 0;
        }
        if (cdmaEcio < -90) {
            if (cdmaEcio >= -110) {
                i2 = 3;
            } else if (cdmaEcio >= -130) {
                i2 = 2;
            } else if (cdmaEcio >= -150) {
                i2 = 1;
            } else {
                i2 = 0;
            }
        }
        if (i < i2) {
            return i;
        }
        return i2;
    }

    private int getEvdoLevel(SignalStrength signalStrength) {
        int i;
        int i2 = 4;
        int evdoDbm = signalStrength.getEvdoDbm();
        int evdoSnr = signalStrength.getEvdoSnr();
        if (evdoDbm >= -65) {
            i = 4;
        } else if (evdoDbm >= -75) {
            i = 3;
        } else if (evdoDbm >= -90) {
            i = 2;
        } else if (evdoDbm >= -105) {
            i = 1;
        } else {
            i = 0;
        }
        if (evdoSnr < 7) {
            if (evdoSnr >= 5) {
                i2 = 3;
            } else if (evdoSnr >= 3) {
                i2 = 2;
            } else if (evdoSnr >= 1) {
                i2 = 1;
            } else {
                i2 = 0;
            }
        }
        if (i < i2) {
            return i;
        }
        return i2;
    }
}
