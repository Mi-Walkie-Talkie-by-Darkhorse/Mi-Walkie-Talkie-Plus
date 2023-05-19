.class public Lcom/ifengyu/intercom/l/b/d/b;
.super Ljava/lang/Object;
.source "Mi3CommendParser.java"

# interfaces
.implements Lcom/ifengyu/blelib/c/d;


# static fields
.field private static final a:Ljava/lang/String; = "b"


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

    if-eq p1, v0, :cond_8

    const/16 v0, 0x4e24

    if-eq p1, v0, :cond_7

    const/16 v0, 0x4e2b

    if-eq p1, v0, :cond_6

    const/16 v0, 0x4e35

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4e42

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4e53

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4e55

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4e2d

    if-eq p1, v0, :cond_6

    const/16 v0, 0x4e2e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x4e3b

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4e3c

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4e3f

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4e40

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4e5d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4e5e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4e67

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4e68

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown commendId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->parseFrom([B)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    move-result-object p2

    goto :goto_1

    .line 3
    :cond_2
    invoke-static {p2}, Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo;->parseFrom([B)Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo;

    move-result-object p2

    goto :goto_1

    .line 4
    :cond_3
    invoke-static {p2}, Lcom/ifengyu/intercom/protos/BleProtos$ImportConfigFile;->parseFrom([B)Lcom/ifengyu/intercom/protos/BleProtos$ImportConfigFile;

    move-result-object p2

    goto :goto_1

    .line 5
    :cond_4
    invoke-static {p2}, Lcom/ifengyu/intercom/protos/BleProtos$Channel;->parseFrom([B)Lcom/ifengyu/intercom/protos/BleProtos$Channel;

    move-result-object p2

    goto :goto_1

    .line 6
    :cond_5
    invoke-static {p2}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->parseFrom([B)Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object p2

    goto :goto_1

    .line 7
    :cond_6
    invoke-static {p2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->parseFrom([B)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    move-result-object p2

    goto :goto_1

    .line 8
    :cond_7
    invoke-static {p2}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->parseFrom([B)Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    move-result-object p2

    goto :goto_1

    .line 9
    :cond_8
    invoke-static {p2}, Lcom/ifengyu/intercom/protos/BleProtos$PublicKey;->parseFrom([B)Lcom/ifengyu/intercom/protos/BleProtos$PublicKey;

    move-result-object p2

    .line 10
    :goto_1
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 11
    sget-object v0, Lcom/ifengyu/intercom/l/b/d/b;->a:Ljava/lang/String;

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

    .line 12
    :cond_9
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-direct {v0, p1, p2}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    .line 13
    sget-object v0, Lcom/ifengyu/intercom/l/b/d/b;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/ifengyu/library/utils/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    new-instance p2, Lcom/ifengyu/blelib/c/c;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    return-object p2
.end method
