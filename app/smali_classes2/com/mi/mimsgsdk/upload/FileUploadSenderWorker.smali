.class public Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;
.super Ljava/lang/Object;
.source "FileUploadSenderWorker.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKs3AuthToken(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    .locals 6
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->newBuilder()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload rid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->setRid(J)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    invoke-virtual {v1, p2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->setHttpVerb(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    invoke-virtual {v1, p3}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->setContentMd5(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    invoke-virtual {v1, p4}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->setContentType(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->setDate(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    invoke-virtual {v1, p6}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->setCanonicalizedHeaders(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    invoke-virtual {v1, p7}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->setSuffix(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    const/4 v2, 0x1

    if-ne p8, v2, :cond_2

    sget-object v2, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->HEAD:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->setAuthType(Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    :cond_2
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->setVuid(J)Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest$Builder;->build()Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;

    move-result-object v2

    :try_start_0
    new-instance v1, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    const-string v3, "opensdk.mfas.auth"

    invoke-virtual {v1, v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    sget-object v3, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MsgPacketData is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    const-string v4, "UploadFileLoad  startUploadFile start upload 2.1"

    invoke-static {v3, v4}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v3

    const/16 v4, 0x2710

    invoke-virtual {v3, v1, v4}, Lcom/mi/mimsgsdk/controller/MessageController;->sendRequestSync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;I)Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v1

    sget-object v3, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    const-string v4, "UploadFileLoad  startUploadFile start upload 2.2"

    invoke-static {v3, v4}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->processPacketData(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    sget-object v1, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAuthRequest AuthRequest = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    sget-object v3, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAuthRequest AuthRequest = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAuthRequest AuthRequest = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static processPacketData(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;
    .locals 5
    .param p0    # Lcom/mi/milinkforgame/sdk/aidl/PacketData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authPacketData is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    const-string v2, "UploadFileLoad  startUploadFile start upload 2.3"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processPacketData command="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "opensdk.mfas.auth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    const-string v2, "UploadFileLoad  startUploadFile start upload 2.4"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e HexString : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/mi/mimsgsdk/utils/StringUtils;->getHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    const-string v2, "UploadFileLoad  startUploadFile start upload 2.5"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->parseFrom([B)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    move-result-object v1

    sget-object v2, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UploadFileLoad  startUploadFile start upload 2.6, errorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto/16 :goto_0

    :cond_2
    sget-object v1, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    const-string v2, "UploadFileLoad  startUploadFile start upload 2.7"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static testMfasAuth()V
    .locals 0

    return-void
.end method
