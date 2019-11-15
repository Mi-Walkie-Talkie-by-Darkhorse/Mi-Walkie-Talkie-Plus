.class public Lcom/ifengyu/intercom/b/aa;
.super Ljava/lang/Object;
.source "SealCmdUtils.java"


# direct methods
.method public static a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 10
    .param p0    # Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, -0x1

    :try_start_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChNo()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChType()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->getNumber()I

    move-result v5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChNo()I

    move-result v6

    invoke-static {v5, v6}, Lcom/ifengyu/intercom/b/v;->b(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/Long;)V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChNo()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChNo()I

    move-result v5

    :goto_0
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChType()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->getNumber()I

    move-result v5

    :goto_1
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChTxPower()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChTxPower()I

    move-result v5

    :goto_2
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChRxFreq()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChRxFreq()I

    move-result v5

    :goto_3
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChTxFreq()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChTxFreq()I

    move-result v5

    :goto_4
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e(I)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v5

    if-ne v5, v9, :cond_a

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChName()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChName()Lcom/google/protobuf/ByteString;

    move-result-object v5

    const-string v6, "GB2312"

    invoke-virtual {v5, v6}, Lcom/google/protobuf/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    :cond_1
    :goto_6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChSq()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChSq()I

    move-result v5

    :goto_7
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChVox()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChVox()I

    move-result v5

    :goto_8
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChRxCss()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChRxCss()I

    move-result v5

    :goto_9
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChTxCss()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChTxCss()I

    move-result v5

    :goto_a
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChElim()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChElim()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v5

    sget-object v6, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v5, v6, :cond_12

    move v5, v2

    :goto_b
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Z)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChBand()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChBand()I

    move-result v4

    :cond_2
    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChPolite()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChPolite()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v4

    sget-object v5, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v4, v5, :cond_13

    move v4, v2

    :goto_c
    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(Z)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChType()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->getNumber()I

    move-result v4

    if-eq v4, v9, :cond_14

    :goto_d
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(Z)V

    :cond_3
    :goto_e
    return-object v0

    :cond_4
    move v5, v4

    goto/16 :goto_0

    :cond_5
    move v5, v4

    goto/16 :goto_1

    :cond_6
    move v5, v4

    goto/16 :goto_2

    :cond_7
    move v5, v4

    goto/16 :goto_3

    :cond_8
    move v5, v4

    goto/16 :goto_4

    :cond_9
    move-object v5, v1

    goto/16 :goto_5

    :cond_a
    invoke-static {}, Lcom/ifengyu/intercom/b/v;->b()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChName()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChName()Lcom/google/protobuf/ByteString;

    move-result-object v5

    const-string v6, "GB2312"

    invoke-virtual {v5, v6}, Lcom/google/protobuf/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_f
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_e

    :cond_b
    move-object v5, v1

    goto :goto_f

    :cond_c
    :try_start_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "Public Channel L%1$02d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_d
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v5

    if-ne v5, v2, :cond_1

    const-string v5, "Amateur Channel H%1$02d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :cond_e
    move v5, v4

    goto/16 :goto_7

    :cond_f
    move v5, v4

    goto/16 :goto_8

    :cond_10
    move v5, v4

    goto/16 :goto_9

    :cond_11
    move v5, v4

    goto/16 :goto_a

    :cond_12
    move v5, v3

    goto/16 :goto_b

    :cond_13
    move v4, v3

    goto/16 :goto_c

    :cond_14
    move v2, v3

    goto/16 :goto_d
.end method

.method public static a()V
    .locals 3

    const/4 v0, 0x5

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/f;->a()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v1

    const/16 v2, 0x4e23

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static a(I)V
    .locals 3

    const/4 v0, 0x5

    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->d(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v1

    const/16 v2, 0x4e24

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 3

    const/4 v0, 0x5

    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;

    move-result-object v1

    const/16 v2, 0x4e30

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/bean/BtEarBean;)V
    .locals 3

    const/4 v0, 0x5

    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/bean/BtEarBean;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    move-result-object v1

    const/16 v2, 0x4e32

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method private static a(Lcom/ifengyu/intercom/node/SendDataWrap;)V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)Z

    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 3

    const/4 v0, 0x5

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;->SEAL_ST_UPDATE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;

    invoke-static {p0, v1}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    move-result-object v1

    const/16 v2, 0x4e27

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x5

    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v1

    const/16 v2, 0x4e24

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static a(Z)V
    .locals 3

    const/4 v0, 0x5

    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->a(Z)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v1

    const/16 v2, 0x4e24

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static b()V
    .locals 3

    const/4 v0, 0x5

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/f;->b()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v1

    const/16 v2, 0x4e24

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static b(I)V
    .locals 3

    const/4 v0, 0x5

    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->a(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v1

    const/16 v2, 0x4e24

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 3

    const/4 v0, 0x5

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_INSERT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {p0, v1}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v1

    const/16 v2, 0x4e2a

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static b(Z)V
    .locals 3

    const/4 v0, 0x5

    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->b(Z)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v1

    const/16 v2, 0x4e24

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static c()V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;->SEAL_ST_QUERY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    move-result-object v1

    const/16 v2, 0x4e26

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static c(I)V
    .locals 3

    const/4 v0, 0x5

    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->b(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v1

    const/16 v2, 0x4e24

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static c(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 3

    const/4 v0, 0x5

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_MODIFY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {p0, v1}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v1

    const/16 v2, 0x4e2a

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static c(Z)V
    .locals 3

    const/4 v0, 0x5

    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->c(Z)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v1

    const/16 v2, 0x4e24

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static d()V
    .locals 3

    const/4 v0, 0x5

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_QUERY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {v1}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v1

    const/16 v2, 0x4e29

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static d(I)V
    .locals 3

    const/4 v0, 0x5

    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->c(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v1

    const/16 v2, 0x4e24

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static d(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 3

    const/4 v0, 0x5

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_DELETE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {p0, v1}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v1

    const/16 v2, 0x4e2a

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static d(Z)V
    .locals 3

    const/4 v0, 0x5

    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->d(Z)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v1

    const/16 v2, 0x4e24

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static e()V
    .locals 3

    const/4 v0, 0x5

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/f;->c()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    move-result-object v1

    const/16 v2, 0x4e31

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static e(I)V
    .locals 3

    const/4 v0, 0x5

    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->e(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v1

    const/16 v2, 0x4e24

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static e(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 3

    const/4 v0, 0x5

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_QUERY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {p0, v1}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v1

    const/16 v2, 0x4e29

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static f()V
    .locals 3

    const/4 v0, 0x5

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/f;->d()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v1

    const/16 v2, 0x4e34

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static f(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 3

    const/4 v0, 0x5

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_QUERY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {p0, v1}, Lcom/ifengyu/intercom/node/transport/f;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v1

    const/16 v2, 0x4e29

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static g()V
    .locals 3

    const/4 v0, 0x5

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/f;->e()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v1

    const/16 v2, 0x4e34

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static h()V
    .locals 3

    const/4 v0, 0x5

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/f;->f()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    move-result-object v1

    const/16 v2, 0x4e32

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static i()V
    .locals 3

    const/4 v0, 0x5

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/f;->g()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object v1

    const/16 v2, 0x4e38

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method
