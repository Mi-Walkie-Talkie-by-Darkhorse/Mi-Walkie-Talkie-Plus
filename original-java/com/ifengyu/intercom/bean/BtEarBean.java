package com.ifengyu.intercom.bean;

import android.bluetooth.BluetoothDevice;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class BtEarBean implements Parcelable {
    public static final Creator<BtEarBean> CREATOR = new Creator<BtEarBean>() {
        public BtEarBean createFromParcel(Parcel parcel) {
            return new BtEarBean(parcel);
        }

        public BtEarBean[] newArray(int i) {
            return new BtEarBean[i];
        }
    };
    BluetoothDevice device;
    int rssi;

    public BtEarBean() {
    }

    public BtEarBean(BluetoothDevice bluetoothDevice, int i) {
        this.device = bluetoothDevice;
        this.rssi = i;
    }

    protected BtEarBean(Parcel parcel) {
        this.device = (BluetoothDevice) parcel.readParcelable(BluetoothDevice.class.getClassLoader());
        this.rssi = parcel.readInt();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.device, i);
        parcel.writeInt(this.rssi);
    }

    public BluetoothDevice getDevice() {
        return this.device;
    }

    public void setDevice(BluetoothDevice bluetoothDevice) {
        this.device = bluetoothDevice;
    }

    public int getRssi() {
        return this.rssi;
    }

    public void setRssi(int i) {
        this.rssi = i;
    }
}
