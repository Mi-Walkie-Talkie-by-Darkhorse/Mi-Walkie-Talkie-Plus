package com.amap.api.services.weather;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class LocalDayWeatherForecast implements Parcelable {
    public static final Creator<LocalDayWeatherForecast> CREATOR = new Creator<LocalDayWeatherForecast>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new LocalDayWeatherForecast(parcel);
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
    private String j;

    public LocalDayWeatherForecast() {
    }

    public String getDate() {
        return this.a;
    }

    public void setDate(String str) {
        this.a = str;
    }

    public String getWeek() {
        return this.b;
    }

    public void setWeek(String str) {
        this.b = str;
    }

    public String getDayWeather() {
        return this.c;
    }

    public void setDayWeather(String str) {
        this.c = str;
    }

    public String getNightWeather() {
        return this.d;
    }

    public void setNightWeather(String str) {
        this.d = str;
    }

    public String getDayTemp() {
        return this.e;
    }

    public void setDayTemp(String str) {
        this.e = str;
    }

    public String getNightTemp() {
        return this.f;
    }

    public void setNightTemp(String str) {
        this.f = str;
    }

    public String getDayWindDirection() {
        return this.g;
    }

    public void setDayWindDirection(String str) {
        this.g = str;
    }

    public String getNightWindDirection() {
        return this.h;
    }

    public void setNightWindDirection(String str) {
        this.h = str;
    }

    public String getDayWindPower() {
        return this.i;
    }

    public void setDayWindPower(String str) {
        this.i = str;
    }

    public String getNightWindPower() {
        return this.j;
    }

    public void setNightWindPower(String str) {
        this.j = str;
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
        parcel.writeString(this.j);
    }

    public LocalDayWeatherForecast(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readString();
        this.h = parcel.readString();
        this.i = parcel.readString();
        this.j = parcel.readString();
    }
}
