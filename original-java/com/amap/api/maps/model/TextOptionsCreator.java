package com.amap.api.maps.model;

import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class TextOptionsCreator implements Creator<TextOptions> {
    public TextOptions createFromParcel(Parcel parcel) {
        boolean z = true;
        TextOptions textOptions = new TextOptions();
        textOptions.a = parcel.readString();
        Bundle readBundle = parcel.readBundle();
        textOptions.position(new LatLng(readBundle.getDouble("lat"), readBundle.getDouble("lng")));
        textOptions.text(parcel.readString());
        textOptions.typeface(Typeface.defaultFromStyle(parcel.readInt()));
        textOptions.rotate(parcel.readFloat());
        textOptions.align(parcel.readInt(), parcel.readInt());
        textOptions.backgroundColor(parcel.readInt());
        textOptions.fontColor(parcel.readInt());
        textOptions.fontSize(parcel.readInt());
        textOptions.zIndex(parcel.readFloat());
        if (parcel.readByte() != 1) {
            z = false;
        }
        textOptions.visible(z);
        try {
            Parcelable parcelable = parcel.readBundle().getParcelable("obj");
            if (parcelable != null) {
                textOptions.setObject(parcelable);
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return textOptions;
    }

    public TextOptions[] newArray(int i) {
        return new TextOptions[i];
    }
}
