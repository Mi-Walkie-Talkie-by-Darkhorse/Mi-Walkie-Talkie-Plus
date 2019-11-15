package com.amap.api.services.traffic;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class TrafficStatusEvaluation implements Parcelable {
    public static final Creator<TrafficStatusEvaluation> CREATOR = new Creator<TrafficStatusEvaluation>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new TrafficStatusEvaluation(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new TrafficStatusEvaluation[i];
        }
    };
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;

    public String getExpedite() {
        return this.a;
    }

    public void setExpedite(String str) {
        this.a = str;
    }

    public String getCongested() {
        return this.b;
    }

    public void setCongested(String str) {
        this.b = str;
    }

    public String getBlocked() {
        return this.c;
    }

    public void setBlocked(String str) {
        this.c = str;
    }

    public String getUnknown() {
        return this.d;
    }

    public void setUnknown(String str) {
        this.d = str;
    }

    public String getStatus() {
        return this.e;
    }

    public void setStatus(String str) {
        this.e = str;
    }

    public String getDescription() {
        return this.f;
    }

    public void setDescription(String str) {
        this.f = str;
    }

    public TrafficStatusEvaluation() {
    }

    protected TrafficStatusEvaluation(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
    }
}
