package com.ifengyu.intercom.device.common.configFile.entity;

import com.ifengyu.intercom.models.ConfigFileModel;

/* loaded from: classes2.dex */
public class ConfigItemAdapterEntity {
    private ConfigFileModel configFile;
    private boolean isSelect;

    public ConfigItemAdapterEntity() {
    }

    public ConfigFileModel getConfigFile() {
        return this.configFile;
    }

    public boolean isSelect() {
        return this.isSelect;
    }

    public void setConfigFile(ConfigFileModel configFileModel) {
        this.configFile = configFileModel;
    }

    public void setSelect(boolean z) {
        this.isSelect = z;
    }

    public ConfigItemAdapterEntity(boolean z, ConfigFileModel configFileModel) {
        this.isSelect = z;
        this.configFile = configFileModel;
    }
}
