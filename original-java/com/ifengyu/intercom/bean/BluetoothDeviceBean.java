package com.ifengyu.intercom.bean;

import android.bluetooth.BluetoothDevice;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import java.util.ArrayList;

public class BluetoothDeviceBean {
    private String address;
    private BluetoothDevice device;
    private int deviceType;
    private ArrayList<Integer> list;
    private String name;
    private int rssi;

    public BluetoothDeviceBean() {
    }

    public BluetoothDeviceBean(String str, String str2, int i, BluetoothDevice bluetoothDevice) {
        this.address = str;
        this.name = str2 != null ? str2.trim() : ad.a((int) R.string.app_name);
        this.deviceType = i;
        this.device = bluetoothDevice;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public int getDeviceType() {
        return this.deviceType;
    }

    public void setDeviceType(int i) {
        this.deviceType = i;
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

    public ArrayList<Integer> getList() {
        return this.list;
    }

    public void setList(ArrayList<Integer> arrayList) {
        this.list = arrayList;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof BluetoothDeviceBean)) {
            return false;
        }
        return getAddress().equals(((BluetoothDeviceBean) obj).getAddress());
    }

    public String toString() {
        return "BluetoothDeviceBean{address='" + this.address + '\'' + ", name='" + this.name + '\'' + ", deviceType=" + this.deviceType + '}';
    }
}
