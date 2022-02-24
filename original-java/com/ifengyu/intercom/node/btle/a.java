package com.ifengyu.intercom.node.btle;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import com.ifengyu.intercom.i.z;
import java.util.UUID;

/* compiled from: BleGattCallback.java */
/* loaded from: classes2.dex */
public class a extends BluetoothGattCallback {

    /* renamed from: a  reason: collision with root package name */
    private final b f5878a;

    public a(b bVar) {
        this.f5878a = bVar;
    }

    private void a(BluetoothGatt bluetoothGatt, int i, GattOperation gattOperation) {
        a(bluetoothGatt, i, gattOperation, null);
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        z.a("BleGattCallback", "onCharacteristicChanged: uuid = " + bluetoothGattCharacteristic.getUuid());
        super.onCharacteristicChanged(bluetoothGatt, bluetoothGattCharacteristic);
        this.f5878a.c().a(bluetoothGattCharacteristic);
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onCharacteristicRead(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        z.a("BleGattCallback", "onCharacteristicRead: status = " + i);
        super.onCharacteristicRead(bluetoothGatt, bluetoothGattCharacteristic, i);
        a(bluetoothGatt, i, GattOperation.READ_CHARACTERISTIC, bluetoothGattCharacteristic.getUuid());
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onCharacteristicWrite(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        z.a("BleGattCallback", "onCharacteristicWrite: status = " + i + ", uuid = " + bluetoothGattCharacteristic.getUuid());
        super.onCharacteristicWrite(bluetoothGatt, bluetoothGattCharacteristic, i);
        a(bluetoothGatt, i, GattOperation.WRITE_CHARACTERISTIC, bluetoothGattCharacteristic.getUuid());
        this.f5878a.c().a(bluetoothGattCharacteristic, i);
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i, int i2) {
        boolean z;
        GattException gattException;
        z.a("BleGattCallback", "onConnectionStateChange. Status: " + i + ", newState: " + i2);
        super.onConnectionStateChange(bluetoothGatt, i, i2);
        synchronized (this.f5878a.e()) {
            z = true;
            gattException = null;
            try {
                this.f5878a.a(bluetoothGatt);
                if (i2 == 0) {
                    z.b("BleGattCallback", "onConnectionStateChange: disconnected.");
                    this.f5878a.g();
                    this.f5878a.a((Exception) null);
                } else if (i2 == 1) {
                    z.e("BleGattCallback", "onConnectionStateChange: connecting.");
                    this.f5878a.a(GattOperation.CONNECT);
                } else if (i2 == 2) {
                    z.a("BleGattCallback", "onConnectionStateChange: connected.");
                    this.f5878a.a(GattOperation.CONNECT);
                    this.f5878a.g();
                } else if (i2 == 3) {
                    z.e("BleGattCallback", "onConnectionStateChange: disconnecting.");
                    this.f5878a.a(GattOperation.DISCONNECT);
                } else {
                    throw new GattException("Unexpected connection state on device " + bluetoothGatt.getDevice().getAddress() + ": " + i);
                }
            } catch (GattException e) {
                if (i2 == 0) {
                    this.f5878a.a((Exception) e);
                }
                if (this.f5878a.b() != GattOperation.NO_OPERATION) {
                    this.f5878a.a(e);
                } else {
                    gattException = e;
                }
            }
            z = false;
        }
        if (z) {
            this.f5878a.c().a(gattException);
        }
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onDescriptorRead(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
        throw new UnsupportedOperationException("We don't support reading a characteristic");
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onDescriptorWrite(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
        super.onDescriptorWrite(bluetoothGatt, bluetoothGattDescriptor, i);
        z.a("BleGattCallback", "OnDescriptorWrite callback. Status: " + i + ", uuid: " + bluetoothGattDescriptor.getCharacteristic().getUuid());
        a(bluetoothGatt, i, GattOperation.WRITE_DESCRIPTOR, bluetoothGattDescriptor.getUuid());
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onMtuChanged(BluetoothGatt bluetoothGatt, int i, int i2) {
        super.onMtuChanged(bluetoothGatt, i, i2);
        z.a("BleGattCallback", "onMtuChanged to MTU: " + i + ". Status: " + i2);
        if (i2 == 0) {
            this.f5878a.b(i);
        }
        a(bluetoothGatt, i2, GattOperation.REQUEST_MTU);
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onReadRemoteRssi(BluetoothGatt bluetoothGatt, int i, int i2) {
        throw new UnsupportedOperationException("We don't support reading a characteristic");
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i) {
        super.onServicesDiscovered(bluetoothGatt, i);
        a(bluetoothGatt, i, GattOperation.DISCOVER_SERVICES);
    }

    private void a(BluetoothGatt bluetoothGatt, int i, GattOperation gattOperation, UUID uuid) {
        synchronized (this.f5878a.e()) {
            try {
                BluetoothGatt a2 = this.f5878a.a(bluetoothGatt);
                this.f5878a.a(a2, i);
                if (uuid != null) {
                    this.f5878a.a(a2, uuid);
                }
                this.f5878a.a(gattOperation);
                z.a("BleGattCallback", "notify operation " + gattOperation + " complete");
                this.f5878a.g();
            } catch (GattException e) {
                this.f5878a.a(e);
            }
        }
    }
}
