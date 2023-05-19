.class public Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;
.super Ljava/lang/Object;
.source "ConfigItemAdapterEntity.java"


# instance fields
.field private configFile:Lcom/ifengyu/intercom/models/ConfigFileModel;

.field private isSelect:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;->isSelect:Z

    .line 4
    iput-object p2, p0, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;->configFile:Lcom/ifengyu/intercom/models/ConfigFileModel;

    return-void
.end method


# virtual methods
.method public getConfigFile()Lcom/ifengyu/intercom/models/ConfigFileModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;->configFile:Lcom/ifengyu/intercom/models/ConfigFileModel;

    return-object v0
.end method

.method public isSelect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;->isSelect:Z

    return v0
.end method

.method public setConfigFile(Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;->configFile:Lcom/ifengyu/intercom/models/ConfigFileModel;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;->isSelect:Z

    return-void
.end method
