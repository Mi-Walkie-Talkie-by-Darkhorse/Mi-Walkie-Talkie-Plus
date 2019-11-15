package org.osmdroid.views.overlay.gridlines;

import android.content.Context;
import android.support.v4.view.ViewCompat;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.mi.milinkforgame.sdk.base.debug.TraceFormat;
import com.xiaomi.mipush.sdk.Constants;
import java.text.DecimalFormat;
import java.util.ArrayList;
import org.osmdroid.util.BoundingBox;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.MapView;
import org.osmdroid.views.overlay.FolderOverlay;
import org.osmdroid.views.overlay.Marker;
import org.osmdroid.views.overlay.Polyline;

public class LatLonGridlineOverlay {
    public static boolean DEBUG = false;
    public static boolean DEBUG2 = false;
    public static int backgroundColor = ViewCompat.MEASURED_STATE_MASK;
    static final DecimalFormat df = new DecimalFormat("#.#####");
    public static int fontColor = -1;
    public static short fontSizeDp = 24;
    public static int lineColor = ViewCompat.MEASURED_STATE_MASK;
    public static float lineWidth = 1.0f;
    private static float multiplier = 1.0f;

    private static void applyMarkerAttributes(Marker marker) {
        marker.setTextLabelBackgroundColor(backgroundColor);
        marker.setTextLabelFontSize(fontSizeDp);
        marker.setTextLabelForegroundColor(fontColor);
    }

    public static FolderOverlay getLatLonGrid(Context context, MapView mapView) {
        BoundingBox boundingBox = mapView.getBoundingBox();
        int zoomLevel = mapView.getZoomLevel();
        Marker.ENABLE_TEXT_LABELS_WHEN_NO_IMAGE = true;
        if (DEBUG) {
            System.out.println("######### getLatLonGrid ");
        }
        FolderOverlay folderOverlay = new FolderOverlay();
        if (zoomLevel >= 2) {
            double latNorth = boundingBox.getLatNorth();
            double latSouth = boundingBox.getLatSouth();
            double lonEast = boundingBox.getLonEast();
            double lonWest = boundingBox.getLonWest();
            if (latNorth < latSouth) {
                return folderOverlay;
            }
            if (DEBUG) {
                System.out.println("N " + latNorth + " S " + latSouth + ", " + 0.0d);
            }
            boolean z = false;
            if (lonEast < 0.0d && lonWest > 0.0d) {
                z = true;
            }
            if (DEBUG) {
                System.out.println("delta " + 0.0d);
            }
            double incrementor = getIncrementor(zoomLevel);
            double[] startEndPointsNS = getStartEndPointsNS(latNorth, latSouth, zoomLevel);
            double d = startEndPointsNS[1];
            for (double d2 = startEndPointsNS[0]; d2 <= d; d2 += incrementor) {
                Polyline polyline = new Polyline();
                polyline.setWidth(lineWidth);
                polyline.setColor(lineColor);
                ArrayList arrayList = new ArrayList();
                GeoPoint geoPoint = new GeoPoint(d2, lonEast);
                arrayList.add(geoPoint);
                GeoPoint geoPoint2 = new GeoPoint(d2, lonWest);
                arrayList.add(geoPoint2);
                if (DEBUG) {
                    System.out.println("drawing NS " + d2 + Constants.ACCEPT_TIME_SEPARATOR_SP + lonEast + " to " + d2 + Constants.ACCEPT_TIME_SEPARATOR_SP + lonWest + ", zoom " + zoomLevel);
                }
                polyline.setPoints(arrayList);
                folderOverlay.add(polyline);
                Marker marker = new Marker(mapView);
                applyMarkerAttributes(marker);
                if (d2 > 0.0d) {
                    marker.setTitle(df.format(d2) + "N");
                } else {
                    marker.setTitle(df.format(d2) + "S");
                }
                marker.setIcon(null);
                GeoPoint geoPoint3 = new GeoPoint(d2, lonWest + incrementor);
                marker.setPosition(geoPoint3);
                folderOverlay.add(marker);
            }
            double[] startEndPointsWE = getStartEndPointsWE(lonWest, lonEast, zoomLevel);
            double d3 = startEndPointsWE[1];
            double d4 = startEndPointsWE[0];
            for (double d5 = d3; d5 <= d4; d5 += incrementor) {
                Polyline polyline2 = new Polyline();
                polyline2.setWidth(lineWidth);
                polyline2.setColor(lineColor);
                ArrayList arrayList2 = new ArrayList();
                GeoPoint geoPoint4 = new GeoPoint(latNorth, d5);
                arrayList2.add(geoPoint4);
                GeoPoint geoPoint5 = new GeoPoint(latSouth, d5);
                arrayList2.add(geoPoint5);
                polyline2.setPoints(arrayList2);
                if (DEBUG) {
                    System.err.println("drawing EW " + latSouth + Constants.ACCEPT_TIME_SEPARATOR_SP + d5 + " to " + latNorth + Constants.ACCEPT_TIME_SEPARATOR_SP + d5 + ", zoom " + zoomLevel);
                }
                folderOverlay.add(polyline2);
                Marker marker2 = new Marker(mapView);
                applyMarkerAttributes(marker2);
                marker2.setRotation(-90.0f);
                if (d5 > 0.0d) {
                    marker2.setTitle(df.format(d5) + TraceFormat.STR_ERROR);
                } else {
                    marker2.setTitle(df.format(d5) + TraceFormat.STR_WARN);
                }
                marker2.setIcon(null);
                GeoPoint geoPoint6 = new GeoPoint(latSouth + incrementor, d5);
                marker2.setPosition(geoPoint6);
                folderOverlay.add(marker2);
            }
            if (z) {
                if (DEBUG) {
                    System.out.println("DATELINE zoom " + zoomLevel + Token.SEPARATOR + d3 + Token.SEPARATOR + d4);
                }
                for (double d6 = d3; d6 <= 180.0d; d6 += incrementor) {
                    Polyline polyline3 = new Polyline();
                    polyline3.setWidth(lineWidth);
                    polyline3.setColor(lineColor);
                    ArrayList arrayList3 = new ArrayList();
                    GeoPoint geoPoint7 = new GeoPoint(latNorth, d6);
                    arrayList3.add(geoPoint7);
                    GeoPoint geoPoint8 = new GeoPoint(latSouth, d6);
                    arrayList3.add(geoPoint8);
                    polyline3.setPoints(arrayList3);
                    if (DEBUG2) {
                        System.out.println("DATELINE drawing NS" + latSouth + Constants.ACCEPT_TIME_SEPARATOR_SP + d6 + " to " + latNorth + Constants.ACCEPT_TIME_SEPARATOR_SP + d6 + ", zoom " + zoomLevel);
                    }
                    folderOverlay.add(polyline3);
                }
                for (double d7 = -180.0d; d7 <= d4; d7 += incrementor) {
                    Polyline polyline4 = new Polyline();
                    polyline4.setWidth(lineWidth);
                    polyline4.setColor(lineColor);
                    ArrayList arrayList4 = new ArrayList();
                    GeoPoint geoPoint9 = new GeoPoint(latNorth, d7);
                    arrayList4.add(geoPoint9);
                    GeoPoint geoPoint10 = new GeoPoint(latSouth, d7);
                    arrayList4.add(geoPoint10);
                    polyline4.setPoints(arrayList4);
                    if (DEBUG2) {
                        System.out.println("DATELINE drawing EW" + latSouth + Constants.ACCEPT_TIME_SEPARATOR_SP + d7 + " to " + latNorth + Constants.ACCEPT_TIME_SEPARATOR_SP + d7 + ", zoom " + zoomLevel);
                    }
                    folderOverlay.add(polyline4);
                    Marker marker3 = new Marker(mapView);
                    applyMarkerAttributes(marker3);
                    marker3.setRotation(-90.0f);
                    if (d7 > 0.0d) {
                        marker3.setTitle(df.format(d7) + TraceFormat.STR_ERROR);
                    } else {
                        marker3.setTitle(df.format(d7) + TraceFormat.STR_WARN);
                    }
                    marker3.setIcon(null);
                    marker3.setPosition(new GeoPoint(latSouth + incrementor, d7));
                    folderOverlay.add(marker3);
                }
                while (d3 < 180.0d) {
                    Marker marker4 = new Marker(mapView);
                    applyMarkerAttributes(marker4);
                    marker4.setRotation(-90.0f);
                    if (d3 > 0.0d) {
                        marker4.setTitle(df.format(d3) + TraceFormat.STR_ERROR);
                    } else {
                        marker4.setTitle(df.format(d3) + TraceFormat.STR_WARN);
                    }
                    marker4.setIcon(null);
                    marker4.setPosition(new GeoPoint(latSouth + incrementor, d3));
                    folderOverlay.add(marker4);
                    d3 += incrementor;
                }
            }
        }
        return folderOverlay;
    }

    private static double[] getStartEndPointsNS(double d, double d2, int i) {
        double d3;
        double d4;
        if (i < 10) {
            double floor = Math.floor(d2);
            double incrementor = getIncrementor(i);
            double d5 = -90.0d;
            while (d5 < floor) {
                d5 += incrementor;
            }
            double d6 = 90.0d;
            while (d6 > Math.ceil(d)) {
                d6 -= incrementor;
            }
            if (d6 > 90.0d) {
                d4 = 90.0d;
            } else {
                d4 = d6;
            }
            if (d5 < -90.0d) {
                d5 = -90.0d;
            }
            return new double[]{d5, d4};
        }
        double d7 = -90.0d;
        if (d2 > 0.0d) {
            d7 = 0.0d;
        }
        double d8 = 90.0d;
        if (d < 0.0d) {
            d8 = 0.0d;
        }
        int i2 = 2;
        double d9 = d8;
        while (i2 <= i) {
            double incrementor2 = getIncrementor(i2);
            while (d3 < d2 - incrementor2) {
                double d10 = d3 + incrementor2;
                if (DEBUG) {
                    System.out.println("south " + d10);
                    d3 = d10;
                } else {
                    d3 = d10;
                }
            }
            double d11 = d9;
            while (d11 > d + incrementor2) {
                d11 -= incrementor2;
                if (DEBUG) {
                    System.out.println("north " + d11);
                }
            }
            i2++;
            d9 = d11;
        }
        return new double[]{d3, d9};
    }

    private static double[] getStartEndPointsWE(double d, double d2, int i) {
        double d3;
        double incrementor = getIncrementor(i);
        if (i < 10) {
            double d4 = 180.0d;
            while (d4 > Math.floor(d)) {
                d4 -= incrementor;
            }
            double ceil = Math.ceil(d2);
            for (double d5 = -180.0d; d5 < ceil; d5 += incrementor) {
            }
            if (d4 < -180.0d) {
                d3 = -180.0d;
            } else {
                d3 = d4;
            }
            if (ceil > 180.0d) {
                ceil = 180.0d;
            }
            return new double[]{ceil, d3};
        }
        double d6 = -180.0d;
        if (d > 0.0d) {
            d6 = 0.0d;
        }
        double d7 = 180.0d;
        if (d2 < 0.0d) {
            d7 = 0.0d;
        }
        int i2 = 2;
        double d8 = d6;
        double d9 = d7;
        while (i2 <= i) {
            double incrementor2 = getIncrementor(i2);
            while (d9 > d2 + incrementor2) {
                d9 -= incrementor2;
            }
            double d10 = d8;
            while (d10 < d - incrementor2) {
                d10 += incrementor2;
                if (DEBUG) {
                    System.out.println("west " + d10);
                }
            }
            i2++;
            d8 = d10;
        }
        if (DEBUG) {
            System.out.println("return EW set as " + d8 + Token.SEPARATOR + d9);
        }
        return new double[]{d9, d8};
    }

    private static double getIncrementor(int i) {
        switch (i) {
            case 0:
            case 1:
                return 30.0d * ((double) multiplier);
            case 2:
                return 15.0d * ((double) multiplier);
            case 3:
                return 9.0d * ((double) multiplier);
            case 4:
                return 6.0d * ((double) multiplier);
            case 5:
                return 3.0d * ((double) multiplier);
            case 6:
                return 2.0d * ((double) multiplier);
            case 7:
                return 1.0d * ((double) multiplier);
            case 8:
                return 0.5d * ((double) multiplier);
            case 9:
                return 0.25d * ((double) multiplier);
            case 10:
                return 0.1d * ((double) multiplier);
            case 11:
                return 0.05d * ((double) multiplier);
            case 12:
                return 0.025d * ((double) multiplier);
            case 13:
                return 0.0125d * ((double) multiplier);
            case 14:
                return 0.00625d * ((double) multiplier);
            case 15:
                return 0.003125d * ((double) multiplier);
            case 16:
                return 0.0015625d * ((double) multiplier);
            case 17:
                return 7.8125E-4d * ((double) multiplier);
            case 18:
                return 3.90625E-4d * ((double) multiplier);
            case 19:
                return 1.953125E-4d * ((double) multiplier);
            case 20:
                return 9.765625E-5d * ((double) multiplier);
            case 21:
                return 4.8828125E-5d * ((double) multiplier);
            default:
                return 2.44140625E-5d * ((double) multiplier);
        }
    }

    public static void setDefaults() {
        lineColor = ViewCompat.MEASURED_STATE_MASK;
        fontColor = -1;
        backgroundColor = ViewCompat.MEASURED_STATE_MASK;
        lineWidth = 1.0f;
        fontSizeDp = 32;
        DEBUG = false;
        DEBUG2 = false;
    }
}
