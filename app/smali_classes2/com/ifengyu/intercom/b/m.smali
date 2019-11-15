.class public Lcom/ifengyu/intercom/b/m;
.super Ljava/lang/Object;
.source "DolphinCmdUtils.java"


# direct methods
.method public static a(III)I
    .locals 2

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :pswitch_2
    if-nez p2, :cond_1

    add-int/lit8 v0, p1, 0x29

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    add-int/lit8 v0, p1, 0x7d

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;
    .locals 5
    .param p0    # Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getNo()I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    :goto_0
    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasNo()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getNo()I

    move-result v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasType()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->getNumber()I

    move-result v2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasName()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getName()Lcom/google/protobuf/ByteString;

    move-result-object v2

    const-string v3, "GB2312"

    invoke-virtual {v2, v3}, Lcom/google/protobuf/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v2

    :goto_4
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasCssType()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssType()I

    move-result v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssCode()I

    move-result v3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssInvert()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/ifengyu/intercom/b/m;->a(III)I

    move-result v2

    :goto_5
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq2()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq2()I

    move-result v2

    :goto_6
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasCssType2()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssType2()I

    move-result v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssCode2()I

    move-result v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssInvert2()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/ifengyu/intercom/b/m;->a(III)I

    move-result v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f(I)V

    :goto_7
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getNo()I

    move-result v2

    goto/16 :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    goto :goto_2

    :cond_4
    const-string v2, ""
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_4

    :cond_6
    move v2, v1

    goto :goto_5

    :cond_7
    move v2, v1

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;
    .locals 6
    .param p0    # Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v1

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getNo()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    :goto_0
    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasNo()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getNo()I

    move-result v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasType()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->getNumber()I

    move-result v1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasName()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getName()Lcom/google/protobuf/ByteString;

    move-result-object v1

    const-string v3, "GB2312"

    invoke-virtual {v1, v3}, Lcom/google/protobuf/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v1

    :goto_4
    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasCssType()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssType()I

    move-result v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssCode()I

    move-result v3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssInvert()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/ifengyu/intercom/b/m;->a(III)I

    move-result v1

    :goto_5
    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d(I)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v1

    :goto_6
    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e(I)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasCssType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssType()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssInvert()I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/ifengyu/intercom/b/m;->a(III)I

    move-result v0

    :cond_0
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f(I)V

    :goto_7
    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getNo()I

    move-result v1

    goto/16 :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    goto :goto_2

    :cond_4
    const-string v1, ""
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_5
    move v1, v0

    goto :goto_4

    :cond_6
    move v1, v0

    goto :goto_5

    :cond_7
    move v1, v0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public static a()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-virtual {v0, v1, v2, v2}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-virtual {v0, v1, p0, p1}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_UPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-virtual {v0, v1, p0, v2}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_UPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-virtual {v0, v1, v2, p0}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0
.end method

.method public static b(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 12

    sget v0, Lcom/ifengyu/intercom/b/w;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v10

    sget-object v11, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_INSERT:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(Ljava/lang/Long;IILjava/lang/String;IIII)V

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v6

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(Ljava/lang/Long;IILjava/lang/String;IIII)V

    invoke-virtual {v10, v11, v0, v1}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_INSERT:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0
.end method

.method public static b(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_DELETE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-virtual {v0, v1, p0, v2}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_DELETE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-virtual {v0, v1, v2, p0}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0
.end method

.method public static c(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 12

    sget v0, Lcom/ifengyu/intercom/b/w;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v10

    sget-object v11, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_MODIFY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(Ljava/lang/Long;IILjava/lang/String;IIII)V

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v6

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(Ljava/lang/Long;IILjava/lang/String;IIII)V

    invoke-virtual {v10, v11, v0, v1}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_MODIFY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0
.end method
