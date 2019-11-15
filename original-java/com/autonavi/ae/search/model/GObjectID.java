package com.autonavi.ae.search.model;

public class GObjectID {
    private int u16AdareaID;
    private int u8LayerID;
    private int u8Rev;
    private int unMeshID;
    private int unObjectID;

    private GObjectID(int i, int i2, int i3, int i4, int i5) {
        this.u8LayerID = i;
        this.u8Rev = i2;
        this.u16AdareaID = i3;
        this.unMeshID = i4;
        this.unObjectID = i5;
    }

    public GObjectID() {
    }

    public int getU8LayerID() {
        return this.u8LayerID;
    }

    public void setU8LayerID(int i) {
        this.u8LayerID = i;
    }

    public int getU8Rev() {
        return this.u8Rev;
    }

    public void setU8Rev(int i) {
        this.u8Rev = i;
    }

    public int getU16AdareaID() {
        return this.u16AdareaID;
    }

    public void setU16AdareaID(int i) {
        this.u16AdareaID = i;
    }

    public long getUnMeshID() {
        return (long) this.unMeshID;
    }

    public void setUnMeshID(int i) {
        this.unMeshID = i;
    }

    public long getUnObjectID() {
        return (long) this.unObjectID;
    }

    public void setUnObjectID(int i) {
        this.unObjectID = i;
    }
}
