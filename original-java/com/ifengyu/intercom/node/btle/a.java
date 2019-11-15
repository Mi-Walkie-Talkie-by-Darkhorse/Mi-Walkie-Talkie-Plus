package com.ifengyu.intercom.node.btle;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import com.ifengyu.intercom.b.s;
import java.util.UUID;

/* compiled from: BleGattCallback */
public class a extends BluetoothGattCallback {
    private final b a;

    public a(b bVar) {
        this.a = bVar;
    }

    private void a(BluetoothGatt bluetoothGatt, int i, GattOperation gattOperation) {
        a(bluetoothGatt, i, gattOperation, null);
    }

    private void a(BluetoothGatt bluetoothGatt, int i, GattOperation gattOperation, UUID uuid) {
        synchronized (this.a.e()) {
            try {
                BluetoothGatt a2 = this.a.a(bluetoothGatt);
                this.a.a(a2, i);
                if (uuid != null) {
                    this.a.a(a2, uuid);
                }
                this.a.a(gattOperation);
                s.b("BleGattCallback", "notify operation " + gattOperation + " complete");
                this.a.g();
            } catch (GattException e) {
                this.a.a(e);
            }
        }
    }

    public void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        s.b("BleGattCallback", "onCharacteristicChanged: uuid = " + bluetoothGattCharacteristic.getUuid());
        super.onCharacteristicChanged(bluetoothGatt, bluetoothGattCharacteristic);
        this.a.f().a(bluetoothGattCharacteristic);
    }

    public void onCharacteristicRead(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        s.b("BleGattCallback", "onCharacteristicRead: status = " + i);
        super.onCharacteristicRead(bluetoothGatt, bluetoothGattCharacteristic, i);
        a(bluetoothGatt, i, GattOperation.READ_CHARACTERISTIC, bluetoothGattCharacteristic.getUuid());
    }

    public void onCharacteristicWrite(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        s.b("BleGattCallback", "onCharacteristicWrite: status = " + i + ", uuid = " + bluetoothGattCharacteristic.getUuid());
        super.onCharacteristicWrite(bluetoothGatt, bluetoothGattCharacteristic, i);
        a(bluetoothGatt, i, GattOperation.WRITE_CHARACTERISTIC, bluetoothGattCharacteristic.getUuid());
        this.a.f().a(bluetoothGattCharacteristic, i);
    }

    public void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i, int i2) {
        boolean z;
        s.b("BleGattCallback", "onConnectionStateChange. Status: " + i + ", newState: " + i2);
        super.onConnectionStateChange(bluetoothGatt, i, i2);
        synchronized (this.a.e()) {
            try {
                this.a.a(bluetoothGatt);
                switch (i2) {
                    case 0:
                        s.e("BleGattCallback", "onConnectionStateChange: disconnected.");
                        this.a.g();
                        this.a.a((Exception) null);
                        break;
                    case 1:
                        s.d("BleGattCallback", "onConnectionStateChange: connecting.");
                        this.a.a(GattOperation.CONNECT);
                        break;
                    case 2:
                        s.b("BleGattCallback", "onConnectionStateChange: connected.");
                        this.a.a(GattOperation.CONNECT);
                        this.a.g();
                        break;
                    case 3:
                        s.d("BleGattCallback", "onConnectionStateChange: disconnecting.");
                        this.a.a(GattOperation.DISCONNECT);
                        break;
                    default:
                        throw new GattException("Unexpected connection state on device " + bluetoothGatt.getDevice().getAddress() + ": " + i);
                }
                e = null;
                z = false;
            } catch (GattException e) {
                e = e;
                if (i2 == 0) {
                    this.a.a((Exception) e);
                }
                if (this.a.h() != GattOperation.NO_OPERATION) {
                    this.a.a(e);
                    e = null;
                    z = false;
                } else {
                    z = true;
                }
            }
        }
        if (z) {
            this.a.f().a((Exception) e);
        }
    }

    public void onDescriptorRead(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
        throw new UnsupportedOperationException("We don't support reading a characteristic");
    }

    public void onDescriptorWrite(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
        super.onDescriptorWrite(bluetoothGatt, bluetoothGattDescriptor, i);
        s.b("BleGattCallback", "OnDescriptorWrite callback. Status: " + i + ", uuid: " + bluetoothGattDescriptor.getCharacteristic().getUuid());
        a(bluetoothGatt, i, GattOperation.WRITE_DESCRIPTOR, bluetoothGattDescriptor.getUuid());
    }

    public void onMtuChanged(BluetoothGatt bluetoothGatt, int i, int i2) {
        super.onMtuChanged(bluetoothGatt, i, i2);
        s.b("BleGattCallback", "onMtuChanged to MTU: " + i + ". Status: " + i2);
        if (i2 == 0) {
            this.a.b(i);
        }
        a(bluetoothGatt, i2, GattOperation.REQUEST_MTU);
    }

    public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i) {
        super.onServicesDiscovered(bluetoothGatt, i);
        a(bluetoothGatt, i, GattOperation.DISCOVER_SERVICES);
    }

    public void onReadRemoteRssi(BluetoothGatt bluetoothGatt, int i, int i2) {
        throw new UnsupportedOperationException("We don't support reading a characteristic");
    }
}
