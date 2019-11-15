.class public Lcom/ifengyu/intercom/node/m;
.super Lcom/ifengyu/intercom/node/a;
.source "SealCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/node/m$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/node/m$a;)V
    .locals 2

    invoke-static {p1}, Lcom/ifengyu/intercom/node/m$a;->a(Lcom/ifengyu/intercom/node/m$a;)I

    move-result v0

    invoke-static {p1}, Lcom/ifengyu/intercom/node/m$a;->b(Lcom/ifengyu/intercom/node/m$a;)Lcom/google/protobuf/Message;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/node/a;-><init>(ILcom/google/protobuf/Message;)V

    return-void
.end method

.method public static a([BI)Lcom/ifengyu/intercom/node/m;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/node/m$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/m$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/m$a;->a(I)Lcom/ifengyu/intercom/node/m$a;

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/m$a;->a()Lcom/ifengyu/intercom/node/m;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v1

    const-string v2, "SealCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceParam:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/m$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/m$a;

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    move-result-object v1

    const-string v2, "SealCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channelStateOperate:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/m$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/m$a;

    goto :goto_0

    :pswitch_3
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v1

    const-string v2, "SealCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channelInfoOperate:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/m$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/m$a;

    goto :goto_0

    :pswitch_4
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    move-result-object v1

    const-string v2, "SealCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upGradeFileResponse:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/m$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/m$a;

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;

    move-result-object v1

    const-string v2, "SealCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locationInfo:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/m$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/m$a;

    goto/16 :goto_0

    :pswitch_6
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    move-result-object v1

    const-string v2, "SealCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "btEarConnectState:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/m$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/m$a;

    goto/16 :goto_0

    :pswitch_7
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v1

    const-string v2, "SealCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "btEarScanControl:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/m$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/m$a;

    goto/16 :goto_0

    :pswitch_8
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;

    move-result-object v1

    const-string v2, "SealCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "btEarScanItem:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/m$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/m$a;

    goto/16 :goto_0

    :pswitch_9
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object v1

    const-string v2, "SealCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userActionStatistics:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/m$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/m$a;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4e25
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
