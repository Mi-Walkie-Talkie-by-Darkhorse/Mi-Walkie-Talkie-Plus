package com.amap.api.services.traffic;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.col.sl.t;

public class RoadTrafficQuery extends a implements Parcelable, Cloneable {
    public static final Creator<RoadTrafficQuery> CREATOR = new Creator<RoadTrafficQuery>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new RoadTrafficQuery(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new RoadTrafficQuery[i];
        }
    };
    private String b;
    private String c;

    public /* bridge */ /* synthetic */ int getLevel() {
        return super.getLevel();
    }

    public /* bridge */ /* synthetic */ void setLevel(int i) {
        super.setLevel(i);
    }

    public String getName() {
        return this.b;
    }

    public void setName(String str) {
        this.b = str;
    }

    public String getAdCode() {
        return this.c;
    }

    public void setAdCode(String str) {
        this.c = str;
    }

    public RoadTrafficQuery(String str, String str2, int i) {
        this.b = str;
        this.c = str2;
        this.a = i;
    }

    protected RoadTrafficQuery(Parcel parcel) {
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.a = parcel.readInt();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeInt(this.a);
    }

    public RoadTrafficQuery clone() {
        try {
            super.clone();
        } catch (CloneNotSupportedException e) {
            t.a(e, "RoadTrafficQuery", "RoadTrafficQueryClone");
        }
        return new RoadTrafficQuery(this.b, this.c, this.a);
    }
}
