.class public Lcom/ifengyu/intercom/node/transport/g;
.super Ljava/lang/Object;
.source "SharkCommandHelper.java"


# direct methods
.method public static a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->setResult(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->setOption(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;

    move-result-object v0

    const-string v1, "SharkCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChannelInfoOperateReceiveSuccessMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;
    .locals 5

    const/4 v3, 0x1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->setOption(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;

    sget-object v0, Lcom/ifengyu/intercom/node/transport/g$1;->b:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;

    move-result-object v0

    const-string v1, "SharkCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChannelInfoOperateQuery:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_0
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->getChBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_PUBLIC:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChNo(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChRxFreq(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChTxFreq(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GB2312"

    invoke-static {v3, v4}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChRxCss(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChTxCss(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->setCh(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v2

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_REMOTE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_USERDEF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->getChBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChNo(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_PUBLIC:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->setCh(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v2

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_REMOTE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_USERDEF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    goto :goto_2

    :pswitch_2
    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->getChBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_PUBLIC:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->setCh(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v2

    if-ne v2, v3, :cond_6

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_REMOTE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    goto :goto_3

    :cond_6
    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_USERDEF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;ZLcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->setOption(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    sget-object v1, Lcom/ifengyu/intercom/node/transport/g$1;->a:[I

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    move-result-object v0

    const-string v1, "SharkCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChannelStateOperateMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_0
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_PUBLIC:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChNo(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    if-eqz p1, :cond_3

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->setCh1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v2

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_REMOTE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_USERDEF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->setCh2(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Z)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;->SHARK_ST_UPDATE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->setOption(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->setStateMode(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    move-result-object v0

    const-string v1, "SharkCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSetDoubleCHModeChannelStateOperate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_CONNECT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->setConnCode(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->setDeviceId(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->setDeviceType(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;->SHARK_OWN_APP:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->setAppMode(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    move-result-object v0

    const-string v1, "SharkCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectQuery:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static a()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_ON:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->setFullInquiry(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    move-result-object v0

    const-string v1, "SharkCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceParamQuery:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static a(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChTxPower(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->setCh(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    move-result-object v0

    const-string v1, "SharkCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceParamQuery:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    :try_start_0
    const-string v0, "GB2312"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->setDeviceName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->setBleName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    move-result-object v0

    const-string v1, "SharkCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceParamQuery:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->setUserId(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    :try_start_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GB2312"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->setUserName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->setLongitude(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->setLatitude(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getAltitude()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->setAltitude(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->setTimeSync(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    move-result-object v0

    const-string v1, "SharkCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocationSyncMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->setOption(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->getChBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_PUBLIC:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChNo(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->setCh(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;

    move-result-object v0

    const-string v1, "SharkCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChannelInfoSingleChannelQueryMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v2

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_REMOTE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_USERDEF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    goto :goto_0
.end method

.method public static b()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->setActivate(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    move-result-object v0

    const-string v1, "SharkCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceParamQuery:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static b(Z)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_ON:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->setShareLoc(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    move-result-object v0

    const-string v1, "SharkCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceParamQuery:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    goto :goto_0
.end method

.method public static c()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;
    .locals 6

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->setTimeStamp(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    move-result-object v0

    const-string v1, "SharkCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceParamQuery:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static d()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;

    move-result-object v0

    const-string v1, "SharkCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSharkUserActionStatisticsQueryMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
