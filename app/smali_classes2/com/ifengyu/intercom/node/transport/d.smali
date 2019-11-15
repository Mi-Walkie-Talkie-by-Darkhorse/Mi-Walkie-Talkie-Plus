.class public Lcom/ifengyu/intercom/node/transport/d;
.super Ljava/lang/Object;
.source "DolphinCommandHelper.java"


# direct methods
.method private static a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setNo(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setType(Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setFreq(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB2312"

    invoke-static {v1, v2}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->g(I)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->g(I)[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setFreq2(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssType(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssCode(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssInvert(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    const/4 v0, 0x0

    aget v0, v1, v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssType2(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    const/4 v0, 0x1

    aget v0, v1, v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssCode2(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    const/4 v0, 0x2

    aget v0, v1, v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssInvert2(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    sget v1, Lcom/ifengyu/intercom/b/w;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    const-string v1, "DolphinCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paramUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;I)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    sget v1, Lcom/ifengyu/intercom/b/w;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setShareLoc(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    const-string v1, "DolphinCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paramUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;ILjava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v1

    sget v0, Lcom/ifengyu/intercom/b/w;->a:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setUserId(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    const-string v0, "GB2312"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setUserName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "DolphinCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paramUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v1

    sget v0, Lcom/ifengyu/intercom/b/w;->a:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setTime(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setLongitude(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setLatitude(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getAltitude()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setAltitude(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    :try_start_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GB2312"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setUserName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setUserId(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    const-string v0, "DolphinCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locationSync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setLocationSync(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    sget v1, Lcom/ifengyu/intercom/b/w;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->CONNECT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->setConnCode(Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->setDeviceId(I)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    :cond_0
    const-string v1, "DolphinCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setConnectQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    sget v1, Lcom/ifengyu/intercom/b/w;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setStateMode(Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    const-string v1, "DolphinCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paramUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setOption(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    sget v0, Lcom/ifengyu/intercom/b/w;->a:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    sget-object v0, Lcom/ifengyu/intercom/node/transport/d$1;->a:[I

    invoke-virtual {p3}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const-string v0, "DolphinCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stateUpdate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setStateQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0

    :pswitch_0
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->getCh1Builder()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setCh1(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->getCh2Builder()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setCh2(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->getCh1Builder()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setNo(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v3

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setType(Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setCh1(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->getCh2Builder()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setNo(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v3

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setType(Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setCh2(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SCAN:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SCAN:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Ljava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v1

    sget v2, Lcom/ifengyu/intercom/b/w;->a:I

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "GB2312"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [B

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    aget-byte v5, v2, v0

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    aput-byte v2, v4, v0

    invoke-static {v3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setDevNameGBK(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    invoke-static {v4}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setDevNameUTF8(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "DolphinCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paramUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static b(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    sget v1, Lcom/ifengyu/intercom/b/w;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setActivateChannel(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    const-string v1, "DolphinCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paramUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method
