.class public Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;
.super Landroidx/lifecycle/LiveData;
.source "Mi3DeviceParamLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;",
        ">;"
    }
.end annotation


# instance fields
.field private band:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

.field private bootVoice:Z

.field private callVoice:Z

.field private curChIndex:I

.field private deviceColor:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

.field private deviceId:I

.field private deviceMode:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

.field private keyVoice:Z

.field private langType:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

.field private name:Ljava/lang/String;

.field private polite:Z

.field private shareLoc:Z

.field private sq:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

.field private verHw:I

.field private verSoft:I

.field private vox:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method public getBand()Lcom/ifengyu/intercom/protos/BleProtos$BandType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->band:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    return-object v0
.end method

.method public getCurChIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->curChIndex:I

    return v0
.end method

.method public getDeviceColor()Lcom/ifengyu/intercom/protos/BleProtos$ColorType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->deviceColor:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->deviceId:I

    return v0
.end method

.method public getDeviceMode()Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->deviceMode:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    return-object v0
.end method

.method public getLangType()Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->langType:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSq()Lcom/ifengyu/intercom/protos/BleProtos$SqType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->sq:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    return-object v0
.end method

.method public getVerHw()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->verHw:I

    return v0
.end method

.method public getVerSoft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->verSoft:I

    return v0
.end method

.method public getVox()Lcom/ifengyu/intercom/protos/BleProtos$VoxType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->vox:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    return-object v0
.end method

.method public isBootVoice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->bootVoice:Z

    return v0
.end method

.method public isCallVoice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->callVoice:Z

    return v0
.end method

.method public isKeyVoice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->keyVoice:Z

    return v0
.end method

.method public isPolite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->polite:Z

    return v0
.end method

.method public isShareLoc()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->shareLoc:Z

    return v0
.end method

.method public setBand(Lcom/ifengyu/intercom/protos/BleProtos$BandType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->band:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setBootVoice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->bootVoice:Z

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setCallVoice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->callVoice:Z

    return-void
.end method

.method public setCurChIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->curChIndex:I

    return-void
.end method

.method public setDeviceMode(Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->deviceMode:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    return-void
.end method

.method public setFrom(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->hasTalkInfo()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getTalkInfo()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->hasSq()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->getSq()Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->sq:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->hasVox()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->getVox()Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->vox:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->hasBand()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->getBand()Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->band:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->hasPolite()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->getPolite()Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->ON:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->polite:Z

    .line 11
    :cond_4
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->hasCurChSeq()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->getCurChSeq()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->curChIndex:I

    .line 13
    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->hasConfigInfo()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 14
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getConfigInfo()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->hasLangType()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 16
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getLangType()Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->langType:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    .line 17
    :cond_6
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->hasPowerVoice()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 18
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getPowerVoice()Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->ON:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->bootVoice:Z

    .line 19
    :cond_8
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->hasKeyVoice()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 20
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getKeyVoice()Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->ON:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    if-ne v3, v4, :cond_9

    const/4 v3, 0x1

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->keyVoice:Z

    .line 21
    :cond_a
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->hasName()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 22
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getName()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/p/h0;->a(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->name:Ljava/lang/String;

    .line 23
    :cond_b
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->hasShareLoc()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 24
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getShareLoc()Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->ON:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    if-ne v3, v4, :cond_c

    const/4 v3, 0x1

    goto :goto_3

    :cond_c
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->shareLoc:Z

    .line 25
    :cond_d
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->hasCallVoice()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 26
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getCallVoice()Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->ON:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    if-ne v0, v3, :cond_e

    goto :goto_4

    :cond_e
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->callVoice:Z

    .line 27
    :cond_f
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->hasVerHw()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 28
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getVerHw()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->verHw:I

    .line 29
    :cond_10
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->hasVerSoft()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 30
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getVerSoft()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->verSoft:I

    .line 31
    :cond_11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 32
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getDeviceId()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->deviceId:I

    .line 33
    :cond_12
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->hasColor()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 34
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getColor()Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->deviceColor:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    .line 35
    :cond_13
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 36
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getDeviceMode()Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->deviceMode:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    .line 37
    :cond_14
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setKeyVoice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->keyVoice:Z

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setLangType(Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->langType:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->name:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setPolite(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->polite:Z

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setShareLoc(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->shareLoc:Z

    return-void
.end method

.method public setSq(Lcom/ifengyu/intercom/protos/BleProtos$SqType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->sq:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setVox(Lcom/ifengyu/intercom/protos/BleProtos$VoxType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->vox:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mi3DeviceParamLiveData{sq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->sq:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->vox:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", band="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->band:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", polite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->polite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", langType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->langType:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bootVoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->bootVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyVoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->keyVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", verHw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->verHw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", verSoft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->verSoft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->deviceColor:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shareLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->shareLoc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deviceMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->deviceMode:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callVoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->callVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", curChIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->curChIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
