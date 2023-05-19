package com.ifengyu.intercom.bean;

import android.bluetooth.BluetoothDevice;
import com.ifengyu.intercom.R;
import com.ifengyu.library.utils.UIUtils;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class BluetoothDeviceBean {
    private String address;
    private BluetoothDevice device;
    private int deviceType;
    private ArrayList<Integer> list;
    private String name;
    private int rssi;

    public BluetoothDeviceBean() {
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof BluetoothDeviceBean)) {
            return getAddress().equals(((BluetoothDeviceBean) obj).getAddress());
        }
        return false;
    }

    public String getAddress() {
        return this.address;
    }

    public BluetoothDevice getDevice() {
        return this.device;
    }

    public int getDeviceType() {
        return this.deviceType;
    }

    public ArrayList<Integer> getList() {
        return this.list;
    }

    public String getName() {
        return this.name;
    }

    public int getRssi() {
        return this.rssi;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setDevice(BluetoothDevice bluetoothDevice) {
        this.device = bluetoothDevice;
    }

    public void setDeviceType(int i) {
        this.deviceType = i;
    }

    public void setList(ArrayList<Integer> arrayList) {
        this.list = arrayList;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setRssi(int i) {
        this.rssi = i;
    }

    public String toString() {
        return "BluetoothDeviceBean{address='" + this.address + "', name='" + this.name + "', deviceType=" + this.deviceType + '}';
    }

    public BluetoothDeviceBean(String str, String str2, int i, BluetoothDevice bluetoothDevice) {
        this.address = str;
        this.name = str2 != null ? str2.trim() : UIUtils.m8603o(R.string.app_name);
        this.deviceType = i;
        this.device = bluetoothDevice;
    }
}
