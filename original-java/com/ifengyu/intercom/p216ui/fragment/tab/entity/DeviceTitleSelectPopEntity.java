package com.ifengyu.intercom.p216ui.fragment.tab.entity;

/* renamed from: com.ifengyu.intercom.ui.fragment.tab.entity.DeviceTitleSelectPopEntity */
/* loaded from: classes2.dex */
public class DeviceTitleSelectPopEntity {
    private boolean isSelected;
    private String type;

    public DeviceTitleSelectPopEntity(String str, boolean z) {
        this.type = str;
        this.isSelected = z;
    }

    public String getType() {
        return this.type;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setSelected(boolean z) {
        this.isSelected = z;
    }

    public void setType(String str) {
        this.type = str;
    }
}
