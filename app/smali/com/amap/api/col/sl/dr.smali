.class public final Lcom/amap/api/col/sl/dr;
.super Lcom/amap/api/col/sl/dn;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/sl/dr$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/col/sl/dr;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/amap/api/col/sl/dn;-><init>()V

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/dr$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/sl/dr$a;-><init>(Landroid/os/Looper;B)V

    iput-object v0, p0, Lcom/amap/api/col/sl/dr;->b:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/amap/api/col/sl/dr$a;

    invoke-direct {v0}, Lcom/amap/api/col/sl/dr$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/dr;->b:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetManger"

    const-string v2, "NetManger1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cm;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b()Lcom/amap/api/col/sl/dr;
    .locals 1

    invoke-static {}, Lcom/amap/api/col/sl/dr;->c()Lcom/amap/api/col/sl/dr;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/amap/api/col/sl/ds;Z)Lcom/amap/api/col/sl/du;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/sl/bo;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/sl/dr;->c(Lcom/amap/api/col/sl/ds;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/ds;->h:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/amap/api/col/sl/dq;

    iget v2, p0, Lcom/amap/api/col/sl/ds;->f:I

    iget v3, p0, Lcom/amap/api/col/sl/ds;->g:I

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/amap/api/col/sl/dq;-><init>(IILjava/net/Proxy;Z)V

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ds;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ds;->c()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ds;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/col/sl/dq;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/amap/api/col/sl/du;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/ds;->h:Ljava/net/Proxy;
    :try_end_0
    .catch Lcom/amap/api/col/sl/bo; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static declared-synchronized c()Lcom/amap/api/col/sl/dr;
    .locals 2

    const-class v1, Lcom/amap/api/col/sl/dr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/col/sl/dr;->a:Lcom/amap/api/col/sl/dr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/dr;

    invoke-direct {v0}, Lcom/amap/api/col/sl/dr;-><init>()V

    sput-object v0, Lcom/amap/api/col/sl/dr;->a:Lcom/amap/api/col/sl/dr;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/amap/api/col/sl/dr;->a:Lcom/amap/api/col/sl/dr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d(Lcom/amap/api/col/sl/ds;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/sl/bo;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/api/col/sl/dr;->b(Lcom/amap/api/col/sl/ds;Z)Lcom/amap/api/col/sl/du;
    :try_end_0
    .catch Lcom/amap/api/col/sl/bo; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/api/col/sl/du;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Lcom/amap/api/col/sl/ds;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/sl/bo;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/api/col/sl/dr;->b(Lcom/amap/api/col/sl/ds;Z)Lcom/amap/api/col/sl/du;
    :try_end_0
    .catch Lcom/amap/api/col/sl/bo; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/api/col/sl/du;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final b(Lcom/amap/api/col/sl/ds;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/sl/bo;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lcom/amap/api/col/sl/dr;->a(Lcom/amap/api/col/sl/ds;Z)Lcom/amap/api/col/sl/du;
    :try_end_0
    .catch Lcom/amap/api/col/sl/bo; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/api/col/sl/du;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/amap/api/col/sl/cm;->e()Lcom/amap/api/col/sl/cm;

    move-result-object v1

    const-string v2, "NetManager"

    const-string v3, "makeSyncPostRequest"

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/col/sl/cm;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
