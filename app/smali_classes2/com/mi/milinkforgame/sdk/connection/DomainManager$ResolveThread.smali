.class Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;
.super Ljava/lang/Thread;
.source "DomainManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/connection/DomainManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolveThread"
.end annotation


# instance fields
.field private mDomain:Ljava/lang/String;

.field private volatile mIsCompleted:Z

.field private volatile mIsExpired:Z

.field private volatile mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/mi/milinkforgame/sdk/connection/DomainManager;


# direct methods
.method public constructor <init>(Lcom/mi/milinkforgame/sdk/connection/DomainManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->this$0:Lcom/mi/milinkforgame/sdk/connection/DomainManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->mDomain:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->mIsExpired:Z

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->mKey:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->mIsCompleted:Z

    iput-object p2, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->mDomain:Ljava/lang/String;

    iput-object p3, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->mIsCompleted:Z

    return v0
.end method

.method public run()V
    .locals 7

    const/16 v0, 0x2712

    const/4 v6, 0x0

    const/4 v5, 0x0

    iput-boolean v6, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->mIsCompleted:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->mDomain:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-boolean v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->mIsExpired:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->this$0:Lcom/mi/milinkforgame/sdk/connection/DomainManager;

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->mDomain:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->access$000(Lcom/mi/milinkforgame/sdk/connection/DomainManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->mIsCompleted:Z

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->this$0:Lcom/mi/milinkforgame/sdk/connection/DomainManager;

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->mDomain:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->access$100(Lcom/mi/milinkforgame/sdk/connection/DomainManager;JLjava/lang/String;Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "DomainManager"

    const-string v4, "Inet Address Analyze fail exception : "

    invoke-static {v1, v4, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v6, 0x2710

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v4, "DomainManager"

    const-string v6, "Inet Address Analyze fail exception : "

    invoke-static {v4, v6, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v6, v0

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v4, "DomainManager"

    const-string v6, "Inet Address Analyze fail exception : "

    invoke-static {v4, v6, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v6, v0

    goto :goto_0
.end method

.method public setExpired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->mIsExpired:Z

    return-void
.end method
