.class public Lcom/ifengyu/intercom/device/lite/c/b/a;
.super Ljava/lang/Object;
.source "LiteCommendParser.java"

# interfaces
.implements Lcom/ifengyu/blelib/c/d;


# static fields
.field private static final a:Ljava/lang/String; = "a"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[B)Lcom/ifengyu/blelib/c/c;
    .locals 3
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x4e22

    if-eq p1, v0, :cond_6

    const/16 v0, 0x4e24

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4e26

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4e28

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4e2d

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4e2f

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4e33

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4e38

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4e2a

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4e2b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4e35

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4e36

    if-ne p1, v0, :cond_0

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodFskResponse;->parseFrom([B)Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodFskResponse;

    move-result-object p2

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown commendId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_1
    invoke-static {p2}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;->parseFrom([B)Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {p2}, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgResponse;->parseFrom([B)Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgResponse;

    move-result-object p2

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {p2}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;->parseFrom([B)Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_4
    invoke-static {p2}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->parseFrom([B)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    move-result-object p2

    goto :goto_0

    .line 7
    :cond_5
    invoke-static {p2}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;->parseFrom([B)Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;

    move-result-object p2

    goto :goto_0

    .line 8
    :cond_6
    invoke-static {p2}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->parseFrom([B)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    move-result-object p2

    .line 9
    :goto_0
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10
    sget-object v0, Lcom/ifengyu/intercom/device/lite/c/b/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseFrom--> [ cmdId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/google/protobuf/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_7
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-direct {v0, p1, p2}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 12
    sget-object p2, Lcom/ifengyu/intercom/device/lite/c/b/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/ifengyu/library/utils/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method
