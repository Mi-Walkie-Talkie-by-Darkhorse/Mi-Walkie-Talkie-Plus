package com.liulishuo.filedownloader.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.HashMap;
import java.util.List;

public class FileDownloadHeader implements Parcelable {
    public static final Creator<FileDownloadHeader> CREATOR = new Creator<FileDownloadHeader>() {
        /* renamed from: a */
        public FileDownloadHeader createFromParcel(Parcel parcel) {
            return new FileDownloadHeader(parcel);
        }

        /* renamed from: a */
        public FileDownloadHeader[] newArray(int i) {
            return new FileDownloadHeader[i];
        }
    };
    private HashMap<String, List<String>> a;

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeMap(this.a);
    }

    public HashMap<String, List<String>> a() {
        return this.a;
    }

    public FileDownloadHeader() {
    }

    protected FileDownloadHeader(Parcel parcel) {
        this.a = parcel.readHashMap(String.class.getClassLoader());
    }

    public String toString() {
        return this.a.toString();
    }
}
