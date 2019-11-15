.class public Lcom/mi/milinkforgame/sdk/client/MiLinkClient;
.super Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;
.source "MiLinkClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;,
        Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageFuture;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mi/milinkforgame/sdk/client/MiLinkObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;-><init>(Landroid/content/Context;Lcom/mi/milinkforgame/sdk/client/MiLinkObserver;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mi/milinkforgame/sdk/client/MiLinkClient;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mi/milinkforgame/sdk/client/MiLinkClient;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public init(Lcom/mi/milinkforgame/sdk/interaction/IPacketCallback;Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->initApp()V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->setInitByAppLogin(Z)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;->getInstance()Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;->setCallback(Lcom/mi/milinkforgame/sdk/interaction/IPacketCallback;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->setCallback(Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v0

    const/4 v5, 0x1

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public logoff()V
    .locals 2

    sget-object v0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->TAG:Ljava/lang/String;

    const-string v1, "logoff"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->logoff()V

    return-void
.end method

.method public sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V

    return-void
.end method

.method public sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V

    return-void
.end method

.method public sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ary you kidding me ? packet is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Packet\'s command is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->sendData(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)Z

    return-void
.end method

.method public sendSync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;I)Lcom/mi/milinkforgame/sdk/aidl/PacketData;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ary you kidding me ? packet is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Packet\'s command is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;-><init>(Lcom/mi/milinkforgame/sdk/client/MiLinkClient;Lcom/mi/milinkforgame/sdk/aidl/PacketData;I)V

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;->start()Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageFuture;

    move-result-object v0

    add-int/lit16 v1, p2, 0x1388

    int-to-long v2, v1

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->TAG:Ljava/lang/String;

    const-string v2, "task InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/mi/milinkforgame/sdk/client/MiLinkException;

    if-eqz v2, :cond_2

    sget-object v0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->TAG:Ljava/lang/String;

    const-string v2, "task ExecutionException"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->TAG:Ljava/lang/String;

    const-string v2, "task CancellationException"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task TimeoutException, detailName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
