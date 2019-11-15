package com.amap.api.services.poisearch;

import android.content.Context;
import com.amap.api.col.sl.bh;
import com.amap.api.col.sl.bo;
import com.amap.api.col.sl.cy;
import com.amap.api.col.sl.s;
import com.amap.api.col.sl.t;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.core.PoiItem;
import com.amap.api.services.interfaces.IPoiSearch;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.List;

public class PoiSearch {
    public static final String CHINESE = "zh-CN";
    public static final String ENGLISH = "en";
    private IPoiSearch a = null;

    public interface OnPoiSearchListener {
        void onPoiItemSearched(PoiItem poiItem, int i);

        void onPoiSearched(PoiResult poiResult, int i);
    }

    public static class Query implements Cloneable {
        private String a;
        private String b;
        private String c;
        private int d;
        private int e;
        private String f;
        private boolean g;
        private boolean h;
        private String i;
        private boolean j;
        private LatLonPoint k;

        public Query(String str, String str2) {
            this(str, str2, null);
        }

        public Query(String str, String str2, String str3) {
            this.d = 1;
            this.e = 20;
            this.f = "zh-CN";
            this.g = false;
            this.h = false;
            this.j = true;
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public String getBuilding() {
            return this.i;
        }

        public void setBuilding(String str) {
            this.i = str;
        }

        public String getQueryString() {
            return this.a;
        }

        public void setQueryLanguage(String str) {
            if ("en".equals(str)) {
                this.f = "en";
            } else {
                this.f = "zh-CN";
            }
        }

        /* access modifiers changed from: protected */
        public String getQueryLanguage() {
            return this.f;
        }

        public String getCategory() {
            if (this.b == null || this.b.equals("00") || this.b.equals("00|")) {
                return "";
            }
            return this.b;
        }

        public String getCity() {
            return this.c;
        }

        public int getPageNum() {
            return this.d;
        }

        public void setPageNum(int i2) {
            if (i2 <= 0) {
                i2 = 1;
            }
            this.d = i2;
        }

        public void setPageSize(int i2) {
            if (i2 <= 0) {
                this.e = 20;
            } else if (i2 > 30) {
                this.e = 30;
            } else {
                this.e = i2;
            }
        }

        public int getPageSize() {
            return this.e;
        }

        public void setCityLimit(boolean z) {
            this.g = z;
        }

        public boolean getCityLimit() {
            return this.g;
        }

        public void requireSubPois(boolean z) {
            this.h = z;
        }

        public boolean isRequireSubPois() {
            return this.h;
        }

        public boolean isDistanceSort() {
            return this.j;
        }

        public void setDistanceSort(boolean z) {
            this.j = z;
        }

        public LatLonPoint getLocation() {
            return this.k;
        }

        public void setLocation(LatLonPoint latLonPoint) {
            this.k = latLonPoint;
        }

        public boolean queryEquals(Query query) {
            if (query == null) {
                return false;
            }
            if (query == this) {
                return true;
            }
            if (!PoiSearch.a(query.a, this.a) || !PoiSearch.a(query.b, this.b) || !PoiSearch.a(query.f, this.f) || !PoiSearch.a(query.c, this.c) || query.g != this.g || query.i != this.i || query.e != this.e || query.j != this.j) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            int i2;
            int i3 = 1231;
            int i4 = 0;
            int hashCode = ((this.c == null ? 0 : this.c.hashCode()) + (((this.b == null ? 0 : this.b.hashCode()) + 31) * 31)) * 31;
            if (this.g) {
                i2 = 1231;
            } else {
                i2 = 1237;
            }
            int i5 = (i2 + hashCode) * 31;
            if (!this.h) {
                i3 = 1237;
            }
            int hashCode2 = ((this.a == null ? 0 : this.a.hashCode()) + (((((((this.f == null ? 0 : this.f.hashCode()) + ((i5 + i3) * 31)) * 31) + this.d) * 31) + this.e) * 31)) * 31;
            if (this.i != null) {
                i4 = this.i.hashCode();
            }
            return hashCode2 + i4;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null) {
                return false;
            }
            if (getClass() != obj.getClass()) {
                return false;
            }
            Query query = (Query) obj;
            if (this.b == null) {
                if (query.b != null) {
                    return false;
                }
            } else if (!this.b.equals(query.b)) {
                return false;
            }
            if (this.c == null) {
                if (query.c != null) {
                    return false;
                }
            } else if (!this.c.equals(query.c)) {
                return false;
            }
            if (this.f == null) {
                if (query.f != null) {
                    return false;
                }
            } else if (!this.f.equals(query.f)) {
                return false;
            }
            if (this.d != query.d) {
                return false;
            }
            if (this.e != query.e) {
                return false;
            }
            if (this.a == null) {
                if (query.a != null) {
                    return false;
                }
            } else if (!this.a.equals(query.a)) {
                return false;
            }
            if (this.i == null) {
                if (query.i != null) {
                    return false;
                }
            } else if (!this.i.equals(query.i)) {
                return false;
            }
            if (this.g != query.g) {
                return false;
            }
            if (this.h != query.h) {
                return false;
            }
            return true;
        }

        public Query clone() {
            try {
                super.clone();
            } catch (CloneNotSupportedException e2) {
                t.a(e2, "PoiSearch", "queryclone");
            }
            Query query = new Query(this.a, this.b, this.c);
            query.setPageNum(this.d);
            query.setPageSize(this.e);
            query.setQueryLanguage(this.f);
            query.setCityLimit(this.g);
            query.requireSubPois(this.h);
            query.setBuilding(this.i);
            query.setLocation(this.k);
            query.setDistanceSort(this.j);
            return query;
        }
    }

    public static class SearchBound implements Cloneable {
        public static final String BOUND_SHAPE = "Bound";
        public static final String ELLIPSE_SHAPE = "Ellipse";
        public static final String POLYGON_SHAPE = "Polygon";
        public static final String RECTANGLE_SHAPE = "Rectangle";
        private LatLonPoint a;
        private LatLonPoint b;
        private int c;
        private LatLonPoint d;
        private String e;
        private boolean f;
        private List<LatLonPoint> g;

        public SearchBound(LatLonPoint latLonPoint, int i) {
            this.c = 3000;
            this.f = true;
            this.e = "Bound";
            this.c = i;
            this.d = latLonPoint;
        }

        public SearchBound(LatLonPoint latLonPoint, int i, boolean z) {
            this.c = 3000;
            this.f = true;
            this.e = "Bound";
            this.c = i;
            this.d = latLonPoint;
            this.f = z;
        }

        public SearchBound(LatLonPoint latLonPoint, LatLonPoint latLonPoint2) {
            this.c = 3000;
            this.f = true;
            this.e = "Rectangle";
            this.a = latLonPoint;
            this.b = latLonPoint2;
            if (this.a.getLatitude() >= this.b.getLatitude() || this.a.getLongitude() >= this.b.getLongitude()) {
                ThrowableExtension.printStackTrace(new IllegalArgumentException("invalid rect "));
            }
            this.d = new LatLonPoint((this.a.getLatitude() + this.b.getLatitude()) / 2.0d, (this.a.getLongitude() + this.b.getLongitude()) / 2.0d);
        }

        public SearchBound(List<LatLonPoint> list) {
            this.c = 3000;
            this.f = true;
            this.e = "Polygon";
            this.g = list;
        }

        private SearchBound(LatLonPoint latLonPoint, LatLonPoint latLonPoint2, int i, LatLonPoint latLonPoint3, String str, List<LatLonPoint> list, boolean z) {
            this.c = 3000;
            this.f = true;
            this.a = latLonPoint;
            this.b = latLonPoint2;
            this.c = i;
            this.d = latLonPoint3;
            this.e = str;
            this.g = list;
            this.f = z;
        }

        public LatLonPoint getLowerLeft() {
            return this.a;
        }

        public LatLonPoint getUpperRight() {
            return this.b;
        }

        public LatLonPoint getCenter() {
            return this.d;
        }

        public int getRange() {
            return this.c;
        }

        public String getShape() {
            return this.e;
        }

        public boolean isDistanceSort() {
            return this.f;
        }

        public List<LatLonPoint> getPolyGonList() {
            return this.g;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((this.g == null ? 0 : this.g.hashCode()) + (((this.b == null ? 0 : this.b.hashCode()) + (((this.a == null ? 0 : this.a.hashCode()) + (((this.f ? 1231 : 1237) + (((this.d == null ? 0 : this.d.hashCode()) + 31) * 31)) * 31)) * 31)) * 31)) * 31) + this.c) * 31;
            if (this.e != null) {
                i = this.e.hashCode();
            }
            return hashCode + i;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null) {
                return false;
            }
            if (getClass() != obj.getClass()) {
                return false;
            }
            SearchBound searchBound = (SearchBound) obj;
            if (this.d == null) {
                if (searchBound.d != null) {
                    return false;
                }
            } else if (!this.d.equals(searchBound.d)) {
                return false;
            }
            if (this.f != searchBound.f) {
                return false;
            }
            if (this.a == null) {
                if (searchBound.a != null) {
                    return false;
                }
            } else if (!this.a.equals(searchBound.a)) {
                return false;
            }
            if (this.b == null) {
                if (searchBound.b != null) {
                    return false;
                }
            } else if (!this.b.equals(searchBound.b)) {
                return false;
            }
            if (this.g == null) {
                if (searchBound.g != null) {
                    return false;
                }
            } else if (!this.g.equals(searchBound.g)) {
                return false;
            }
            if (this.c != searchBound.c) {
                return false;
            }
            if (this.e == null) {
                if (searchBound.e != null) {
                    return false;
                }
                return true;
            } else if (!this.e.equals(searchBound.e)) {
                return false;
            } else {
                return true;
            }
        }

        public SearchBound clone() {
            try {
                super.clone();
            } catch (CloneNotSupportedException e2) {
                t.a(e2, "PoiSearch", "SearchBoundClone");
            }
            return new SearchBound(this.a, this.b, this.c, this.d, this.e, this.g, this.f);
        }
    }

    static /* synthetic */ boolean a(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return str.equals(str2);
    }

    public PoiSearch(Context context, Query query) {
        try {
            Context context2 = context;
            this.a = (IPoiSearch) cy.a(context2, s.a(true), "com.amap.api.services.dynamic.PoiSearchWrapper", bh.class, new Class[]{Context.class, Query.class}, new Object[]{context, query});
        } catch (bo e) {
            ThrowableExtension.printStackTrace(e);
        }
        if (this.a == null) {
            try {
                this.a = new bh(context, query);
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public void setOnPoiSearchListener(OnPoiSearchListener onPoiSearchListener) {
        if (this.a != null) {
            this.a.setOnPoiSearchListener(onPoiSearchListener);
        }
    }

    public void setLanguage(String str) {
        if (this.a != null) {
            this.a.setLanguage(str);
        }
    }

    public String getLanguage() {
        if (this.a != null) {
            return this.a.getLanguage();
        }
        return null;
    }

    public PoiResult searchPOI() throws AMapException {
        if (this.a != null) {
            return this.a.searchPOI();
        }
        return null;
    }

    public void searchPOIAsyn() {
        if (this.a != null) {
            this.a.searchPOIAsyn();
        }
    }

    public PoiItem searchPOIId(String str) throws AMapException {
        if (this.a != null) {
            return this.a.searchPOIId(str);
        }
        return null;
    }

    public void searchPOIIdAsyn(String str) {
        if (this.a != null) {
            this.a.searchPOIIdAsyn(str);
        }
    }

    public void setQuery(Query query) {
        if (this.a != null) {
            this.a.setQuery(query);
        }
    }

    public void setBound(SearchBound searchBound) {
        if (this.a != null) {
            this.a.setBound(searchBound);
        }
    }

    public Query getQuery() {
        if (this.a != null) {
            return this.a.getQuery();
        }
        return null;
    }

    public SearchBound getBound() {
        if (this.a != null) {
            return this.a.getBound();
        }
        return null;
    }
}
