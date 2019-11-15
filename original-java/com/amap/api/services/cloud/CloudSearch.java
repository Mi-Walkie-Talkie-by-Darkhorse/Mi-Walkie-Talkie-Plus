package com.amap.api.services.cloud;

import android.content.Context;
import com.amap.api.col.sl.aj;
import com.amap.api.col.sl.bb;
import com.amap.api.col.sl.bo;
import com.amap.api.col.sl.cy;
import com.amap.api.col.sl.s;
import com.amap.api.col.sl.t;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.interfaces.ICloudSearch;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.xiaomi.mipush.sdk.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

public class CloudSearch {
    private ICloudSearch a;

    public interface OnCloudSearchListener {
        void onCloudItemDetailSearched(CloudItemDetail cloudItemDetail, int i);

        void onCloudSearched(CloudResult cloudResult, int i);
    }

    public static class Query implements Cloneable {
        private String a;
        private int b = 1;
        private int c = 20;
        private String d;
        private SearchBound e;
        private Sortingrules f;
        private ArrayList<aj> g = new ArrayList<>();
        private HashMap<String, String> h = new HashMap<>();

        public Query(String str, String str2, SearchBound searchBound) throws AMapException {
            if (t.a(str) || searchBound == null) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            }
            this.d = str;
            this.a = str2;
            this.e = searchBound;
        }

        private Query() {
        }

        public String getQueryString() {
            return this.a;
        }

        public void setTableID(String str) {
            this.d = str;
        }

        public String getTableID() {
            return this.d;
        }

        public int getPageNum() {
            return this.b;
        }

        public void setPageNum(int i) {
            this.b = i;
        }

        public void setPageSize(int i) {
            if (i <= 0) {
                this.c = 20;
            } else if (i > 100) {
                this.c = 100;
            } else {
                this.c = i;
            }
        }

        public int getPageSize() {
            return this.c;
        }

        public void setBound(SearchBound searchBound) {
            this.e = searchBound;
        }

        public SearchBound getBound() {
            return this.e;
        }

        public void addFilterString(String str, String str2) {
            this.h.put(str, str2);
        }

        public String getFilterString() {
            StringBuffer stringBuffer = new StringBuffer();
            try {
                for (Entry entry : this.h.entrySet()) {
                    stringBuffer.append(entry.getKey().toString()).append(":").append(entry.getValue().toString()).append("+");
                }
                if (stringBuffer.length() > 0) {
                    stringBuffer.deleteCharAt(stringBuffer.length() - 1);
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
            return stringBuffer.toString();
        }

        public void addFilterNum(String str, String str2, String str3) {
            this.g.add(new aj(str, str2, str3));
        }

        public String getFilterNumString() {
            StringBuffer stringBuffer = new StringBuffer();
            try {
                Iterator it = this.g.iterator();
                while (it.hasNext()) {
                    aj ajVar = (aj) it.next();
                    stringBuffer.append(ajVar.a());
                    stringBuffer.append(":[");
                    stringBuffer.append(ajVar.b());
                    stringBuffer.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                    stringBuffer.append(ajVar.c());
                    stringBuffer.append("]");
                    stringBuffer.append("+");
                }
                if (stringBuffer.length() > 0) {
                    stringBuffer.deleteCharAt(stringBuffer.length() - 1);
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
            return stringBuffer.toString();
        }

        public void setSortingrules(Sortingrules sortingrules) {
            this.f = sortingrules;
        }

        public Sortingrules getSortingrules() {
            return this.f;
        }

        public boolean queryEquals(Query query) {
            if (query == null) {
                return false;
            }
            if (query == this) {
                return true;
            }
            if (!CloudSearch.a(query.a, this.a) || !CloudSearch.a(query.getTableID(), getTableID()) || !CloudSearch.a(query.getFilterString(), getFilterString()) || !CloudSearch.a(query.getFilterNumString(), getFilterNumString()) || query.c != this.c) {
                return false;
            }
            SearchBound bound = query.getBound();
            SearchBound bound2 = getBound();
            boolean equals = (bound == null && bound2 == null) ? true : (bound == null || bound2 == null) ? false : bound.equals(bound2);
            if (!equals) {
                return false;
            }
            Sortingrules sortingrules = query.getSortingrules();
            Sortingrules sortingrules2 = getSortingrules();
            boolean equals2 = (sortingrules == null && sortingrules2 == null) ? true : (sortingrules == null || sortingrules2 == null) ? false : sortingrules.equals(sortingrules2);
            if (equals2) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int hashCode5;
            int i = 0;
            if (this.g == null) {
                hashCode = 0;
            } else {
                hashCode = this.g.hashCode();
            }
            int i2 = (hashCode + 31) * 31;
            if (this.h == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = this.h.hashCode();
            }
            int i3 = (hashCode2 + i2) * 31;
            if (this.e == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = this.e.hashCode();
            }
            int i4 = (((((hashCode3 + i3) * 31) + this.b) * 31) + this.c) * 31;
            if (this.a == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = this.a.hashCode();
            }
            int i5 = (hashCode4 + i4) * 31;
            if (this.f == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = this.f.hashCode();
            }
            int i6 = (hashCode5 + i5) * 31;
            if (this.d != null) {
                i = this.d.hashCode();
            }
            return i6 + i;
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof Query)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            Query query = (Query) obj;
            if (!queryEquals(query) || query.b != this.b) {
                return false;
            }
            return true;
        }

        /* JADX WARNING: Removed duplicated region for block: B:14:0x0030  */
        /* JADX WARNING: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public com.amap.api.services.cloud.CloudSearch.Query clone() {
            /*
                r5 = this;
                r2 = 0
                super.clone()     // Catch:{ CloneNotSupportedException -> 0x0036 }
            L_0x0004:
                com.amap.api.services.cloud.CloudSearch$Query r1 = new com.amap.api.services.cloud.CloudSearch$Query     // Catch:{ AMapException -> 0x0057 }
                java.lang.String r0 = r5.d     // Catch:{ AMapException -> 0x0057 }
                java.lang.String r3 = r5.a     // Catch:{ AMapException -> 0x0057 }
                com.amap.api.services.cloud.CloudSearch$SearchBound r4 = r5.e     // Catch:{ AMapException -> 0x0057 }
                r1.<init>(r0, r3, r4)     // Catch:{ AMapException -> 0x0057 }
                int r0 = r5.b     // Catch:{ AMapException -> 0x0046 }
                r1.setPageNum(r0)     // Catch:{ AMapException -> 0x0046 }
                int r0 = r5.c     // Catch:{ AMapException -> 0x0046 }
                r1.setPageSize(r0)     // Catch:{ AMapException -> 0x0046 }
                com.amap.api.services.cloud.CloudSearch$Sortingrules r0 = r5.getSortingrules()     // Catch:{ AMapException -> 0x0046 }
                r1.setSortingrules(r0)     // Catch:{ AMapException -> 0x0046 }
                java.util.ArrayList<com.amap.api.col.sl.aj> r0 = r5.g     // Catch:{ AMapException -> 0x0046 }
                if (r0 != 0) goto L_0x003b
                r0 = r2
            L_0x0025:
                r1.g = r0     // Catch:{ AMapException -> 0x0046 }
                java.util.HashMap<java.lang.String, java.lang.String> r0 = r5.h     // Catch:{ AMapException -> 0x0046 }
                if (r0 != 0) goto L_0x004c
            L_0x002b:
                r1.h = r2     // Catch:{ AMapException -> 0x0046 }
                r0 = r1
            L_0x002e:
                if (r0 != 0) goto L_0x0035
                com.amap.api.services.cloud.CloudSearch$Query r0 = new com.amap.api.services.cloud.CloudSearch$Query
                r0.<init>()
            L_0x0035:
                return r0
            L_0x0036:
                r0 = move-exception
                com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                goto L_0x0004
            L_0x003b:
                java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ AMapException -> 0x0046 }
                r0.<init>()     // Catch:{ AMapException -> 0x0046 }
                java.util.ArrayList<com.amap.api.col.sl.aj> r3 = r5.g     // Catch:{ AMapException -> 0x0046 }
                r0.addAll(r3)     // Catch:{ AMapException -> 0x0046 }
                goto L_0x0025
            L_0x0046:
                r0 = move-exception
            L_0x0047:
                com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                r0 = r1
                goto L_0x002e
            L_0x004c:
                java.util.HashMap r2 = new java.util.HashMap     // Catch:{ AMapException -> 0x0046 }
                r2.<init>()     // Catch:{ AMapException -> 0x0046 }
                java.util.HashMap<java.lang.String, java.lang.String> r0 = r5.h     // Catch:{ AMapException -> 0x0046 }
                r2.putAll(r0)     // Catch:{ AMapException -> 0x0046 }
                goto L_0x002b
            L_0x0057:
                r0 = move-exception
                r1 = r2
                goto L_0x0047
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amap.api.services.cloud.CloudSearch.Query.clone():com.amap.api.services.cloud.CloudSearch$Query");
        }
    }

    public static class SearchBound implements Cloneable {
        public static final String BOUND_SHAPE = "Bound";
        public static final String LOCAL_SHAPE = "Local";
        public static final String POLYGON_SHAPE = "Polygon";
        public static final String RECTANGLE_SHAPE = "Rectangle";
        private LatLonPoint a;
        private LatLonPoint b;
        private int c;
        private LatLonPoint d;
        private String e;
        private List<LatLonPoint> f;
        private String g;

        public SearchBound(LatLonPoint latLonPoint, int i) {
            this.e = "Bound";
            this.c = i;
            this.d = latLonPoint;
        }

        public SearchBound(LatLonPoint latLonPoint, LatLonPoint latLonPoint2) {
            boolean z = false;
            this.e = "Rectangle";
            this.a = latLonPoint;
            this.b = latLonPoint2;
            if (this.a != null && this.b != null && this.a.getLatitude() < this.b.getLatitude() && this.a.getLongitude() < this.b.getLongitude()) {
                z = true;
            }
            if (!z) {
                ThrowableExtension.printStackTrace(new IllegalArgumentException("invalid rect "));
            }
        }

        public SearchBound(List<LatLonPoint> list) {
            this.e = "Polygon";
            this.f = list;
        }

        public SearchBound(String str) {
            this.e = LOCAL_SHAPE;
            this.g = str;
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

        public String getCity() {
            return this.g;
        }

        public List<LatLonPoint> getPolyGonList() {
            return this.f;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int i = 0;
            if (this.d == null) {
                hashCode = 0;
            } else {
                hashCode = this.d.hashCode();
            }
            int i2 = (hashCode + 31) * 31;
            if (this.a == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = this.a.hashCode();
            }
            int i3 = (hashCode2 + i2) * 31;
            if (this.b == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = this.b.hashCode();
            }
            int i4 = (hashCode3 + i3) * 31;
            if (this.f == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = this.f.hashCode();
            }
            int hashCode5 = ((this.e == null ? 0 : this.e.hashCode()) + ((((hashCode4 + i4) * 31) + this.c) * 31)) * 31;
            if (this.g != null) {
                i = this.g.hashCode();
            }
            return hashCode5 + i;
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof SearchBound)) {
                return false;
            }
            SearchBound searchBound = (SearchBound) obj;
            if (!getShape().equalsIgnoreCase(searchBound.getShape())) {
                return false;
            }
            if (getShape().equals("Bound")) {
                return searchBound.d.equals(this.d) && searchBound.c == this.c;
            }
            if (getShape().equals("Polygon")) {
                List<LatLonPoint> list = searchBound.f;
                List<LatLonPoint> list2 = this.f;
                if (list == null && list2 == null) {
                    return true;
                }
                if (!(list == null || list2 == null || list.size() != list2.size())) {
                    int size = list.size();
                    int i = 0;
                    while (i < size) {
                        if (((LatLonPoint) list.get(i)).equals(list2.get(i))) {
                            i++;
                        }
                    }
                    return true;
                }
                return false;
            } else if (getShape().equals(LOCAL_SHAPE)) {
                return searchBound.g.equals(this.g);
            } else {
                return searchBound.a.equals(this.a) && searchBound.b.equals(this.b);
            }
        }

        private List<LatLonPoint> a() {
            if (this.f == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (LatLonPoint latLonPoint : this.f) {
                arrayList.add(new LatLonPoint(latLonPoint.getLatitude(), latLonPoint.getLongitude()));
            }
            return arrayList;
        }

        public SearchBound clone() {
            try {
                super.clone();
            } catch (CloneNotSupportedException e2) {
                ThrowableExtension.printStackTrace(e2);
            }
            if (getShape().equals("Bound")) {
                return new SearchBound(this.d, this.c);
            }
            if (getShape().equals("Polygon")) {
                return new SearchBound(a());
            }
            if (getShape().equals(LOCAL_SHAPE)) {
                return new SearchBound(this.g);
            }
            return new SearchBound(this.a, this.b);
        }
    }

    public static class Sortingrules {
        public static final int DISTANCE = 1;
        public static final int WEIGHT = 0;
        private int a = 0;
        private String b;
        private boolean c = true;

        public Sortingrules(String str, boolean z) {
            this.b = str;
            this.c = z;
        }

        public Sortingrules(int i) {
            this.a = i;
        }

        public String toString() {
            String str = "";
            if (t.a(this.b)) {
                if (this.a == 0) {
                    return "_weight";
                }
                if (this.a == 1) {
                    return "_distance";
                }
                return str;
            } else if (this.c) {
                return this.b + ":1";
            } else {
                return this.b + ":0";
            }
        }

        public int hashCode() {
            return (((this.b == null ? 0 : this.b.hashCode()) + (((this.c ? 1231 : 1237) + 31) * 31)) * 31) + this.a;
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
            Sortingrules sortingrules = (Sortingrules) obj;
            if (this.c != sortingrules.c) {
                return false;
            }
            if (this.b == null) {
                if (sortingrules.b != null) {
                    return false;
                }
            } else if (!this.b.equals(sortingrules.b)) {
                return false;
            }
            if (this.a != sortingrules.a) {
                return false;
            }
            return true;
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

    public CloudSearch(Context context) {
        try {
            Context context2 = context;
            this.a = (ICloudSearch) cy.a(context2, s.a(true), "com.amap.api.services.dynamic.CloudSearchWrapper", bb.class, new Class[]{Context.class}, new Object[]{context});
        } catch (bo e) {
            ThrowableExtension.printStackTrace(e);
        }
        if (this.a == null) {
            try {
                this.a = new bb(context);
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public void setOnCloudSearchListener(OnCloudSearchListener onCloudSearchListener) {
        if (this.a != null) {
            this.a.setOnCloudSearchListener(onCloudSearchListener);
        }
    }

    public void searchCloudAsyn(Query query) {
        if (this.a != null) {
            this.a.searchCloudAsyn(query);
        }
    }

    public void searchCloudDetailAsyn(String str, String str2) {
        if (this.a != null) {
            this.a.searchCloudDetailAsyn(str, str2);
        }
    }
}
