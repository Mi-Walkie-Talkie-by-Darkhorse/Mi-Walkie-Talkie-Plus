.class public Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;
.super Landroidx/lifecycle/LiveData;
.source "LiteDeviceParamLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;",
        ">;"
    }
.end annotation


# instance fields
.field private band:I

.field private bootVoice:Z

.field private deviceId:I

.field private keyVoice:Z

.field private langType:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

.field private name:Ljava/lang/String;

.field private polite:Z

.field private sq:I

.field private verHw:I

.field private verSoft:I

.field private vox:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method public getBand()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->band:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->deviceId:I

    return v0
.end method

.method public getLangType()Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->langType:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->sq:I

    return v0
.end method

.method public getVerHw()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->verHw:I

    return v0
.end method

.method public getVerSoft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->verSoft:I

    return v0
.end method

.method public isBootVoice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->bootVoice:Z

    return v0
.end method

.method public isKeyVoice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->keyVoice:Z

    return v0
.end method

.method public isPolite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->polite:Z

    return v0
.end method

.method public isVox()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->vox:Z

    return v0
.end method

.method public setBand(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->band:I

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setBootVoice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->bootVoice:Z

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setDeviceId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->deviceId:I

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setFrom(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->hasSq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getSq()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->sq:I

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->hasVox()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getVox()Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->ON:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->vox:Z

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->hasBand()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getBand()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->band:I

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->hasPolite()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getPolite()Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->ON:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->polite:Z

    .line 9
    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->hasLangType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getLangType()Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->langType:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    .line 11
    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->hasBootVoice()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 12
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getBootVoice()Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->ON:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    if-ne v0, v3, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->bootVoice:Z

    .line 13
    :cond_8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->hasKeyVoice()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 14
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getKeyVoice()Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->ON:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    if-ne v0, v3, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->keyVoice:Z

    .line 15
    :cond_a
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->hasName()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 16
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getName()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->name:Ljava/lang/String;

    .line 17
    :cond_b
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->hasVerHw()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 18
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getVerHw()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->verHw:I

    .line 19
    :cond_c
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->hasVerSoft()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 20
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getVerSoft()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->verSoft:I

    .line 21
    :cond_d
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 22
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDeviceId()I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->deviceId:I

    .line 23
    :cond_e
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setKeyVoice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->keyVoice:Z

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setLangType(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->langType:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->name:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setPolite(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->polite:Z

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setSq(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->sq:I

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setVerHw(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->verHw:I

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setVerSoft(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->verSoft:I

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setVox(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->vox:Z

    .line 2
    invoke-virtual {p0, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceParamLiveData{sq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->sq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->vox:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", band="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->band:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", polite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->polite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", langType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->langType:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bootVoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->bootVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyVoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->keyVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", verHw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->verHw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", verSoft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->verSoft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
