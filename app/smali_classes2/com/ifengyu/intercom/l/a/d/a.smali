.class public Lcom/ifengyu/intercom/l/a/d/a;
.super Ljava/lang/Object;
.source "BleChannelUtils.java"


# direct methods
.method public static a(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/ifengyu/intercom/models/ChannelModel;
    .locals 2
    .param p0    # Lcom/ifengyu/intercom/models/ChannelModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/models/ChannelModel;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelSeq(I)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveFreq(I)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendFreq(I)V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveToneType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveToneType(I)V

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveToneValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveToneValue(I)V

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendToneType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendToneType(I)V

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendToneValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendToneValue(I)V

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelType(I)V

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelName(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;
    .locals 5
    .param p0    # Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasNo()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getNo()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setNo(I)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->getNumber()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setType(I)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasName()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getName()Lcom/google/protobuf/ByteString;

    move-result-object v1

    const-string v3, "GB2312"

    invoke-virtual {v1, v3}, Lcom/google/protobuf/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setFreq(I)V

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasCssType()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssType()I

    move-result v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssCode()I

    move-result v3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssInvert()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/ifengyu/intercom/l/a/d/a;->h(III)I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setTone(I)V

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq2()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq2()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setFreq2(I)V

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasCssType2()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssType2()I

    move-result v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssCode2()I

    move-result v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssInvert2()I

    move-result p0

    invoke-static {v1, v2, p0}, Lcom/ifengyu/intercom/l/a/d/a;->h(III)I

    move-result v2

    :cond_6
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setTone2(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;
    .locals 4
    .param p0    # Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasNo()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getNo()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setNo(I)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->getNumber()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setType(I)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasName()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getName()Lcom/google/protobuf/ByteString;

    move-result-object v1

    const-string v3, "GB2312"

    invoke-virtual {v1, v3}, Lcom/google/protobuf/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setFreq(I)V

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasCssType()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssType()I

    move-result v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssCode()I

    move-result v3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssInvert()I

    move-result p0

    invoke-static {v1, v3, p0}, Lcom/ifengyu/intercom/l/a/d/a;->h(III)I

    move-result p0

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    :goto_4
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setTone(I)V

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result p0

    goto :goto_5

    :cond_5
    const/4 p0, 0x0

    :goto_5
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setFreq2(I)V

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasCssType()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssType()I

    move-result p0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssInvert()I

    move-result p1

    invoke-static {p0, v1, p1}, Lcom/ifengyu/intercom/l/a/d/a;->h(III)I

    move-result v2

    :cond_6
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setTone2(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;)Lcom/ifengyu/intercom/models/ChannelModel;
    .locals 3
    .param p0    # Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/models/ChannelModel;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getSeq()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelSeq(I)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getRxFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveFreq(I)V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getTxFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendFreq(I)V

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getRxCss()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 7
    :cond_1
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveToneType(I)V

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getRxCss()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveToneValue(I)V

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getTxCss()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    .line 10
    :goto_0
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendToneType(I)V

    .line 11
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getTxCss()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendToneValue(I)V

    const/4 p0, 0x2

    .line 12
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelType(I)V

    return-object v0
.end method

.method public static e(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)Lcom/ifengyu/intercom/models/ChannelModel;
    .locals 3
    .param p0    # Lcom/ifengyu/intercom/protos/BleProtos$Frequency;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/models/ChannelModel;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getSeq()I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelSeq(I)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getRxFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveFreq(I)V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getTxFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendFreq(I)V

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getRxCss()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 7
    :cond_1
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveToneType(I)V

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getRxCss()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveToneValue(I)V

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getTxCss()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    .line 10
    :goto_0
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendToneType(I)V

    .line 11
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getTxCss()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendToneValue(I)V

    .line 12
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelType(I)V

    .line 13
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->hasName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getName()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/ifengyu/intercom/p/h0;->a(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelName(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public static f(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;
    .locals 9
    .param p0    # Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-direct {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChNo()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChNo()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setNo(I)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChType()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->getNumber()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setType(I)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChTxPower()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChTxPower()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    :goto_2
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxPower(I)V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChRxFreq()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChRxFreq()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, -0x1

    :goto_3
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxFreq(I)V

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChTxFreq()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChTxFreq()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, -0x1

    :goto_4
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxFreq(I)V

    .line 7
    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getType()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "GB2312"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v2, v5, :cond_6

    .line 8
    :try_start_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChName()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChName()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/protobuf/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v0

    :goto_5
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setName(Ljava/lang/String;)V

    goto :goto_7

    .line 9
    :cond_6
    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->d()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChName()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChName()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/protobuf/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_7
    move-object v2, v0

    :goto_6
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setName(Ljava/lang/String;)V

    goto :goto_7

    .line 11
    :cond_8
    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getType()I

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "Public Channel L%1$02d"

    new-array v4, v7, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getNo()I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setName(Ljava/lang/String;)V

    goto :goto_7

    .line 13
    :cond_9
    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getType()I

    move-result v2

    if-ne v2, v7, :cond_a

    const-string v2, "Amateur Channel H%1$02d"

    new-array v4, v7, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getNo()I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setName(Ljava/lang/String;)V

    .line 15
    :cond_a
    :goto_7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChSq()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChSq()I

    move-result v2

    goto :goto_8

    :cond_b
    const/4 v2, -0x1

    :goto_8
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setSq(I)V

    .line 16
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChVox()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChVox()I

    move-result v2

    goto :goto_9

    :cond_c
    const/4 v2, -0x1

    :goto_9
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setVox(I)V

    .line 17
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChRxCss()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChRxCss()I

    move-result v2

    goto :goto_a

    :cond_d
    const/4 v2, -0x1

    :goto_a
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxCss(I)V

    .line 18
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChTxCss()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChTxCss()I

    move-result v2

    goto :goto_b

    :cond_e
    const/4 v2, -0x1

    :goto_b
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxCss(I)V

    .line 19
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChElim()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChElim()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v2

    sget-object v4, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v2, v4, :cond_f

    const/4 v2, 0x1

    goto :goto_c

    :cond_f
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setElim(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChBand()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChBand()I

    move-result v3

    :cond_10
    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setBand(I)V

    .line 21
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChPolite()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChPolite()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v2, v3, :cond_11

    const/4 v2, 0x1

    goto :goto_d

    :cond_11
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setPolite(Z)V

    .line 22
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChType()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 23
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->getNumber()I

    move-result p0

    if-eq p0, v5, :cond_12

    const/4 v6, 0x1

    :cond_12
    invoke-virtual {v1, v6}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setStChannel(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_13
    return-object v1

    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static g(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;
    .locals 9
    .param p0    # Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-direct {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChNo()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChNo()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setNo(I)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChType()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->getNumber()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setType(I)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChTxPower()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChTxPower()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    :goto_2
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxPower(I)V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChRxFreq()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChRxFreq()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, -0x1

    :goto_3
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxFreq(I)V

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChTxFreq()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChTxFreq()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, -0x1

    :goto_4
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxFreq(I)V

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->d()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "GB2312"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_6

    .line 8
    :try_start_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChName()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChName()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/protobuf/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v0

    :goto_5
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setName(Ljava/lang/String;)V

    goto :goto_7

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->getNumber()I

    move-result v2

    if-ne v2, v5, :cond_8

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChName()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChName()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/protobuf/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_7
    move-object v2, v0

    :goto_6
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setName(Ljava/lang/String;)V

    goto :goto_7

    .line 11
    :cond_8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->getNumber()I

    move-result v2

    if-nez v2, :cond_9

    const v2, 0x7f11009e

    new-array v4, v7, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getNo()I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setName(Ljava/lang/String;)V

    goto :goto_7

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->getNumber()I

    move-result v2

    if-ne v2, v7, :cond_a

    const v2, 0x7f110098

    new-array v4, v7, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getNo()I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setName(Ljava/lang/String;)V

    .line 15
    :cond_a
    :goto_7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChSq()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChSq()I

    move-result v2

    goto :goto_8

    :cond_b
    const/4 v2, -0x1

    :goto_8
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setSq(I)V

    .line 16
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChVox()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChVox()I

    move-result v2

    goto :goto_9

    :cond_c
    const/4 v2, -0x1

    :goto_9
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setVox(I)V

    .line 17
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChRxCss()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChRxCss()I

    move-result v2

    goto :goto_a

    :cond_d
    const/4 v2, -0x1

    :goto_a
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxCss(I)V

    .line 18
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChTxCss()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChTxCss()I

    move-result v2

    goto :goto_b

    :cond_e
    const/4 v2, -0x1

    :goto_b
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxCss(I)V

    .line 19
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChElim()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChElim()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    move-result-object v2

    sget-object v4, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_ON:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    if-ne v2, v4, :cond_f

    const/4 v2, 0x1

    goto :goto_c

    :cond_f
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setElim(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChBand()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChBand()I

    move-result v3

    :cond_10
    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setBand(I)V

    .line 21
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChPolite()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChPolite()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_ON:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    if-ne v2, v3, :cond_11

    const/4 v2, 0x1

    goto :goto_d

    :cond_11
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setPolite(Z)V

    .line 22
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChType()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 23
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->getNumber()I

    move-result p0

    if-eq p0, v5, :cond_12

    const/4 v6, 0x1

    :cond_12
    invoke-virtual {v1, v6}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setStChannel(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_13
    return-object v1

    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static h(III)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, v1

    return p1

    :cond_1
    if-nez p2, :cond_2

    add-int/lit8 p1, p1, 0x29

    return p1

    :cond_2
    if-ne p2, v1, :cond_3

    add-int/lit8 p1, p1, 0x7d

    return p1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;
    .locals 4
    .param p0    # Lcom/ifengyu/intercom/models/ChannelModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setSeq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setRxFreq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveToneValue()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveToneType()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveToneValue()I

    move-result v3

    add-int/2addr v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setRxCss(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setTxFreq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendToneValue()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendToneType()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendToneValue()I

    move-result p0

    add-int v2, v1, p0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setTxCss(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/ifengyu/intercom/protos/BleProtos$Frequency;
    .locals 4
    .param p0    # Lcom/ifengyu/intercom/models/ChannelModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->setSeq(I)Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->setType(I)Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveFreq()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendFreq()I

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->setRxFreq(I)Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveToneValue()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveToneType()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveToneValue()I

    move-result v3

    add-int/2addr v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->setRxCss(I)Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->setTxFreq(I)Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendToneValue()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendToneType()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendToneValue()I

    move-result v2

    add-int/2addr v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->setTxCss(I)Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, ""

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelName()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Lcom/ifengyu/intercom/p/h0;->b(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->setName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object p0

    return-object p0

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object p0

    return-object p0
.end method
