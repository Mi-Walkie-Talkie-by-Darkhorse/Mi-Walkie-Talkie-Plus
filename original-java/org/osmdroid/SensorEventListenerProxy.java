package org.osmdroid;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

public class SensorEventListenerProxy implements SensorEventListener {
    private SensorEventListener mListener = null;
    private final SensorManager mSensorManager;

    public SensorEventListenerProxy(SensorManager sensorManager) {
        this.mSensorManager = sensorManager;
    }

    public boolean startListening(SensorEventListener sensorEventListener, int i, int i2) {
        Sensor defaultSensor = this.mSensorManager.getDefaultSensor(i);
        if (defaultSensor == null) {
            return false;
        }
        this.mListener = sensorEventListener;
        return this.mSensorManager.registerListener(this, defaultSensor, i2);
    }

    public void stopListening() {
        this.mListener = null;
        this.mSensorManager.unregisterListener(this);
    }

    public void onAccuracyChanged(Sensor sensor, int i) {
        if (this.mListener != null) {
            this.mListener.onAccuracyChanged(sensor, i);
        }
    }

    public void onSensorChanged(SensorEvent sensorEvent) {
        if (this.mListener != null) {
            this.mListener.onSensorChanged(sensorEvent);
        }
    }
}
