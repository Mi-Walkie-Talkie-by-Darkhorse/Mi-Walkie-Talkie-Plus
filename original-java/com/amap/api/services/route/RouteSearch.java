package com.amap.api.services.route;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.col.sl.bj;
import com.amap.api.col.sl.bo;
import com.amap.api.col.sl.cy;
import com.amap.api.col.sl.s;
import com.amap.api.col.sl.t;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.interfaces.IRouteSearch;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.xiaomi.mipush.sdk.Constants;
import java.util.ArrayList;
import java.util.List;

public class RouteSearch {
    public static final int BUS_COMFORTABLE = 4;
    public static final int BUS_DEFAULT = 0;
    public static final int BUS_LEASE_CHANGE = 2;
    public static final int BUS_LEASE_WALK = 3;
    public static final int BUS_NO_SUBWAY = 5;
    public static final int BUS_SAVE_MONEY = 1;
    public static final int BusComfortable = 4;
    public static final int BusDefault = 0;
    public static final int BusLeaseChange = 2;
    public static final int BusLeaseWalk = 3;
    public static final int BusNoSubway = 5;
    public static final int BusSaveMoney = 1;
    public static final int DRIVING_MULTI_CHOICE_AVOID_CONGESTION = 12;
    public static final int DRIVING_MULTI_CHOICE_AVOID_CONGESTION_NO_HIGHWAY = 15;
    public static final int DRIVING_MULTI_CHOICE_AVOID_CONGESTION_NO_HIGHWAY_SAVE_MONEY = 18;
    public static final int DRIVING_MULTI_CHOICE_AVOID_CONGESTION_SAVE_MONEY = 17;
    public static final int DRIVING_MULTI_CHOICE_HIGHWAY = 19;
    public static final int DRIVING_MULTI_CHOICE_HIGHWAY_AVOID_CONGESTION = 20;
    public static final int DRIVING_MULTI_CHOICE_NO_HIGHWAY = 13;
    public static final int DRIVING_MULTI_CHOICE_SAVE_MONEY = 14;
    public static final int DRIVING_MULTI_CHOICE_SAVE_MONEY_NO_HIGHWAY = 16;
    public static final int DRIVING_MULTI_STRATEGY_FASTEST_SAVE_MONEY_SHORTEST = 5;
    public static final int DRIVING_MULTI_STRATEGY_FASTEST_SHORTEST = 11;
    public static final int DRIVING_MULTI_STRATEGY_FASTEST_SHORTEST_AVOID_CONGESTION = 10;
    public static final int DRIVING_SINGLE_AVOID_CONGESTION = 4;
    public static final int DRIVING_SINGLE_DEFAULT = 0;
    public static final int DRIVING_SINGLE_NO_EXPRESSWAYS = 3;
    public static final int DRIVING_SINGLE_NO_HIGHWAY = 6;
    public static final int DRIVING_SINGLE_NO_HIGHWAY_SAVE_MONEY = 7;
    public static final int DRIVING_SINGLE_NO_HIGHWAY_SAVE_MONEY_AVOID_CONGESTION = 9;
    public static final int DRIVING_SINGLE_SAVE_MONEY = 1;
    public static final int DRIVING_SINGLE_SAVE_MONEY_AVOID_CONGESTION = 8;
    public static final int DRIVING_SINGLE_SHORTEST = 2;
    public static final int DrivingAvoidCongestion = 4;
    public static final int DrivingDefault = 0;
    public static final int DrivingMultiStrategy = 5;
    public static final int DrivingNoExpressways = 3;
    public static final int DrivingNoHighAvoidCongestionSaveMoney = 9;
    public static final int DrivingNoHighWay = 6;
    public static final int DrivingNoHighWaySaveMoney = 7;
    public static final int DrivingSaveMoney = 1;
    public static final int DrivingSaveMoneyAvoidCongestion = 8;
    public static final int DrivingShortDistance = 2;
    public static final int RIDING_DEFAULT = 0;
    public static final int RIDING_FAST = 2;
    public static final int RIDING_RECOMMEND = 1;
    public static final int RidingDefault = 0;
    public static final int RidingFast = 2;
    public static final int RidingRecommend = 1;
    public static final int TRUCK_AVOID_CONGESTION = 1;
    public static final int TRUCK_AVOID_CONGESTION_CHOICE_HIGHWAY = 9;
    public static final int TRUCK_AVOID_CONGESTION_NO_HIGHWAY = 4;
    public static final int TRUCK_AVOID_CONGESTION__SAVE_MONEY = 6;
    public static final int TRUCK_AVOID_CONGESTION__SAVE_MONEY_NO_HIGHWAY = 7;
    public static final int TRUCK_CHOICE_HIGHWAY = 8;
    public static final int TRUCK_NO_HIGHWAY = 2;
    public static final int TRUCK_SAVE_MONEY = 3;
    public static final int TRUCK_SAVE_MONEY_NO_HIGHWAY = 5;
    public static final int TRUCK_SIZE_HEAVY = 4;
    public static final int TRUCK_SIZE_LIGHT = 2;
    public static final int TRUCK_SIZE_MEDIUM = 3;
    public static final int TRUCK_SIZE_MINI = 1;
    public static final int WALK_DEFAULT = 0;
    public static final int WALK_MULTI_PATH = 1;
    public static final int WalkDefault = 0;
    public static final int WalkMultipath = 1;
    private IRouteSearch a;

    public static class BusRouteQuery implements Parcelable, Cloneable {
        public static final Creator<BusRouteQuery> CREATOR = new Creator<BusRouteQuery>() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new BusRouteQuery(parcel);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new BusRouteQuery[i];
            }
        };
        private FromAndTo a;
        private int b;
        private String c;
        private String d;
        private int e;

        public BusRouteQuery(FromAndTo fromAndTo, int i, String str, int i2) {
            this.a = fromAndTo;
            this.b = i;
            this.c = str;
            this.e = i2;
        }

        public FromAndTo getFromAndTo() {
            return this.a;
        }

        public int getMode() {
            return this.b;
        }

        public String getCity() {
            return this.c;
        }

        public int getNightFlag() {
            return this.e;
        }

        public String getCityd() {
            return this.d;
        }

        public void setCityd(String str) {
            this.d = str;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.a, i);
            parcel.writeInt(this.b);
            parcel.writeString(this.c);
            parcel.writeInt(this.e);
            parcel.writeString(this.d);
        }

        public BusRouteQuery(Parcel parcel) {
            this.a = (FromAndTo) parcel.readParcelable(FromAndTo.class.getClassLoader());
            this.b = parcel.readInt();
            this.c = parcel.readString();
            this.e = parcel.readInt();
            this.d = parcel.readString();
        }

        public BusRouteQuery() {
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((((this.a == null ? 0 : this.a.hashCode()) + (((this.c == null ? 0 : this.c.hashCode()) + 31) * 31)) * 31) + this.b) * 31) + this.e) * 31;
            if (this.d != null) {
                i = this.d.hashCode();
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
            BusRouteQuery busRouteQuery = (BusRouteQuery) obj;
            if (this.c == null) {
                if (busRouteQuery.c != null) {
                    return false;
                }
            } else if (!this.c.equals(busRouteQuery.c)) {
                return false;
            }
            if (this.d == null) {
                if (busRouteQuery.d != null) {
                    return false;
                }
            } else if (!this.d.equals(busRouteQuery.d)) {
                return false;
            }
            if (this.a == null) {
                if (busRouteQuery.a != null) {
                    return false;
                }
            } else if (!this.a.equals(busRouteQuery.a)) {
                return false;
            }
            if (this.b != busRouteQuery.b) {
                return false;
            }
            if (this.e != busRouteQuery.e) {
                return false;
            }
            return true;
        }

        public BusRouteQuery clone() {
            try {
                super.clone();
            } catch (CloneNotSupportedException e2) {
                t.a(e2, "RouteSearch", "BusRouteQueryclone");
            }
            BusRouteQuery busRouteQuery = new BusRouteQuery(this.a, this.b, this.c, this.e);
            busRouteQuery.setCityd(this.d);
            return busRouteQuery;
        }
    }

    public static class DriveRouteQuery implements Parcelable, Cloneable {
        public static final Creator<DriveRouteQuery> CREATOR = new Creator<DriveRouteQuery>() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new DriveRouteQuery(parcel);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new DriveRouteQuery[i];
            }
        };
        private FromAndTo a;
        private int b;
        private List<LatLonPoint> c;
        private List<List<LatLonPoint>> d;
        private String e;

        public DriveRouteQuery(FromAndTo fromAndTo, int i, List<LatLonPoint> list, List<List<LatLonPoint>> list2, String str) {
            this.a = fromAndTo;
            this.b = i;
            this.c = list;
            this.d = list2;
            this.e = str;
        }

        public FromAndTo getFromAndTo() {
            return this.a;
        }

        public int getMode() {
            return this.b;
        }

        public List<LatLonPoint> getPassedByPoints() {
            return this.c;
        }

        public List<List<LatLonPoint>> getAvoidpolygons() {
            return this.d;
        }

        public String getAvoidRoad() {
            return this.e;
        }

        public String getPassedPointStr() {
            StringBuffer stringBuffer = new StringBuffer();
            if (this.c == null || this.c.size() == 0) {
                return null;
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.c.size()) {
                    return stringBuffer.toString();
                }
                LatLonPoint latLonPoint = (LatLonPoint) this.c.get(i2);
                stringBuffer.append(latLonPoint.getLongitude());
                stringBuffer.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                stringBuffer.append(latLonPoint.getLatitude());
                if (i2 < this.c.size() - 1) {
                    stringBuffer.append(";");
                }
                i = i2 + 1;
            }
        }

        public boolean hasPassPoint() {
            if (t.a(getPassedPointStr())) {
                return false;
            }
            return true;
        }

        public String getAvoidpolygonsStr() {
            StringBuffer stringBuffer = new StringBuffer();
            if (this.d == null || this.d.size() == 0) {
                return null;
            }
            for (int i = 0; i < this.d.size(); i++) {
                List list = (List) this.d.get(i);
                for (int i2 = 0; i2 < list.size(); i2++) {
                    LatLonPoint latLonPoint = (LatLonPoint) list.get(i2);
                    stringBuffer.append(latLonPoint.getLongitude());
                    stringBuffer.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                    stringBuffer.append(latLonPoint.getLatitude());
                    if (i2 < list.size() - 1) {
                        stringBuffer.append(";");
                    }
                }
                if (i < this.d.size() - 1) {
                    stringBuffer.append("|");
                }
            }
            return stringBuffer.toString();
        }

        public boolean hasAvoidpolygons() {
            if (t.a(getAvoidpolygonsStr())) {
                return false;
            }
            return true;
        }

        public boolean hasAvoidRoad() {
            if (t.a(getAvoidRoad())) {
                return false;
            }
            return true;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.a, i);
            parcel.writeInt(this.b);
            parcel.writeTypedList(this.c);
            if (this.d == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(this.d.size());
                for (List writeTypedList : this.d) {
                    parcel.writeTypedList(writeTypedList);
                }
            }
            parcel.writeString(this.e);
        }

        public DriveRouteQuery(Parcel parcel) {
            this.a = (FromAndTo) parcel.readParcelable(FromAndTo.class.getClassLoader());
            this.b = parcel.readInt();
            this.c = parcel.createTypedArrayList(LatLonPoint.CREATOR);
            int readInt = parcel.readInt();
            if (readInt == 0) {
                this.d = null;
            } else {
                this.d = new ArrayList();
            }
            for (int i = 0; i < readInt; i++) {
                this.d.add(parcel.createTypedArrayList(LatLonPoint.CREATOR));
            }
            this.e = parcel.readString();
        }

        public DriveRouteQuery() {
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((this.a == null ? 0 : this.a.hashCode()) + (((this.d == null ? 0 : this.d.hashCode()) + (((this.e == null ? 0 : this.e.hashCode()) + 31) * 31)) * 31)) * 31) + this.b) * 31;
            if (this.c != null) {
                i = this.c.hashCode();
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
            DriveRouteQuery driveRouteQuery = (DriveRouteQuery) obj;
            if (this.e == null) {
                if (driveRouteQuery.e != null) {
                    return false;
                }
            } else if (!this.e.equals(driveRouteQuery.e)) {
                return false;
            }
            if (this.d == null) {
                if (driveRouteQuery.d != null) {
                    return false;
                }
            } else if (!this.d.equals(driveRouteQuery.d)) {
                return false;
            }
            if (this.a == null) {
                if (driveRouteQuery.a != null) {
                    return false;
                }
            } else if (!this.a.equals(driveRouteQuery.a)) {
                return false;
            }
            if (this.b != driveRouteQuery.b) {
                return false;
            }
            if (this.c == null) {
                if (driveRouteQuery.c != null) {
                    return false;
                }
                return true;
            } else if (!this.c.equals(driveRouteQuery.c)) {
                return false;
            } else {
                return true;
            }
        }

        public DriveRouteQuery clone() {
            try {
                super.clone();
            } catch (CloneNotSupportedException e2) {
                t.a(e2, "RouteSearch", "DriveRouteQueryclone");
            }
            return new DriveRouteQuery(this.a, this.b, this.c, this.d, this.e);
        }
    }

    public static class FromAndTo implements Parcelable, Cloneable {
        public static final Creator<FromAndTo> CREATOR = new Creator<FromAndTo>() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new FromAndTo(parcel);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new FromAndTo[i];
            }
        };
        private LatLonPoint a;
        private LatLonPoint b;
        private String c;
        private String d;
        private String e;
        private String f;
        private String g;
        private String h;

        public FromAndTo(LatLonPoint latLonPoint, LatLonPoint latLonPoint2) {
            this.a = latLonPoint;
            this.b = latLonPoint2;
        }

        public LatLonPoint getFrom() {
            return this.a;
        }

        public LatLonPoint getTo() {
            return this.b;
        }

        public String getStartPoiID() {
            return this.c;
        }

        public void setStartPoiID(String str) {
            this.c = str;
        }

        public String getDestinationPoiID() {
            return this.d;
        }

        public void setDestinationPoiID(String str) {
            this.d = str;
        }

        public String getOriginType() {
            return this.e;
        }

        public void setOriginType(String str) {
            this.e = str;
        }

        public String getDestinationType() {
            return this.f;
        }

        public void setDestinationType(String str) {
            this.f = str;
        }

        public String getPlateProvince() {
            return this.g;
        }

        public void setPlateProvince(String str) {
            this.g = str;
        }

        public String getPlateNumber() {
            return this.h;
        }

        public void setPlateNumber(String str) {
            this.h = str;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.a, i);
            parcel.writeParcelable(this.b, i);
            parcel.writeString(this.c);
            parcel.writeString(this.d);
            parcel.writeString(this.e);
            parcel.writeString(this.f);
        }

        public FromAndTo(Parcel parcel) {
            this.a = (LatLonPoint) parcel.readParcelable(LatLonPoint.class.getClassLoader());
            this.b = (LatLonPoint) parcel.readParcelable(LatLonPoint.class.getClassLoader());
            this.c = parcel.readString();
            this.d = parcel.readString();
            this.e = parcel.readString();
            this.f = parcel.readString();
        }

        public FromAndTo() {
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.e == null ? 0 : this.e.hashCode()) + (((this.b == null ? 0 : this.b.hashCode()) + (((this.c == null ? 0 : this.c.hashCode()) + (((this.a == null ? 0 : this.a.hashCode()) + (((this.d == null ? 0 : this.d.hashCode()) + 31) * 31)) * 31)) * 31)) * 31)) * 31;
            if (this.f != null) {
                i = this.f.hashCode();
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
            FromAndTo fromAndTo = (FromAndTo) obj;
            if (this.d == null) {
                if (fromAndTo.d != null) {
                    return false;
                }
            } else if (!this.d.equals(fromAndTo.d)) {
                return false;
            }
            if (this.a == null) {
                if (fromAndTo.a != null) {
                    return false;
                }
            } else if (!this.a.equals(fromAndTo.a)) {
                return false;
            }
            if (this.c == null) {
                if (fromAndTo.c != null) {
                    return false;
                }
            } else if (!this.c.equals(fromAndTo.c)) {
                return false;
            }
            if (this.b == null) {
                if (fromAndTo.b != null) {
                    return false;
                }
            } else if (!this.b.equals(fromAndTo.b)) {
                return false;
            }
            if (this.e == null) {
                if (fromAndTo.e != null) {
                    return false;
                }
            } else if (!this.e.equals(fromAndTo.e)) {
                return false;
            }
            if (this.f == null) {
                if (fromAndTo.f != null) {
                    return false;
                }
                return true;
            } else if (!this.f.equals(fromAndTo.f)) {
                return false;
            } else {
                return true;
            }
        }

        public FromAndTo clone() {
            try {
                super.clone();
            } catch (CloneNotSupportedException e2) {
                t.a(e2, "RouteSearch", "FromAndToclone");
            }
            FromAndTo fromAndTo = new FromAndTo(this.a, this.b);
            fromAndTo.setStartPoiID(this.c);
            fromAndTo.setDestinationPoiID(this.d);
            fromAndTo.setOriginType(this.e);
            fromAndTo.setDestinationType(this.f);
            return fromAndTo;
        }
    }

    public interface OnRouteSearchListener {
        void onBusRouteSearched(BusRouteResult busRouteResult, int i);

        void onDriveRouteSearched(DriveRouteResult driveRouteResult, int i);

        void onRideRouteSearched(RideRouteResult rideRouteResult, int i);

        void onWalkRouteSearched(WalkRouteResult walkRouteResult, int i);
    }

    public interface OnTruckRouteSearchListener {
        void onTruckRouteSearched(TruckRouteRestult truckRouteRestult, int i);
    }

    public static class RideRouteQuery implements Parcelable, Cloneable {
        public static final Creator<RideRouteQuery> CREATOR = new Creator<RideRouteQuery>() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new RideRouteQuery(parcel);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new RideRouteQuery[i];
            }
        };
        private FromAndTo a;
        private int b;

        public RideRouteQuery(FromAndTo fromAndTo, int i) {
            this.a = fromAndTo;
            this.b = i;
        }

        public RideRouteQuery(FromAndTo fromAndTo) {
            this.a = fromAndTo;
        }

        public FromAndTo getFromAndTo() {
            return this.a;
        }

        public int getMode() {
            return this.b;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.a, i);
            parcel.writeInt(this.b);
        }

        public RideRouteQuery(Parcel parcel) {
            this.a = (FromAndTo) parcel.readParcelable(FromAndTo.class.getClassLoader());
            this.b = parcel.readInt();
        }

        public RideRouteQuery() {
        }

        public int hashCode() {
            return (((this.a == null ? 0 : this.a.hashCode()) + 31) * 31) + this.b;
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
            WalkRouteQuery walkRouteQuery = (WalkRouteQuery) obj;
            if (this.a == null) {
                if (walkRouteQuery.a != null) {
                    return false;
                }
            } else if (!this.a.equals(walkRouteQuery.a)) {
                return false;
            }
            if (this.b != walkRouteQuery.b) {
                return false;
            }
            return true;
        }

        public RideRouteQuery clone() {
            try {
                super.clone();
            } catch (CloneNotSupportedException e) {
                t.a(e, "RouteSearch", "RideRouteQueryclone");
            }
            return new RideRouteQuery(this.a);
        }
    }

    public static class TruckRouteQuery implements Parcelable, Cloneable {
        public static final Creator<TruckRouteQuery> CREATOR = new Creator<TruckRouteQuery>() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new TruckRouteQuery(parcel);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new TruckRouteQuery[i];
            }
        };
        private FromAndTo a;
        private int b = 2;
        private int c;
        private List<LatLonPoint> d;
        private float e;
        private float f;
        private float g;
        private float h;
        private float i;

        public TruckRouteQuery(FromAndTo fromAndTo, int i2, List<LatLonPoint> list, int i3) {
            this.a = fromAndTo;
            this.c = i2;
            this.d = list;
            this.b = i3;
        }

        protected TruckRouteQuery(Parcel parcel) {
            this.a = (FromAndTo) parcel.readParcelable(FromAndTo.class.getClassLoader());
            this.b = parcel.readInt();
            this.c = parcel.readInt();
            this.d = parcel.createTypedArrayList(LatLonPoint.CREATOR);
            this.e = parcel.readFloat();
            this.f = parcel.readFloat();
            this.g = parcel.readFloat();
            this.h = parcel.readFloat();
            this.i = parcel.readFloat();
        }

        public void setMode(int i2) {
            this.c = i2;
        }

        public void setTruckSize(int i2) {
            this.b = i2;
        }

        public void setTruckHeight(float f2) {
            this.e = f2;
        }

        public void setTruckWidth(float f2) {
            this.f = f2;
        }

        public void setTruckLoad(float f2) {
            this.g = f2;
        }

        public void setTruckWeight(float f2) {
            this.h = f2;
        }

        public void setTruckAxis(float f2) {
            this.i = f2;
        }

        public FromAndTo getFromAndTo() {
            return this.a;
        }

        public int getMode() {
            return this.c;
        }

        public boolean hasPassPoint() {
            if (t.a(getPassedPointStr())) {
                return false;
            }
            return true;
        }

        public String getPassedPointStr() {
            StringBuffer stringBuffer = new StringBuffer();
            if (this.d == null || this.d.size() == 0) {
                return null;
            }
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= this.d.size()) {
                    return stringBuffer.toString();
                }
                LatLonPoint latLonPoint = (LatLonPoint) this.d.get(i3);
                stringBuffer.append(latLonPoint.getLongitude());
                stringBuffer.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                stringBuffer.append(latLonPoint.getLatitude());
                if (i3 < this.d.size() - 1) {
                    stringBuffer.append(";");
                }
                i2 = i3 + 1;
            }
        }

        public int getTruckSize() {
            return this.b;
        }

        public float getTruckHeight() {
            return this.e;
        }

        public float getTruckWidth() {
            return this.f;
        }

        public float getTruckLoad() {
            return this.g;
        }

        public float getTruckWeight() {
            return this.h;
        }

        public float getTruckAxis() {
            return this.i;
        }

        public TruckRouteQuery clone() {
            try {
                super.clone();
            } catch (CloneNotSupportedException e2) {
                t.a(e2, "RouteSearch", "TruckRouteQueryclone");
            }
            return new TruckRouteQuery(this.a, this.c, this.d, this.b);
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeParcelable(this.a, i2);
            parcel.writeInt(this.b);
            parcel.writeInt(this.c);
            parcel.writeTypedList(this.d);
            parcel.writeFloat(this.e);
            parcel.writeFloat(this.f);
            parcel.writeFloat(this.g);
            parcel.writeFloat(this.h);
            parcel.writeFloat(this.i);
        }
    }

    public static class WalkRouteQuery implements Parcelable, Cloneable {
        public static final Creator<WalkRouteQuery> CREATOR = new Creator<WalkRouteQuery>() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new WalkRouteQuery(parcel);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new WalkRouteQuery[i];
            }
        };
        /* access modifiers changed from: private */
        public FromAndTo a;
        /* access modifiers changed from: private */
        public int b;

        public WalkRouteQuery(FromAndTo fromAndTo, int i) {
            this.a = fromAndTo;
            this.b = i;
        }

        public WalkRouteQuery(FromAndTo fromAndTo) {
            this.a = fromAndTo;
        }

        public FromAndTo getFromAndTo() {
            return this.a;
        }

        public int getMode() {
            return this.b;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.a, i);
            parcel.writeInt(this.b);
        }

        public WalkRouteQuery(Parcel parcel) {
            this.a = (FromAndTo) parcel.readParcelable(FromAndTo.class.getClassLoader());
            this.b = parcel.readInt();
        }

        public WalkRouteQuery() {
        }

        public int hashCode() {
            return (((this.a == null ? 0 : this.a.hashCode()) + 31) * 31) + this.b;
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
            WalkRouteQuery walkRouteQuery = (WalkRouteQuery) obj;
            if (this.a == null) {
                if (walkRouteQuery.a != null) {
                    return false;
                }
            } else if (!this.a.equals(walkRouteQuery.a)) {
                return false;
            }
            if (this.b != walkRouteQuery.b) {
                return false;
            }
            return true;
        }

        public WalkRouteQuery clone() {
            try {
                super.clone();
            } catch (CloneNotSupportedException e) {
                t.a(e, "RouteSearch", "WalkRouteQueryclone");
            }
            return new WalkRouteQuery(this.a);
        }
    }

    public RouteSearch(Context context) {
        try {
            Context context2 = context;
            this.a = (IRouteSearch) cy.a(context2, s.a(true), "com.amap.api.services.dynamic.RouteSearchWrapper", bj.class, new Class[]{Context.class}, new Object[]{context});
        } catch (bo e) {
            ThrowableExtension.printStackTrace(e);
        }
        if (this.a == null) {
            try {
                this.a = new bj(context);
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public void setRouteSearchListener(OnRouteSearchListener onRouteSearchListener) {
        if (this.a != null) {
            this.a.setRouteSearchListener(onRouteSearchListener);
        }
    }

    public void setOnTruckRouteSearchListener(OnTruckRouteSearchListener onTruckRouteSearchListener) {
        if (this.a != null) {
            this.a.setOnTruckRouteSearchListener(onTruckRouteSearchListener);
        }
    }

    public WalkRouteResult calculateWalkRoute(WalkRouteQuery walkRouteQuery) throws AMapException {
        if (this.a != null) {
            return this.a.calculateWalkRoute(walkRouteQuery);
        }
        return null;
    }

    public void calculateWalkRouteAsyn(WalkRouteQuery walkRouteQuery) {
        if (this.a != null) {
            this.a.calculateWalkRouteAsyn(walkRouteQuery);
        }
    }

    public BusRouteResult calculateBusRoute(BusRouteQuery busRouteQuery) throws AMapException {
        if (this.a != null) {
            return this.a.calculateBusRoute(busRouteQuery);
        }
        return null;
    }

    public void calculateBusRouteAsyn(BusRouteQuery busRouteQuery) {
        if (this.a != null) {
            this.a.calculateBusRouteAsyn(busRouteQuery);
        }
    }

    public DriveRouteResult calculateDriveRoute(DriveRouteQuery driveRouteQuery) throws AMapException {
        if (this.a != null) {
            return this.a.calculateDriveRoute(driveRouteQuery);
        }
        return null;
    }

    public void calculateDriveRouteAsyn(DriveRouteQuery driveRouteQuery) {
        if (this.a != null) {
            this.a.calculateDriveRouteAsyn(driveRouteQuery);
        }
    }

    public void calculateRideRouteAsyn(RideRouteQuery rideRouteQuery) {
        if (this.a != null) {
            this.a.calculateRideRouteAsyn(rideRouteQuery);
        }
    }

    public RideRouteResult calculateRideRoute(RideRouteQuery rideRouteQuery) throws AMapException {
        if (this.a != null) {
            return this.a.calculateRideRoute(rideRouteQuery);
        }
        return null;
    }

    public TruckRouteRestult calculateTruckRoute(TruckRouteQuery truckRouteQuery) throws AMapException {
        if (this.a != null) {
            return this.a.calculateTruckRoute(truckRouteQuery);
        }
        return null;
    }

    public void calculateTruckRouteAsyn(TruckRouteQuery truckRouteQuery) {
        if (this.a != null) {
            this.a.calculateTruckRouteAsyn(truckRouteQuery);
        }
    }
}
