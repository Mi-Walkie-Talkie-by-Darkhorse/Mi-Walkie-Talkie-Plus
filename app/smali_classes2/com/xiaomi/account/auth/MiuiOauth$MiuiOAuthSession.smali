.class abstract Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;
.super Ljava/util/concurrent/FutureTask;
.source "MiuiOauth.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/auth/MiuiOauth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MiuiOAuthSession"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/content/ServiceConnection;",
        "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field mAuthService:Lcom/xiaomi/account/auth/XiaomiAuthService;

.field mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;

.field final synthetic this$0:Lcom/xiaomi/account/auth/MiuiOauth;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/auth/MiuiOauth;Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    new-instance v0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession$1;

    invoke-direct {v0, p1}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession$1;-><init>(Lcom/xiaomi/account/auth/MiuiOauth;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession$2;-><init>(Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;Lcom/xiaomi/account/auth/MiuiOauth;)V

    iput-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;

    return-void
.end method

.method private close()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->unbind()V

    return-void
.end method

.method private ensureNotOnMainThread()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    invoke-static {v1}, Lcom/xiaomi/account/auth/MiuiOauth;->access$500(Lcom/xiaomi/account/auth/MiuiOauth;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "MiuiOauth"

    const-string v2, "calling this from your main thread can lead to deadlock and/or ANRs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    invoke-static {v1}, Lcom/xiaomi/account/auth/MiuiOauth;->access$500(Lcom/xiaomi/account/auth/MiuiOauth;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    throw v0

    :cond_0
    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->ensureNotOnMainThread()V

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v3}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->cancel(Z)Z

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v3}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->cancel(Z)Z

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MiuiOauth"

    const-string v2, "internalGetResult caught Exception and will re-throw"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v3}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->cancel(Z)Z

    :goto_1
    new-instance v0, Landroid/accounts/OperationCanceledException;

    invoke-direct {v0}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "MiuiOauth"

    const-string v2, "internalGetResult caught Exception and will re-throw"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, v3}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->cancel(Z)Z

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    const-string v1, "MiuiOauth"

    const-string v2, "internalGetResult caught Exception and will re-throw"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0, v3}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->cancel(Z)Z

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_5
    const-string v1, "MiuiOauth"

    const-string v2, "internalGetResult caught Exception and will re-throw"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v3}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->cancel(Z)Z

    throw v0

    :cond_2
    :try_start_6
    instance-of v1, v0, Landroid/accounts/OperationCanceledException;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/accounts/OperationCanceledException;

    throw v0

    :cond_3
    instance-of v1, v0, Lcom/xiaomi/account/openauth/XMAuthericationException;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/xiaomi/account/openauth/XMAuthericationException;

    throw v0

    :cond_4
    new-instance v1, Lcom/xiaomi/account/openauth/XMAuthericationException;

    invoke-direct {v1, v0}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private unbind()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->mAuthService:Lcom/xiaomi/account/auth/XiaomiAuthService;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->mAuthService:Lcom/xiaomi/account/auth/XiaomiAuthService;

    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    invoke-static {v0}, Lcom/xiaomi/account/auth/MiuiOauth;->access$500(Lcom/xiaomi/account/auth/MiuiOauth;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method bind()Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.XIAOMI_ACCOUNT_AUTHORIZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    invoke-static {v1}, Lcom/xiaomi/account/auth/MiuiOauth;->access$500(Lcom/xiaomi/account/auth/MiuiOauth;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.XIAOMI_ACCOUNT_AUTHORIZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    invoke-static {v1}, Lcom/xiaomi/account/auth/MiuiOauth;->access$500(Lcom/xiaomi/account/auth/MiuiOauth;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/account/openauth/XMAuthericationException;

    const-string v1, "BIND FAILED"

    invoke-direct {v0, v1}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->setException(Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method abstract doWork(Lcom/xiaomi/account/auth/XiaomiAuthService;Lcom/xiaomi/account/IXiaomiAuthResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getResult()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->getResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/account/auth/XiaomiAuthService;

    invoke-direct {v0, p2}, Lcom/xiaomi/account/auth/XiaomiAuthService;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->mAuthService:Lcom/xiaomi/account/auth/XiaomiAuthService;

    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    invoke-static {v0}, Lcom/xiaomi/account/auth/MiuiOauth;->access$700(Lcom/xiaomi/account/auth/MiuiOauth;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession$3;-><init>(Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->mAuthService:Lcom/xiaomi/account/auth/XiaomiAuthService;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "onServiceDisconnected"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->setException(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/account/openauth/XMAuthericationException;

    const-string v1, "onServiceDisconnected"

    invoke-direct {v0, v1}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected set(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_3

    const-string v0, "extra_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "extra_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/account/openauth/XMAuthericationException;

    const-string v1, "intent == null"

    invoke-direct {v0, v1}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->setException(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    new-instance v0, Lcom/xiaomi/account/openauth/XMAuthericationException;

    const-string v1, "activity == null"

    invoke-direct {v0, v1}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v3, "extra_response"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;

    iget-object v3, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    invoke-static {v3}, Lcom/xiaomi/account/auth/MiuiOauth;->access$600(Lcom/xiaomi/account/auth/MiuiOauth;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->asMiddleActivity(Landroid/app/Activity;Landroid/content/Intent;Lcom/xiaomi/account/IXiaomiAuthResponse;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->close()V

    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->set(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->close()V

    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
