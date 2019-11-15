package com.mi.milinkforgame.sdk.base.os.info;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.ifengyu.im.account.UserInfo;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.base.debug.CustomLogcat;
import com.mi.mimsgsdk.utils.Network;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class NetworkDash {
    private static final NetworkObserver OBSERVER = new NetworkObserver() {
        public void onNetworkChanged() {
            NetworkDash.updateNetworkState();
        }
    };
    private static final List<WeakReference<NetworkStateListener>> OBSERVER_LIST = new ArrayList();
    private static NetworkState sCurrState;
    private static ServiceProvider sImsiProvider = null;
    private static NetworkState sLastState;
    private static Handler sMainHandler;

    public static boolean isAvailable() {
        updateNetworkState();
        if (getCurrState() != null) {
            return getCurrState().isAvailable();
        }
        return false;
    }

    public static AccessPoint getAccessPoint() {
        NetworkState currState = getCurrState();
        if (currState != null) {
            return currState.getAccessPoint();
        }
        return AccessPoint.NONE;
    }

    public static NetworkType getType() {
        NetworkState currState = getCurrState();
        if (currState != null) {
            return currState.getType();
        }
        return NetworkType.NONE;
    }

    public static String getApnName() {
        NetworkState currState = getCurrState();
        if (currState != null) {
            return currState.getApnName();
        }
        return "";
    }

    public static int getApnType() {
        NetworkState currState = getCurrState();
        if (currState != null) {
            return currState.getApnType();
        }
        return -1;
    }

    public static String getApnNameOrWifi() {
        if (!isAvailable()) {
            return "";
        }
        if (isWifi()) {
            return Network.NETWORK_TYPE_WIFI;
        }
        return getApnName();
    }

    public static String getApnNameOrWifiOrEthernet() {
        if (!isAvailable()) {
            return "";
        }
        if (isWifi()) {
            return Network.NETWORK_TYPE_WIFI;
        }
        if (isEthernet()) {
            return "ethernet";
        }
        return getApnName();
    }

    public static ServiceProvider getProvider() {
        NetworkState currState = getCurrState();
        if (currState != null) {
            return currState.getAccessPoint().getProvider();
        }
        return ServiceProvider.NONE;
    }

    public static ServiceProvider getProvider(boolean z) {
        ServiceProvider serviceProvider = ServiceProvider.NONE;
        if (z) {
            ServiceProvider iMSIProvider = getIMSIProvider();
            if (!ServiceProvider.NONE.equals(iMSIProvider)) {
                return iMSIProvider;
            }
        }
        return getProvider();
    }

    public static ServiceProvider updateIMSIProvider() {
        ServiceProvider serviceProvider;
        try {
            synchronized (NetworkDash.class) {
                String imsi = getIMSI();
                sImsiProvider = ServiceProvider.fromIMSI(imsi);
                CustomLogcat.w("NetworkObserver", imsi + " => " + sImsiProvider);
                serviceProvider = sImsiProvider;
            }
            return serviceProvider;
        } catch (Exception e) {
            return ServiceProvider.NONE;
        }
    }

    public static String getIMSI() {
        try {
            String simOperator = ((TelephonyManager) Global.getSystemService(UserInfo.TYPE_PHONE)).getSimOperator();
            if (TextUtils.isEmpty(simOperator)) {
                simOperator = getDeviceIdBySlot(Global.getContext(), 0);
            }
            if (TextUtils.isEmpty(simOperator)) {
                simOperator = getDeviceIdBySlot(Global.getContext(), 1);
            }
            CustomLogcat.i("NetworkDash", "imsi: " + simOperator);
            return simOperator;
        } catch (Exception e) {
            return null;
        }
    }

    public static String getDeviceIdBySlot(Context context, int i) {
        String str;
        CustomLogcat.v("NetworkDash", "isDeviceIdBySlot:" + i);
        if (context == null || i < 0 || i > 1) {
            return null;
        }
        try {
            Object invoke = Class.forName("android.telephony.TelephonyManager").getMethod("getSimOperatorGemini", new Class[]{Integer.TYPE}).invoke((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE), new Object[]{Integer.valueOf(i)});
            str = invoke != null ? invoke.toString() : null;
        } catch (Exception e) {
            str = null;
        }
        return str;
    }

    public static ServiceProvider getIMSIProvider() {
        if (sImsiProvider == null) {
            updateIMSIProvider();
        }
        return sImsiProvider;
    }

    public static boolean isWap() {
        return getAccessPoint().isWap();
    }

    public static boolean isMobile() {
        NetworkType type = getType();
        return NetworkType.MOBILE_3G.equals(type) || NetworkType.MOBILE_2G.equals(type);
    }

    public static boolean is2G() {
        return NetworkType.MOBILE_2G.equals(getType());
    }

    public static boolean is3G() {
        return NetworkType.MOBILE_3G.equals(getType());
    }

    public static boolean isWifi() {
        return NetworkType.WIFI.equals(getType());
    }

    public static boolean isEthernet() {
        return NetworkType.ETHERNET.equals(getType());
    }

    public static int getCellLevel() {
        return OBSERVER.getCellLevel();
    }

    public static void addListener(NetworkStateListener networkStateListener) {
        synchronized (OBSERVER_LIST) {
            OBSERVER_LIST.add(new WeakReference(networkStateListener));
        }
    }

    public static void removeListener(NetworkStateListener networkStateListener) {
        WeakReference weakReference;
        synchronized (OBSERVER_LIST) {
            Iterator it = OBSERVER_LIST.iterator();
            while (true) {
                if (!it.hasNext()) {
                    weakReference = null;
                    break;
                }
                weakReference = (WeakReference) it.next();
                NetworkStateListener networkStateListener2 = (NetworkStateListener) weakReference.get();
                if (networkStateListener2 != null && networkStateListener2.equals(networkStateListener)) {
                    break;
                }
            }
            OBSERVER_LIST.remove(weakReference);
        }
    }

    static {
        updateNetworkState();
        OBSERVER.startListen();
    }

    /* access modifiers changed from: private */
    public static void notifyNetworkStateChange() {
        if (OBSERVER_LIST != null) {
            synchronized (OBSERVER_LIST) {
                for (WeakReference weakReference : OBSERVER_LIST) {
                    NetworkStateListener networkStateListener = (NetworkStateListener) weakReference.get();
                    if (networkStateListener != null) {
                        networkStateListener.onNetworkStateChanged(getLastState(), getCurrState());
                    }
                }
            }
        }
    }

    public static boolean updateNetworkState() {
        NetworkInfo networkInfo;
        boolean currState;
        synchronized (NetworkDash.class) {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) Global.getSystemService("connectivity");
                if (connectivityManager == null) {
                    currState = false;
                } else {
                    networkInfo = connectivityManager.getActiveNetworkInfo();
                    currState = setCurrState(NetworkState.fromNetworkInfo(networkInfo));
                    if (currState) {
                        updateIMSIProvider();
                        if (sMainHandler == null) {
                            sMainHandler = new Handler(Global.getMainLooper());
                        }
                        sMainHandler.post(new Runnable() {
                            public void run() {
                                NetworkDash.notifyNetworkStateChange();
                            }
                        });
                    }
                }
            } catch (Error e) {
                networkInfo = null;
            } catch (Exception e2) {
                networkInfo = null;
            }
        }
        return currState;
    }

    public static NetworkState getCurrState() {
        return sCurrState;
    }

    protected static NetworkState getLastState() {
        return sLastState;
    }

    protected static boolean setCurrState(NetworkState networkState) {
        boolean z = true;
        synchronized (NetworkDash.class) {
            boolean z2 = false;
            if (sCurrState == null) {
                sLastState = sCurrState;
                sCurrState = networkState;
                z2 = true;
            }
            if (!sCurrState.equals(networkState)) {
                sLastState = sCurrState;
                sCurrState = networkState;
            } else {
                z = z2;
            }
            if (z) {
                CustomLogcat.w("NetworkObserver", "LAST -> " + sLastState);
                CustomLogcat.w("NetworkObserver", "CURR -> " + sCurrState);
            }
        }
        return z;
    }
}
