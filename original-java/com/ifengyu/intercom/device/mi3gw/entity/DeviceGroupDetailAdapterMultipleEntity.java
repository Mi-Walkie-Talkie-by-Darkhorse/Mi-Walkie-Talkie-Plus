package com.ifengyu.intercom.device.mi3gw.entity;

import com.ifengyu.talk.http.entity.TempMember;

/* loaded from: classes2.dex */
public class DeviceGroupDetailAdapterMultipleEntity implements Comparable<DeviceGroupDetailAdapterMultipleEntity> {
    public static final int TYPE_MEMBER = 1001;
    public static final int TYPE_OPERATE_ADD = 1002;
    public static final int TYPE_OPERATE_REMOVE = 1003;
    private TempMember member;
    private int type;

    public DeviceGroupDetailAdapterMultipleEntity() {
    }

    @Override // java.lang.Comparable
    public int compareTo(DeviceGroupDetailAdapterMultipleEntity deviceGroupDetailAdapterMultipleEntity) {
        return 0;
    }

    public TempMember getMember() {
        return this.member;
    }

    public int getType() {
        return this.type;
    }

    public void setMember(TempMember tempMember) {
        this.member = tempMember;
    }

    public void setType(int i) {
        this.type = i;
    }

    public DeviceGroupDetailAdapterMultipleEntity(int i) {
        this.type = i;
    }

    public DeviceGroupDetailAdapterMultipleEntity(int i, TempMember tempMember) {
        this.type = i;
        this.member = tempMember;
    }
}
