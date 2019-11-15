.class public Lcom/mi/mimsgsdk/log/upload/LogUploadCommandListener;
.super Ljava/lang/Object;
.source "LogUploadCommandListener.java"

# interfaces
.implements Lcom/mi/mimsgsdk/service/MnsPacketDispatcher$PacketDataHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/log/upload/LogUploadCommandListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/log/upload/LogUploadCommandListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAcceptPacket(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Z
    .locals 2
    .param p1    # Lcom/mi/milinkforgame/sdk/aidl/PacketData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "opensdk.push.upload_log"

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processPacketData(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Z
    .locals 4
    .param p1    # Lcom/mi/milinkforgame/sdk/aidl/PacketData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    sget-object v0, Lcom/mi/mimsgsdk/log/upload/LogUploadCommandListener;->TAG:Ljava/lang/String;

    const-string v1, "received upload log push"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/Utils$UploadLogPush;->parseFrom([B)Lcom/mi/mimsgsdk/proto/Utils$UploadLogPush;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->parseFrom(Lcom/mi/mimsgsdk/proto/Utils$UploadLogPush;)Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;

    move-result-object v0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/mi/mimsgsdk/controller/MessageController;->uploadLogs(ZLcom/mi/mimsgsdk/log/upload/UploadLogParameter;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/log/upload/LogUploadCommandListener;->TAG:Ljava/lang/String;

    const-string v2, "parse UploadLogPush fail"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
