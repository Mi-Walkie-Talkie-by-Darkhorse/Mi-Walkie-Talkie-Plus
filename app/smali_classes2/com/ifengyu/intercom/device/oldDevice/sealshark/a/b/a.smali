.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;
.super Lcom/ifengyu/intercom/device/oldDevice/u/a;
.source "SealCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>(ILcom/google/protobuf/Message;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/u/a;-><init>(ILcom/google/protobuf/Message;)V

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->a(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;)I

    move-result v0

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->b(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;)Lcom/google/protobuf/Message;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/u/a;-><init>(ILcom/google/protobuf/Message;)V

    return-void
.end method

.method public static c([BI)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->d(I)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    const/16 v1, 0x4e22

    const-string v2, "SealCommand"

    if-eq p1, v1, :cond_9

    const/16 v1, 0x4e25

    if-eq p1, v1, :cond_8

    const/16 v1, 0x4e28

    if-eq p1, v1, :cond_7

    const/16 v1, 0x4e2b

    if-eq p1, v1, :cond_6

    const/16 v1, 0x4e2e

    if-eq p1, v1, :cond_5

    const/16 v1, 0x4e30

    if-eq p1, v1, :cond_4

    const/16 v1, 0x4e33

    if-eq p1, v1, :cond_3

    const/16 v1, 0x4e39

    if-eq p1, v1, :cond_2

    const/16 v1, 0x4e35

    if-eq p1, v1, :cond_1

    const/16 v1, 0x4e36

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;

    move-result-object p0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btEarScanItem:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->e(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object p0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btEarScanControl:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->e(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    goto/16 :goto_0

    .line 9
    :cond_2
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object p0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userActionStatistics:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->e(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    goto/16 :goto_0

    .line 12
    :cond_3
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    move-result-object p0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btEarConnectState:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->e(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    goto/16 :goto_0

    .line 15
    :cond_4
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;

    move-result-object p0

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locationInfo:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->e(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    goto/16 :goto_0

    .line 18
    :cond_5
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    move-result-object p0

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upGradeFileResponse:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->e(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    goto/16 :goto_0

    .line 21
    :cond_6
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object p0

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channelInfoOperate:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->e(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    goto :goto_0

    .line 24
    :cond_7
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    move-result-object p0

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channelStateOperate:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->e(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    goto :goto_0

    .line 27
    :cond_8
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceParam:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->e(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    goto :goto_0

    .line 30
    :cond_9
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    move-result-object p0

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sealConnect:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->e(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    .line 33
    :goto_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->c()Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    move-result-object p0

    return-object p0
.end method
