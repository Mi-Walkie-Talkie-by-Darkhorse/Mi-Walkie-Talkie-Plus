package com.ifengyu.im.imservice.services;

import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationClientOption.AMapLocationMode;
import com.amap.api.location.AMapLocationListener;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.nearby.NearbyInfo;
import com.amap.api.services.nearby.NearbySearch;
import com.amap.api.services.nearby.NearbySearch.NearbyListener;
import com.amap.api.services.nearby.NearbySearch.NearbyQuery;
import com.amap.api.services.nearby.NearbySearchFunctionType;
import com.amap.api.services.nearby.NearbySearchResult;
import com.amap.api.services.nearby.UploadInfo;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.imservice.callback.Packetlistener;
import com.ifengyu.im.imservice.event.NearbyEvent;
import com.ifengyu.im.imservice.event.NearbyEvent.Event;
import com.ifengyu.im.imservice.manager.IMContactManager;
import com.ifengyu.im.imservice.manager.IMLoginManager;
import com.ifengyu.im.imservice.manager.IMManager;
import com.ifengyu.library.util.c;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.util.ArrayList;
import java.util.List;

public class NearbyService extends IMManager implements AMapLocationListener, NearbyListener {
    /* access modifiers changed from: private */
    public static final String TAG = NearbySearch.class.getSimpleName();
    private IMLoginManager mIMLoginManager = IMLoginManager.instance();
    private AMapLocationClient mLocationClient;
    private AMapLocation mMapLocation;
    private NearbySearch mNearbySearch;

    public static class Holder {
        public static final NearbyService INSTANCE = new NearbyService();
    }

    public static NearbyService instance() {
        return Holder.INSTANCE;
    }

    public void doOnStart() {
    }

    public void reset() {
        if (this.mLocationClient != null) {
            this.mLocationClient.stopLocation();
            this.mLocationClient = null;
        }
        if (this.mNearbySearch != null) {
            this.mNearbySearch.removeNearbyListener(this);
            this.mNearbySearch = null;
        }
        NearbySearch.destroy();
    }

    public void onLoginSuccess() {
        if (this.mNearbySearch == null) {
            this.mNearbySearch = NearbySearch.getInstance(this.ctx);
            this.mNearbySearch.addNearbyListener(this);
        }
        if (this.mLocationClient == null) {
            this.mLocationClient = new AMapLocationClient(this.ctx.getApplicationContext());
        }
        if (!this.mLocationClient.isStarted()) {
            AMapLocationClientOption aMapLocationClientOption = new AMapLocationClientOption();
            aMapLocationClientOption.setLocationMode(AMapLocationMode.Hight_Accuracy);
            aMapLocationClientOption.setNeedAddress(true);
            aMapLocationClientOption.setOnceLocation(false);
            aMapLocationClientOption.setInterval(FileTracerConfig.DEF_FLUSH_INTERVAL);
            this.mLocationClient.setLocationOption(aMapLocationClientOption);
            this.mLocationClient.setLocationListener(this);
            this.mLocationClient.startLocation();
        }
    }

    public void onLocationChanged(AMapLocation aMapLocation) {
        c.a(TAG, "onLocationChanged#latitude = " + aMapLocation.getLatitude() + "longitude = " + aMapLocation.getLongitude());
        this.mMapLocation = aMapLocation;
        int loginId = this.mIMLoginManager.getLoginId();
        UploadInfo uploadInfo = new UploadInfo();
        uploadInfo.setCoordType(1);
        uploadInfo.setPoint(new LatLonPoint(aMapLocation.getLatitude(), aMapLocation.getLongitude()));
        uploadInfo.setUserID(String.valueOf(loginId));
        if (this.mNearbySearch != null) {
            this.mNearbySearch.uploadNearbyInfoAsyn(uploadInfo);
        }
    }

    public void queryNearbyUser() {
        NearbyQuery nearbyQuery = new NearbyQuery();
        if (this.mMapLocation != null) {
            nearbyQuery.setCenterPoint(new LatLonPoint(this.mMapLocation.getLatitude(), this.mMapLocation.getLongitude()));
            nearbyQuery.setCoordType(1);
            nearbyQuery.setRadius(2000);
            nearbyQuery.setTimeRange(300);
            nearbyQuery.setType(NearbySearchFunctionType.DISTANCE_SEARCH);
            if (this.mNearbySearch != null) {
                this.mNearbySearch.searchNearbyInfoAsyn(nearbyQuery);
            }
        }
    }

    public void onUserInfoCleared(int i) {
    }

    public void onNearbyInfoSearched(NearbySearchResult nearbySearchResult, int i) {
        if (i == 1000 && nearbySearchResult != null && nearbySearchResult.getNearbyInfoList() != null && nearbySearchResult.getNearbyInfoList().size() > 0) {
            List<NearbyInfo> nearbyInfoList = nearbySearchResult.getNearbyInfoList();
            try {
                ArrayList arrayList = new ArrayList();
                for (NearbyInfo userID : nearbyInfoList) {
                    arrayList.add(Integer.valueOf(Integer.parseInt(userID.getUserID())));
                }
                IMContactManager.instance().reqUserInfo((List<Integer>) arrayList, (Packetlistener) new Packetlistener() {
                    public void onSuccess(Object obj) {
                        if (obj instanceof ArrayList) {
                            ArrayList arrayList = (ArrayList) obj;
                            c.a(NearbyService.TAG, arrayList.toString());
                            de.greenrobot.event.c.a().e(new NearbyEvent(Event.QUERY_SUCCESS, arrayList));
                        }
                    }

                    public void onFaild() {
                        de.greenrobot.event.c.a().e(new NearbyEvent(Event.QUERY_FAILED, null));
                    }

                    public void onTimeout() {
                        de.greenrobot.event.c.a().e(new NearbyEvent(Event.QUERY_FAILED, null));
                    }
                });
            } catch (NumberFormatException e) {
                ThrowableExtension.printStackTrace(e);
                c.d(TAG, e.getMessage());
                de.greenrobot.event.c.a().e(new NearbyEvent(Event.QUERY_FAILED, null));
            }
        }
    }

    public void onNearbyInfoUploaded(int i) {
    }
}
