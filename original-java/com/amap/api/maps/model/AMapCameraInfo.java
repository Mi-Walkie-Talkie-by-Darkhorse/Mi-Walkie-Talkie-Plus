package com.amap.api.maps.model;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;

public class AMapCameraInfo {
    private float a = 0.0f;
    private float b = 1.0f;
    private float c = 0.0f;
    private float d = 0.0f;
    private float e = 0.0f;
    private float f = 0.0f;

    public AMapCameraInfo(float f2, float f3, float f4, float f5, float f6, float f7) {
        this.a = f2;
        this.b = f3;
        this.c = f4;
        this.d = f5;
        this.e = f6;
        this.f = f7;
    }

    public float getFov() {
        return this.a;
    }

    public float getAspectRatio() {
        return this.b;
    }

    public float getRotate() {
        return this.c;
    }

    public float getX() {
        return this.d;
    }

    public float getY() {
        return this.e;
    }

    public float getZ() {
        return this.f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[").append("fov:").append(this.a).append(Token.SEPARATOR);
        sb.append("aspectRatio:").append(this.b).append(Token.SEPARATOR);
        sb.append("rotate:").append(this.c).append(Token.SEPARATOR);
        sb.append("pos_x:").append(this.d).append(Token.SEPARATOR);
        sb.append("pos_y:").append(this.e).append(Token.SEPARATOR);
        sb.append("pos_z:").append(this.f).append("]");
        return sb.toString();
    }
}
