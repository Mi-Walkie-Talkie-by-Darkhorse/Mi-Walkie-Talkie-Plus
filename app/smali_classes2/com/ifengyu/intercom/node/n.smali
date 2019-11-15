.class public Lcom/ifengyu/intercom/node/n;
.super Lcom/ifengyu/intercom/node/a;
.source "SharkCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/node/n$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/node/n$a;)V
    .locals 2

    invoke-static {p1}, Lcom/ifengyu/intercom/node/n$a;->a(Lcom/ifengyu/intercom/node/n$a;)I

    move-result v0

    invoke-static {p1}, Lcom/ifengyu/intercom/node/n$a;->b(Lcom/ifengyu/intercom/node/n$a;)Lcom/google/protobuf/Message;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/node/a;-><init>(ILcom/google/protobuf/Message;)V

    return-void
.end method

.method public static a([BI)Lcom/ifengyu/intercom/node/n;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/node/n$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/n$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/n$a;->a(I)Lcom/ifengyu/intercom/node/n$a;

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/n$a;->a()Lcom/ifengyu/intercom/node/n;

    move-result-object v0

    return-object v0

    :sswitch_0
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->parseFrom([B)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    move-result-object v1

    const-string v2, "SharkCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceParam:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/n$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/n$a;

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->parseFrom([B)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    move-result-object v1

    const-string v2, "SharkCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channelStateOperate:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/n$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/n$a;

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->parseFrom([B)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;

    move-result-object v1

    const-string v2, "SharkCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channelInfoOperate:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/n$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/n$a;

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;->parseFrom([B)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    move-result-object v1

    const-string v2, "SharkCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upGradeFileResponse:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/n$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/n$a;

    goto/16 :goto_0

    :sswitch_4
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->parseFrom([B)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    move-result-object v1

    const-string v2, "SharkCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locationInfo:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/n$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/n$a;

    goto/16 :goto_0

    :sswitch_5
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->parseFrom([B)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;

    move-result-object v1

    const-string v2, "SharkCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userActionStatistics:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/n$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/n$a;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4e25 -> :sswitch_0
        0x4e28 -> :sswitch_1
        0x4e2b -> :sswitch_2
        0x4e2e -> :sswitch_3
        0x4e30 -> :sswitch_4
        0x4e39 -> :sswitch_5
    .end sparse-switch
.end method
