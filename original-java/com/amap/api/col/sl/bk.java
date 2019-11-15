package com.amap.api.col.sl;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.core.LatLonSharePoint;
import com.amap.api.services.core.PoiItem;
import com.amap.api.services.interfaces.IShareSearch;
import com.amap.api.services.share.ShareSearch.OnShareSearchListener;
import com.amap.api.services.share.ShareSearch.ShareBusRouteQuery;
import com.amap.api.services.share.ShareSearch.ShareDrivingRouteQuery;
import com.amap.api.services.share.ShareSearch.ShareFromAndTo;
import com.amap.api.services.share.ShareSearch.ShareNaviQuery;
import com.amap.api.services.share.ShareSearch.ShareWalkRouteQuery;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: ShareSearchCore */
public class bk implements IShareSearch {
    private static String b = "http://wb.amap.com/?r=%f,%f,%s,%f,%f,%s,%d,%d,%d,%s,%s,%s&sourceapplication=openapi/0";
    private static String c = "http://wb.amap.com/?q=%f,%f,%s&sourceapplication=openapi/0";
    private static String d = "http://wb.amap.com/?n=%f,%f,%f,%f,%d&sourceapplication=openapi/0";
    private static String e = "http://wb.amap.com/?p=%s,%f,%f,%s,%s&sourceapplication=openapi/0";
    private static final String f = String.valueOf("");
    private Context a;
    /* access modifiers changed from: private */
    public OnShareSearchListener g;

    public bk(Context context) {
        this.a = context;
    }

    public void setOnShareSearchListener(OnShareSearchListener onShareSearchListener) {
        this.g = onShareSearchListener;
    }

    public void searchPoiShareUrlAsyn(final PoiItem poiItem) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    if (bk.this.g != null) {
                        Message obtainMessage = ac.a().obtainMessage();
                        obtainMessage.arg1 = 11;
                        obtainMessage.what = AMapException.CODE_AMAP_ENGINE_RESPONSE_ERROR;
                        obtainMessage.obj = bk.this.g;
                        try {
                            String searchPoiShareUrl = bk.this.searchPoiShareUrl(poiItem);
                            Bundle bundle = new Bundle();
                            bundle.putString("shareurlkey", searchPoiShareUrl);
                            obtainMessage.setData(bundle);
                            obtainMessage.arg2 = 1000;
                        } catch (AMapException e) {
                            obtainMessage.arg2 = e.getErrorCode();
                        } finally {
                            ac.a().sendMessage(obtainMessage);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void searchBusRouteShareUrlAsyn(final ShareBusRouteQuery shareBusRouteQuery) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    if (bk.this.g != null) {
                        Message obtainMessage = ac.a().obtainMessage();
                        obtainMessage.arg1 = 11;
                        obtainMessage.what = AMapException.CODE_AMAP_ENGINE_RETURN_TIMEOUT;
                        obtainMessage.obj = bk.this.g;
                        try {
                            String searchBusRouteShareUrl = bk.this.searchBusRouteShareUrl(shareBusRouteQuery);
                            Bundle bundle = new Bundle();
                            bundle.putString("shareurlkey", searchBusRouteShareUrl);
                            obtainMessage.setData(bundle);
                            obtainMessage.arg2 = 1000;
                        } catch (AMapException e) {
                            obtainMessage.arg2 = e.getErrorCode();
                        } finally {
                            ac.a().sendMessage(obtainMessage);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void searchWalkRouteShareUrlAsyn(final ShareWalkRouteQuery shareWalkRouteQuery) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    if (bk.this.g != null) {
                        Message obtainMessage = ac.a().obtainMessage();
                        obtainMessage.arg1 = 11;
                        obtainMessage.what = 1105;
                        obtainMessage.obj = bk.this.g;
                        try {
                            String searchWalkRouteShareUrl = bk.this.searchWalkRouteShareUrl(shareWalkRouteQuery);
                            Bundle bundle = new Bundle();
                            bundle.putString("shareurlkey", searchWalkRouteShareUrl);
                            obtainMessage.setData(bundle);
                            obtainMessage.arg2 = 1000;
                        } catch (AMapException e) {
                            obtainMessage.arg2 = e.getErrorCode();
                        } finally {
                            ac.a().sendMessage(obtainMessage);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void searchDrivingRouteShareUrlAsyn(final ShareDrivingRouteQuery shareDrivingRouteQuery) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    if (bk.this.g != null) {
                        Message obtainMessage = ac.a().obtainMessage();
                        obtainMessage.arg1 = 11;
                        obtainMessage.what = 1104;
                        obtainMessage.obj = bk.this.g;
                        try {
                            String searchDrivingRouteShareUrl = bk.this.searchDrivingRouteShareUrl(shareDrivingRouteQuery);
                            Bundle bundle = new Bundle();
                            bundle.putString("shareurlkey", searchDrivingRouteShareUrl);
                            obtainMessage.setData(bundle);
                            obtainMessage.arg2 = 1000;
                        } catch (AMapException e) {
                            obtainMessage.arg2 = e.getErrorCode();
                        } finally {
                            ac.a().sendMessage(obtainMessage);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void searchNaviShareUrlAsyn(final ShareNaviQuery shareNaviQuery) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    if (bk.this.g != null) {
                        Message obtainMessage = ac.a().obtainMessage();
                        obtainMessage.arg1 = 11;
                        obtainMessage.what = AMapException.CODE_AMAP_ENGINE_CONNECT_TIMEOUT;
                        obtainMessage.obj = bk.this.g;
                        try {
                            String searchNaviShareUrl = bk.this.searchNaviShareUrl(shareNaviQuery);
                            Bundle bundle = new Bundle();
                            bundle.putString("shareurlkey", searchNaviShareUrl);
                            obtainMessage.setData(bundle);
                            obtainMessage.arg2 = 1000;
                        } catch (AMapException e) {
                            obtainMessage.arg2 = e.getErrorCode();
                        } finally {
                            ac.a().sendMessage(obtainMessage);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void searchLocationShareUrlAsyn(final LatLonSharePoint latLonSharePoint) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    if (bk.this.g != null) {
                        Message obtainMessage = ac.a().obtainMessage();
                        obtainMessage.arg1 = 11;
                        obtainMessage.what = AMapException.CODE_AMAP_ENGINE_RESPONSE_DATA_ERROR;
                        obtainMessage.obj = bk.this.g;
                        try {
                            String searchLocationShareUrl = bk.this.searchLocationShareUrl(latLonSharePoint);
                            Bundle bundle = new Bundle();
                            bundle.putString("shareurlkey", searchLocationShareUrl);
                            obtainMessage.setData(bundle);
                            obtainMessage.arg2 = 1000;
                        } catch (AMapException e) {
                            obtainMessage.arg2 = e.getErrorCode();
                        } finally {
                            ac.a().sendMessage(obtainMessage);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public String searchPoiShareUrl(PoiItem poiItem) throws AMapException {
        if (poiItem != null) {
            try {
                if (poiItem.getLatLonPoint() != null) {
                    LatLonPoint latLonPoint = poiItem.getLatLonPoint();
                    return (String) new aq(this.a, String.format(e, new Object[]{poiItem.getPoiId(), Double.valueOf(latLonPoint.getLatitude()), Double.valueOf(latLonPoint.getLongitude()), poiItem.getTitle(), poiItem.getSnippet()})).a();
                }
            } catch (AMapException e2) {
                t.a(e2, "ShareSearch", "searchPoiShareUrl");
                throw e2;
            }
        }
        throw new AMapException("无效的参数 - IllegalArgumentException");
    }

    public String searchNaviShareUrl(ShareNaviQuery shareNaviQuery) throws AMapException {
        String format;
        if (shareNaviQuery == null) {
            try {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            } catch (AMapException e2) {
                t.a(e2, "ShareSearch", "searchNaviShareUrl");
                throw e2;
            }
        } else {
            ShareFromAndTo fromAndTo = shareNaviQuery.getFromAndTo();
            if (fromAndTo.getTo() == null) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            }
            LatLonPoint from = fromAndTo.getFrom();
            LatLonPoint to = fromAndTo.getTo();
            int naviMode = shareNaviQuery.getNaviMode();
            if (fromAndTo.getFrom() == null) {
                format = String.format(d, new Object[]{null, null, Double.valueOf(to.getLatitude()), Double.valueOf(to.getLongitude()), Integer.valueOf(naviMode)});
            } else {
                format = String.format(d, new Object[]{Double.valueOf(from.getLatitude()), Double.valueOf(from.getLongitude()), Double.valueOf(to.getLatitude()), Double.valueOf(to.getLongitude()), Integer.valueOf(naviMode)});
            }
            return (String) new aq(this.a, format).a();
        }
    }

    public String searchLocationShareUrl(LatLonSharePoint latLonSharePoint) throws AMapException {
        if (latLonSharePoint == null) {
            try {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            } catch (AMapException e2) {
                t.a(e2, "ShareSearch", "searchLocationShareUrl");
                throw e2;
            }
        } else {
            return (String) new aq(this.a, String.format(c, new Object[]{Double.valueOf(latLonSharePoint.getLatitude()), Double.valueOf(latLonSharePoint.getLongitude()), latLonSharePoint.getSharePointName()})).a();
        }
    }

    public String searchBusRouteShareUrl(ShareBusRouteQuery shareBusRouteQuery) throws AMapException {
        if (shareBusRouteQuery == null) {
            try {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            } catch (AMapException e2) {
                t.a(e2, "ShareSearch", "searchBusRouteShareUrl");
                throw e2;
            }
        } else {
            int busMode = shareBusRouteQuery.getBusMode();
            ShareFromAndTo shareFromAndTo = shareBusRouteQuery.getShareFromAndTo();
            if (shareFromAndTo.getFrom() == null || shareFromAndTo.getTo() == null) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            }
            LatLonPoint from = shareFromAndTo.getFrom();
            LatLonPoint to = shareFromAndTo.getTo();
            String fromName = shareFromAndTo.getFromName();
            String toName = shareFromAndTo.getToName();
            return (String) new aq(this.a, String.format(b, new Object[]{Double.valueOf(from.getLatitude()), Double.valueOf(from.getLongitude()), fromName, Double.valueOf(to.getLatitude()), Double.valueOf(to.getLongitude()), toName, Integer.valueOf(busMode), Integer.valueOf(1), Integer.valueOf(0), f, f, f})).a();
        }
    }

    public String searchDrivingRouteShareUrl(ShareDrivingRouteQuery shareDrivingRouteQuery) throws AMapException {
        if (shareDrivingRouteQuery == null) {
            try {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            } catch (AMapException e2) {
                t.a(e2, "ShareSearch", "searchDrivingRouteShareUrl");
                throw e2;
            }
        } else {
            int drivingMode = shareDrivingRouteQuery.getDrivingMode();
            ShareFromAndTo shareFromAndTo = shareDrivingRouteQuery.getShareFromAndTo();
            if (shareFromAndTo.getFrom() == null || shareFromAndTo.getTo() == null) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            }
            LatLonPoint from = shareFromAndTo.getFrom();
            LatLonPoint to = shareFromAndTo.getTo();
            String fromName = shareFromAndTo.getFromName();
            String toName = shareFromAndTo.getToName();
            return (String) new aq(this.a, String.format(b, new Object[]{Double.valueOf(from.getLatitude()), Double.valueOf(from.getLongitude()), fromName, Double.valueOf(to.getLatitude()), Double.valueOf(to.getLongitude()), toName, Integer.valueOf(drivingMode), Integer.valueOf(0), Integer.valueOf(0), f, f, f})).a();
        }
    }

    public String searchWalkRouteShareUrl(ShareWalkRouteQuery shareWalkRouteQuery) throws AMapException {
        if (shareWalkRouteQuery == null) {
            try {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            } catch (AMapException e2) {
                t.a(e2, "ShareSearch", "searchWalkRouteShareUrl");
                throw e2;
            }
        } else {
            int walkMode = shareWalkRouteQuery.getWalkMode();
            ShareFromAndTo shareFromAndTo = shareWalkRouteQuery.getShareFromAndTo();
            if (shareFromAndTo.getFrom() == null || shareFromAndTo.getTo() == null) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            }
            LatLonPoint from = shareFromAndTo.getFrom();
            LatLonPoint to = shareFromAndTo.getTo();
            String fromName = shareFromAndTo.getFromName();
            String toName = shareFromAndTo.getToName();
            return (String) new aq(this.a, String.format(b, new Object[]{Double.valueOf(from.getLatitude()), Double.valueOf(from.getLongitude()), fromName, Double.valueOf(to.getLatitude()), Double.valueOf(to.getLongitude()), toName, Integer.valueOf(walkMode), Integer.valueOf(2), Integer.valueOf(0), f, f, f})).a();
        }
    }
}
