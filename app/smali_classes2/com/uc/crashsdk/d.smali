.class public final Lcom/uc/crashsdk/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/uc/crashsdk/export/ICrashClient; = null

.field private static b:I = 0x3

.field private static volatile c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/webkit/ValueCallback<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/webkit/ValueCallback<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/webkit/ValueCallback<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/webkit/ValueCallback<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/d;->g:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 21
    sget-object v0, Lcom/uc/crashsdk/d;->a:Lcom/uc/crashsdk/export/ICrashClient;

    if-eqz v0, :cond_0

    .line 22
    :try_start_0
    invoke-interface {v0, p0}, Lcom/uc/crashsdk/export/ICrashClient;->onBeforeUploadLog(Ljava/io/File;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 23
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/uc/crashsdk/d;->a:Lcom/uc/crashsdk/export/ICrashClient;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p0, p1}, Lcom/uc/crashsdk/export/ICrashClient;->onGetCallbackInfo(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static a(Lcom/uc/crashsdk/export/ICrashClient;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/uc/crashsdk/d;->a:Lcom/uc/crashsdk/export/ICrashClient;

    return-void
.end method

.method public static a(Ljava/lang/String;II)V
    .locals 5

    .line 35
    sget-object v0, Lcom/uc/crashsdk/d;->a:Lcom/uc/crashsdk/export/ICrashClient;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p0, p1, p2}, Lcom/uc/crashsdk/export/ICrashClient;->onAddCrashStats(Ljava/lang/String;II)V

    .line 37
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 38
    sget-object v0, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/ValueCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "processName"

    .line 41
    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key"

    .line 42
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "count"

    .line 43
    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 45
    :try_start_2
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 46
    :cond_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 2
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    const-string p1, "onLogGenerated file name is null!"

    const-string p2, "crashsdk"

    .line 3
    invoke-static {p2, p1, p0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5
    sget-object v1, Lcom/uc/crashsdk/d;->a:Lcom/uc/crashsdk/export/ICrashClient;

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 7
    :try_start_0
    sget-object v2, Lcom/uc/crashsdk/d;->a:Lcom/uc/crashsdk/export/ICrashClient;

    invoke-interface {v2, v1, p2}, Lcom/uc/crashsdk/export/ICrashClient;->onLogGenerated(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v2, Lcom/uc/crashsdk/d;->a:Lcom/uc/crashsdk/export/ICrashClient;

    invoke-interface {v2, p1, v1, p2}, Lcom/uc/crashsdk/export/ICrashClient;->onClientProcessLogGenerated(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 9
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 10
    :cond_2
    :goto_0
    sget-object v1, Lcom/uc/crashsdk/d;->c:Ljava/util/List;

    if-nez v0, :cond_3

    .line 11
    sget-object v1, Lcom/uc/crashsdk/d;->d:Ljava/util/List;

    :cond_3
    if-eqz v1, :cond_6

    .line 12
    monitor-enter v1

    .line 13
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/ValueCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 14
    :try_start_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "filePathName"

    .line 15
    invoke-virtual {v4, v5, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4

    const-string v5, "processName"

    .line 16
    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v5, "logType"

    .line 17
    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-interface {v3, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 19
    :try_start_3
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 20
    :cond_5
    monitor-exit v1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_6
    return-void
.end method

.method public static a(Z)V
    .locals 5

    .line 24
    sget-object v0, Lcom/uc/crashsdk/d;->a:Lcom/uc/crashsdk/export/ICrashClient;

    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {v0, p0}, Lcom/uc/crashsdk/export/ICrashClient;->onCrashRestarting(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 26
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 27
    :cond_0
    :goto_0
    sget-object v0, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 28
    sget-object v0, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    monitor-enter v0

    .line 29
    :try_start_1
    sget-object v1, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/ValueCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 30
    :try_start_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "isJava"

    .line 31
    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 33
    :try_start_3
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 34
    :cond_1
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_2
    return-void
.end method

.method public static a(Landroid/webkit/ValueCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/uc/crashsdk/d;->c:Ljava/util/List;

    if-nez v0, :cond_1

    .line 50
    sget-object v0, Lcom/uc/crashsdk/d;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/uc/crashsdk/d;->c:Ljava/util/List;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/d;->c:Ljava/util/List;

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lcom/uc/crashsdk/d;->c:Ljava/util/List;

    monitor-enter v0

    .line 55
    :try_start_1
    sget-object v1, Lcom/uc/crashsdk/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/uc/crashsdk/d;->b:I

    if-lt v1, v2, :cond_2

    const/4 p0, 0x0

    .line 56
    monitor-exit v0

    return p0

    .line 57
    :cond_2
    sget-object v1, Lcom/uc/crashsdk/d;->c:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public static b(Landroid/webkit/ValueCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/uc/crashsdk/d;->d:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/uc/crashsdk/d;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/uc/crashsdk/d;->d:Ljava/util/List;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/d;->d:Ljava/util/List;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/uc/crashsdk/d;->d:Ljava/util/List;

    monitor-enter v0

    .line 7
    :try_start_1
    sget-object v1, Lcom/uc/crashsdk/d;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/uc/crashsdk/d;->b:I

    if-lt v1, v2, :cond_2

    const/4 p0, 0x0

    .line 8
    monitor-exit v0

    return p0

    .line 9
    :cond_2
    sget-object v1, Lcom/uc/crashsdk/d;->d:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public static c(Landroid/webkit/ValueCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/uc/crashsdk/d;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    monitor-enter v0

    .line 7
    :try_start_1
    sget-object v1, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/uc/crashsdk/d;->b:I

    if-lt v1, v2, :cond_2

    const/4 p0, 0x0

    .line 8
    monitor-exit v0

    return p0

    .line 9
    :cond_2
    sget-object v1, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public static d(Landroid/webkit/ValueCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/uc/crashsdk/d;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    monitor-enter v0

    .line 7
    :try_start_1
    sget-object v1, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/uc/crashsdk/d;->b:I

    if-lt v1, v2, :cond_2

    const/4 p0, 0x0

    .line 8
    monitor-exit v0

    return p0

    .line 9
    :cond_2
    sget-object v1, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method
