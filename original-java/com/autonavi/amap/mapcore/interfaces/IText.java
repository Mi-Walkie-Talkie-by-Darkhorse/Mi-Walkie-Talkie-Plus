package com.autonavi.amap.mapcore.interfaces;

import android.graphics.Typeface;
import android.os.RemoteException;

public interface IText extends IOverlayImage {
    int getAlignX() throws RemoteException;

    int getAlignY() throws RemoteException;

    int getBackgroundColor() throws RemoteException;

    int getFontColor() throws RemoteException;

    int getFontSize() throws RemoteException;

    String getText() throws RemoteException;

    Typeface getTypeface() throws RemoteException;

    void setAlign(int i, int i2) throws RemoteException;

    void setBackgroundColor(int i) throws RemoteException;

    void setFontColor(int i) throws RemoteException;

    void setFontSize(int i) throws RemoteException;

    void setText(String str) throws RemoteException;

    void setTypeface(Typeface typeface) throws RemoteException;
}
