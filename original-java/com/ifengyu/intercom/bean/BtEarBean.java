package com.ifengyu.intercom.bean;

import android.bluetooth.BluetoothDevice;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class BtEarBean implements Parcelable {
    public static final Parcelable.Creator<BtEarBean> CREATOR = new Parcelable.Creator<BtEarBean>() { // from class: com.ifengyu.intercom.bean.BtEarBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BtEarBean createFromParcel(Parcel parcel) {
            return new BtEarBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BtEarBean[] newArray(int i) {
            return new BtEarBean[i];
        }
    };
    BluetoothDevice device;
    int rssi;

    public BtEarBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public BluetoothDevice getDevice() {
        return this.device;
    }

    public int getRssi() {
        return this.rssi;
    }

    public void setDevice(BluetoothDevice bluetoothDevice) {
        this.device = bluetoothDevice;
    }

    public void setRssi(int i) {
        this.rssi = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.device, i);
        parcel.writeInt(this.rssi);
    }

    public BtEarBean(BluetoothDevice bluetoothDevice, int i) {
        this.device = bluetoothDevice;
        this.rssi = i;
    }

    protected BtEarBean(Parcel parcel) {
        this.device = (BluetoothDevice) parcel.readParcelable(BluetoothDevice.class.getClassLoader());
        this.rssi = parcel.readInt();
    }
}
