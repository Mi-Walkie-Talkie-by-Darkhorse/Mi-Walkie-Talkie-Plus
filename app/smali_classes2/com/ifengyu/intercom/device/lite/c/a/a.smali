.class public Lcom/ifengyu/intercom/device/lite/c/a/a;
.super Ljava/lang/Object;
.source "CmdHelper.java"


# direct methods
.method public static a()Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;[B)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequest;
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
    invoke-static {p0}, Lcom/ifengyu/library/utils/r;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 6
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequest$Builder;->setDeviceId(I)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequest$Builder;

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/ifengyu/blelib/c/a;->h([B)Z

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

.method private static c(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->setDevInfo(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method

.method public static d([B)Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 3
    array-length v1, p0

    if-lez v1, :cond_0

    .line 4
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest$Builder;->setToken(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest$Builder;

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->START:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    .line 3
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->setFCmd(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;->MCU_UPLOAD_FILE:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    .line 4
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->setFType(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    move-result-object v0

    return-object v0
.end method

.method public static f()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;
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

.method public static g(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
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

    .line 5
    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->setChannelInfo(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    .line 6
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;

    move-result-object p0

    return-object p0
.end method

.method public static h()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
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

.method public static i(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->setBand(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/device/lite/c/a/a;->c(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method

.method public static j(Z)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->ON:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->setBootVoice(Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/device/lite/c/a/a;->c(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method

.method public static k(IIIII)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setSeq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setRxFreq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setRxCss(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setTxFreq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p4}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setTxCss(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object p0

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->setChannelInfo(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->setChannelInfo(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;

    move-result-object p0

    return-object p0
.end method

.method public static m(Z)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->ON:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->setKeyVoice(Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/device/lite/c/a/a;->c(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->setLangType(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/device/lite/c/a/a;->c(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->setName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/device/lite/c/a/a;->c(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method

.method public static p(Z)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->ON:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->setPolite(Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/device/lite/c/a/a;->c(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method

.method public static q(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->setSq(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/device/lite/c/a/a;->c(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method

.method public static r(Z)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->ON:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->setVox(Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/device/lite/c/a/a;->c(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p0

    return-object p0
.end method
