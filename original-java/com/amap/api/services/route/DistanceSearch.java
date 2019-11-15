package com.amap.api.services.route;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.col.sl.bc;
import com.amap.api.col.sl.bo;
import com.amap.api.col.sl.cy;
import com.amap.api.col.sl.s;
import com.amap.api.col.sl.t;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.interfaces.IDistanceSearch;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.ArrayList;
import java.util.List;

public class DistanceSearch {
    public static final int TYPE_DISTANCE = 0;
    public static final int TYPE_DRIVING_DISTANCE = 1;
    private IDistanceSearch a;

    public static class DistanceQuery implements Parcelable, Cloneable {
        public static final Creator<DistanceQuery> CREATOR = new Creator<DistanceQuery>() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new DistanceQuery(parcel);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new DistanceQuery[i];
            }
        };
        private int a = 1;
        private List<LatLonPoint> b = new ArrayList();
        private LatLonPoint c;

        public DistanceQuery() {
        }

        protected DistanceQuery(Parcel parcel) {
            this.a = parcel.readInt();
            this.b = parcel.createTypedArrayList(LatLonPoint.CREATOR);
            this.c = (LatLonPoint) parcel.readParcelable(LatLonPoint.class.getClassLoader());
        }

        public DistanceQuery clone() {
            try {
                super.clone();
            } catch (CloneNotSupportedException e) {
                t.a(e, "DistanceSearch", "DistanceQueryclone");
            }
            DistanceQuery distanceQuery = new DistanceQuery();
            distanceQuery.setType(this.a);
            distanceQuery.setOrigins(this.b);
            distanceQuery.setDestination(this.c);
            return distanceQuery;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.a);
            parcel.writeTypedList(this.b);
            parcel.writeParcelable(this.c, i);
        }

        public int getType() {
            return this.a;
        }

        public List<LatLonPoint> getOrigins() {
            return this.b;
        }

        public LatLonPoint getDestination() {
            return this.c;
        }

        public void setType(int i) {
            this.a = i;
        }

        public void setOrigins(List<LatLonPoint> list) {
            if (list != null) {
                this.b = list;
            }
        }

        public void addOrigins(LatLonPoint... latLonPointArr) {
            for (LatLonPoint latLonPoint : latLonPointArr) {
                if (latLonPoint != null) {
                    this.b.add(latLonPoint);
                }
            }
        }

        public void setDestination(LatLonPoint latLonPoint) {
            this.c = latLonPoint;
        }
    }

    public interface OnDistanceSearchListener {
        void onDistanceSearched(DistanceResult distanceResult, int i);
    }

    public DistanceSearch(Context context) {
        try {
            Context context2 = context;
            this.a = (IDistanceSearch) cy.a(context2, s.a(true), "com.amap.api.services.dynamic.DistanceSearchWrapper", bc.class, new Class[]{Context.class}, new Object[]{context});
        } catch (bo e) {
            ThrowableExtension.printStackTrace(e);
        }
        if (this.a == null) {
            try {
                this.a = new bc(context);
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public void setDistanceSearchListener(OnDistanceSearchListener onDistanceSearchListener) {
        if (this.a != null) {
            this.a.setDistanceSearchListener(onDistanceSearchListener);
        }
    }

    public DistanceResult calculateRouteDistance(DistanceQuery distanceQuery) throws AMapException {
        if (this.a != null) {
            return this.a.calculateRouteDistance(distanceQuery);
        }
        return null;
    }

    public void calculateRouteDistanceAsyn(DistanceQuery distanceQuery) {
        if (this.a != null) {
            this.a.calculateRouteDistanceAsyn(distanceQuery);
        }
    }
}
