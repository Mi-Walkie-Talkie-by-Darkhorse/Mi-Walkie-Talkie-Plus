.class public Lcom/ifengyu/intercom/lite/e/h/a;
.super Ljava/lang/Object;
.source "CmdHelper.java"


# direct methods
.method public static a(Ljava/lang/String;[B)Lcom/google/protobuf/Message;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->FY_APP:Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequest$Builder;->setAppType(Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequest$Builder;

    move-result-object v0

    .line 4
    invoke-static {p0}, Lcom/ifengyu/library/a/l;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 6
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequest$Builder;->setDeviceId(I)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequest$Builder;

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/ifengyu/blelib/d/a;->b([B)Z

    move-result p0

    if-nez p0, :cond_1

    .line 8
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequest$Builder;->setPublicKey(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequest$Builder;

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequest;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Lcom/google/protobuf/Message;
    .locals 2

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 12
    array-length v1, p0

    if-lez v1, :cond_0

    .line 13
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest$Builder;->setToken(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest$Builder;

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest;
    .locals 2

    .line 47
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;
    .locals 4

    .line 15
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    move-result-object v1

    .line 17
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setRxFreq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setTxFreq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setRxCss(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setTxCss(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setSeq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object p0

    .line 19
    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->setChannelInfo(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    .line 20
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;

    move-result-object p0

    return-object p0
.end method

.method public static a(IIIII)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;
    .locals 1

    .line 21
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setSeq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object p0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setRxFreq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object p0

    .line 24
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setRxCss(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object p0

    .line 25
    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setTxFreq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object p0

    .line 26
    invoke-virtual {p0, p4}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setTxCss(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object p0

    .line 27
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 28
    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->setChannelInfo(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;
    .locals 2

    .line 30
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->setChannelInfo(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 2

    .line 43
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->setDevInfo(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 1

    .line 34
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->setLangType(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/ifengyu/intercom/lite/e/h/a;->a(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 1

    .line 40
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    .line 41
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->setName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object p0

    .line 42
    invoke-static {p0}, Lcom/ifengyu/intercom/lite/e/h/a;->a(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method

.method public static a(Z)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 1

    .line 37
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->ON:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 38
    :goto_0
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->setBootVoice(Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object p0

    .line 39
    invoke-static {p0}, Lcom/ifengyu/intercom/lite/e/h/a;->a(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->setBand(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/lite/e/h/a;->a(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method

.method public static b(Z)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->ON:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 5
    :goto_0
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->setKeyVoice(Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/ifengyu/intercom/lite/e/h/a;->a(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
    .locals 2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->START:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    .line 9
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->setFCmd(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;->MCU_UPLOAD_FILE:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    .line 10
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->setFType(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->setSq(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/ifengyu/intercom/lite/e/h/a;->a(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method

.method public static c(Z)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 1

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->ON:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 8
    :goto_0
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->setPolite(Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/ifengyu/intercom/lite/e/h/a;->a(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object v0

    return-object v0
.end method

.method public static d(Z)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->ON:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 5
    :goto_0
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->setVox(Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/ifengyu/intercom/lite/e/h/a;->a(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method
