package com.ifengyu.im.imservice.services;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.BluetoothProfile.ServiceListener;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.os.CountDownTimer;
import android.util.Log;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.util.List;

public abstract class BluetoothHeadsetUtils {
    private static final String TAG = "BluetoothHeadsetUtils";
    /* access modifiers changed from: private */
    public AudioManager mAudioManager;
    private BluetoothAdapter mBluetoothAdapter;
    /* access modifiers changed from: private */
    public BluetoothHeadset mBluetoothHeadset;
    private BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals("android.bluetooth.device.action.ACL_CONNECTED")) {
                BluetoothHeadsetUtils.this.mConnectedHeadset = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                BluetoothClass bluetoothClass = BluetoothHeadsetUtils.this.mConnectedHeadset.getBluetoothClass();
                if (bluetoothClass != null) {
                    int deviceClass = bluetoothClass.getDeviceClass();
                    if (deviceClass == 1032 || deviceClass == 1028) {
                        BluetoothHeadsetUtils.this.mAudioManager.setMode(2);
                        BluetoothHeadsetUtils.this.mIsCountDownOn = true;
                        BluetoothHeadsetUtils.this.mCountDown.start();
                        BluetoothHeadsetUtils.this.onHeadsetConnected();
                    }
                }
                Log.d(BluetoothHeadsetUtils.TAG, BluetoothHeadsetUtils.this.mConnectedHeadset.getName() + " connected");
            } else if (action.equals("android.bluetooth.device.action.ACL_DISCONNECTED")) {
                Log.d(BluetoothHeadsetUtils.TAG, "Headset disconnected");
                if (BluetoothHeadsetUtils.this.mIsCountDownOn) {
                    BluetoothHeadsetUtils.this.mIsCountDownOn = false;
                    BluetoothHeadsetUtils.this.mCountDown.cancel();
                }
                BluetoothHeadsetUtils.this.mAudioManager.setMode(0);
                BluetoothHeadsetUtils.this.onHeadsetDisconnected();
            } else if (action.equals("android.media.SCO_AUDIO_STATE_CHANGED")) {
                int intExtra = intent.getIntExtra("android.media.extra.SCO_AUDIO_STATE", -1);
                if (intExtra == 1) {
                    BluetoothHeadsetUtils.this.mIsOnHeadsetSco = true;
                    if (BluetoothHeadsetUtils.this.mIsStarting) {
                        BluetoothHeadsetUtils.this.mIsStarting = false;
                        BluetoothHeadsetUtils.this.onHeadsetConnected();
                    }
                    if (BluetoothHeadsetUtils.this.mIsCountDownOn) {
                        BluetoothHeadsetUtils.this.mIsCountDownOn = false;
                        BluetoothHeadsetUtils.this.mCountDown.cancel();
                    }
                    BluetoothHeadsetUtils.this.onScoAudioConnected();
                    Log.d(BluetoothHeadsetUtils.TAG, "Sco connected");
                } else if (intExtra == 0) {
                    Log.d(BluetoothHeadsetUtils.TAG, "Sco disconnected");
                    if (!BluetoothHeadsetUtils.this.mIsStarting) {
                        BluetoothHeadsetUtils.this.mIsOnHeadsetSco = false;
                        BluetoothHeadsetUtils.this.mAudioManager.stopBluetoothSco();
                        BluetoothHeadsetUtils.this.onScoAudioDisconnected();
                    }
                }
            }
        }
    };
    /* access modifiers changed from: private */
    public BluetoothDevice mConnectedHeadset;
    /* access modifiers changed from: private */
    public Context mContext;
    /* access modifiers changed from: private */
    public CountDownTimer mCountDown = new CountDownTimer(FileTracerConfig.DEF_FLUSH_INTERVAL, 1000) {
        public void onTick(long j) {
            BluetoothHeadsetUtils.this.mAudioManager.startBluetoothSco();
            Log.d(BluetoothHeadsetUtils.TAG, "\nonTick start bluetooth Sco");
        }

        public void onFinish() {
            BluetoothHeadsetUtils.this.mIsCountDownOn = false;
            BluetoothHeadsetUtils.this.mAudioManager.setMode(0);
            Log.d(BluetoothHeadsetUtils.TAG, "\nonFinish fail to connect to headset audio");
        }
    };
    /* access modifiers changed from: private */
    public CountDownTimer mCountDown11 = new CountDownTimer(FileTracerConfig.DEF_FLUSH_INTERVAL, 1000) {
        @TargetApi(11)
        public void onTick(long j) {
            BluetoothHeadsetUtils.this.mBluetoothHeadset.startVoiceRecognition(BluetoothHeadsetUtils.this.mConnectedHeadset);
            Log.d(BluetoothHeadsetUtils.TAG, "onTick startVoiceRecognition");
        }

        public void onFinish() {
            BluetoothHeadsetUtils.this.mIsCountDownOn = false;
            Log.d(BluetoothHeadsetUtils.TAG, "\nonFinish fail to connect to headset audio");
        }
    };
    /* access modifiers changed from: private */
    public BroadcastReceiver mHeadsetBroadcastReceiver = new BroadcastReceiver() {
        @TargetApi(11)
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED")) {
                int intExtra = intent.getIntExtra("android.bluetooth.profile.extra.STATE", 0);
                Log.d(BluetoothHeadsetUtils.TAG, "\nAction = " + action + "\nState = " + intExtra);
                if (intExtra == 2) {
                    BluetoothHeadsetUtils.this.mConnectedHeadset = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                    BluetoothHeadsetUtils.this.mIsCountDownOn = true;
                    BluetoothHeadsetUtils.this.mCountDown11.start();
                    BluetoothHeadsetUtils.this.onHeadsetConnected();
                    Log.d(BluetoothHeadsetUtils.TAG, "Start count down");
                } else if (intExtra == 0) {
                    if (BluetoothHeadsetUtils.this.mIsCountDownOn) {
                        BluetoothHeadsetUtils.this.mIsCountDownOn = false;
                        BluetoothHeadsetUtils.this.mCountDown11.cancel();
                    }
                    BluetoothHeadsetUtils.this.mConnectedHeadset = null;
                    BluetoothHeadsetUtils.this.onHeadsetDisconnected();
                    Log.d(BluetoothHeadsetUtils.TAG, "Headset disconnected");
                }
            } else {
                int intExtra2 = intent.getIntExtra("android.bluetooth.profile.extra.STATE", 10);
                Log.d(BluetoothHeadsetUtils.TAG, "\nAction = " + action + "\nState = " + intExtra2);
                if (intExtra2 == 12) {
                    Log.d(BluetoothHeadsetUtils.TAG, "\nHeadset audio connected");
                    BluetoothHeadsetUtils.this.mIsOnHeadsetSco = true;
                    if (BluetoothHeadsetUtils.this.mIsCountDownOn) {
                        BluetoothHeadsetUtils.this.mIsCountDownOn = false;
                        BluetoothHeadsetUtils.this.mCountDown11.cancel();
                    }
                    BluetoothHeadsetUtils.this.onScoAudioConnected();
                } else if (intExtra2 == 10) {
                    BluetoothHeadsetUtils.this.mIsOnHeadsetSco = false;
                    BluetoothHeadsetUtils.this.mBluetoothHeadset.stopVoiceRecognition(BluetoothHeadsetUtils.this.mConnectedHeadset);
                    BluetoothHeadsetUtils.this.onScoAudioDisconnected();
                    Log.d(BluetoothHeadsetUtils.TAG, "Headset audio disconnected");
                }
            }
        }
    };
    private ServiceListener mHeadsetProfileListener = new ServiceListener() {
        public void onServiceDisconnected(int i) {
            Log.d(BluetoothHeadsetUtils.TAG, "Profile listener onServiceDisconnected");
            BluetoothHeadsetUtils.this.stopBluetooth11();
        }

        @TargetApi(11)
        public void onServiceConnected(int i, BluetoothProfile bluetoothProfile) {
            Log.d(BluetoothHeadsetUtils.TAG, "Profile listener onServiceConnected");
            BluetoothHeadsetUtils.this.mBluetoothHeadset = (BluetoothHeadset) bluetoothProfile;
            List connectedDevices = BluetoothHeadsetUtils.this.mBluetoothHeadset.getConnectedDevices();
            if (connectedDevices.size() > 0) {
                BluetoothHeadsetUtils.this.mConnectedHeadset = (BluetoothDevice) connectedDevices.get(0);
                BluetoothHeadsetUtils.this.onHeadsetConnected();
                BluetoothHeadsetUtils.this.mIsCountDownOn = true;
                BluetoothHeadsetUtils.this.mCountDown11.start();
                Log.d(BluetoothHeadsetUtils.TAG, "Start count down");
            }
            BluetoothHeadsetUtils.this.mContext.registerReceiver(BluetoothHeadsetUtils.this.mHeadsetBroadcastReceiver, new IntentFilter("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"));
            BluetoothHeadsetUtils.this.mContext.registerReceiver(BluetoothHeadsetUtils.this.mHeadsetBroadcastReceiver, new IntentFilter("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"));
        }
    };
    /* access modifiers changed from: private */
    public boolean mIsCountDownOn;
    /* access modifiers changed from: private */
    public boolean mIsOnHeadsetSco;
    private boolean mIsStarted;
    /* access modifiers changed from: private */
    public boolean mIsStarting;

    public abstract void onHeadsetConnected();

    public abstract void onHeadsetDisconnected();

    public abstract void onScoAudioConnected();

    public abstract void onScoAudioDisconnected();

    public BluetoothHeadsetUtils(Context context) {
        this.mContext = context;
        this.mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        this.mAudioManager = (AudioManager) this.mContext.getSystemService("audio");
    }

    public boolean start() {
        if (!this.mIsStarted) {
            this.mIsStarted = true;
            if (VERSION.SDK_INT < 11) {
                this.mIsStarted = startBluetooth();
            } else {
                this.mIsStarted = startBluetooth11();
            }
        }
        return this.mIsStarted;
    }

    public void stop() {
        if (this.mIsStarted) {
            this.mIsStarted = false;
            if (VERSION.SDK_INT < 11) {
                stopBluetooth();
            } else {
                stopBluetooth11();
            }
        }
    }

    public boolean isOnHeadsetSco() {
        return this.mIsOnHeadsetSco;
    }

    private boolean startBluetooth() {
        Log.d(TAG, "startBluetooth");
        if (this.mBluetoothAdapter == null || !this.mAudioManager.isBluetoothScoAvailableOffCall()) {
            return false;
        }
        this.mContext.registerReceiver(this.mBroadcastReceiver, new IntentFilter("android.bluetooth.device.action.ACL_CONNECTED"));
        this.mContext.registerReceiver(this.mBroadcastReceiver, new IntentFilter("android.bluetooth.device.action.ACL_DISCONNECTED"));
        this.mContext.registerReceiver(this.mBroadcastReceiver, new IntentFilter("android.media.SCO_AUDIO_STATE_CHANGED"));
        this.mAudioManager.setMode(2);
        this.mIsCountDownOn = true;
        this.mCountDown.start();
        this.mIsStarting = true;
        return true;
    }

    @TargetApi(11)
    private boolean startBluetooth11() {
        Log.d(TAG, "startBluetooth11");
        if (this.mBluetoothAdapter == null || !this.mAudioManager.isBluetoothScoAvailableOffCall() || !this.mBluetoothAdapter.getProfileProxy(this.mContext, this.mHeadsetProfileListener, 1)) {
            return false;
        }
        return true;
    }

    private void stopBluetooth() {
        Log.d(TAG, "stopBluetooth");
        if (this.mIsCountDownOn) {
            this.mIsCountDownOn = false;
            this.mCountDown.cancel();
        }
        this.mContext.unregisterReceiver(this.mBroadcastReceiver);
        this.mAudioManager.stopBluetoothSco();
        this.mAudioManager.setMode(0);
    }

    /* access modifiers changed from: protected */
    @TargetApi(11)
    public void stopBluetooth11() {
        Log.d(TAG, "stopBluetooth11");
        if (this.mIsCountDownOn) {
            this.mIsCountDownOn = false;
            this.mCountDown11.cancel();
        }
        if (this.mBluetoothHeadset != null) {
            this.mBluetoothHeadset.stopVoiceRecognition(this.mConnectedHeadset);
            this.mContext.unregisterReceiver(this.mHeadsetBroadcastReceiver);
            this.mBluetoothAdapter.closeProfileProxy(1, this.mBluetoothHeadset);
            this.mBluetoothHeadset = null;
        }
    }
}
