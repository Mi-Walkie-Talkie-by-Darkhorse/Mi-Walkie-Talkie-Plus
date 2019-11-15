package com.amap.api.services.weather;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class LocalWeatherLive implements Parcelable {
    public static final Creator<LocalWeatherLive> CREATOR = new Creator<LocalWeatherLive>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new LocalWeatherLive(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return null;
        }
    };
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;

    public LocalWeatherLive() {
    }

    public LocalWeatherLive(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readString();
        this.h = parcel.readString();
        this.i = parcel.readString();
    }

    public String getProvince() {
        return this.a;
    }

    public String getCity() {
        return this.b;
    }

    public String getAdCode() {
        return this.c;
    }

    public String getWeather() {
        return this.d;
    }

    public String getTemperature() {
        return this.e;
    }

    public String getWindDirection() {
        return this.f;
    }

    public String getWindPower() {
        return this.g;
    }

    public String getHumidity() {
        return this.h;
    }

    public String getReportTime() {
        return this.i;
    }

    public void setProvince(String str) {
        this.a = str;
    }

    public void setCity(String str) {
        this.b = str;
    }

    public void setAdCode(String str) {
        this.c = str;
    }

    public void setWeather(String str) {
        this.d = str;
    }

    public void setTemperature(String str) {
        this.e = str;
    }

    public void setWindDirection(String str) {
        this.f = str;
    }

    public void setWindPower(String str) {
        this.g = str;
    }

    public void setHumidity(String str) {
        this.h = str;
    }

    public void setReportTime(String str) {
        this.i = str;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        parcel.writeString(this.h);
        parcel.writeString(this.i);
    }
}
