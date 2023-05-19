.class public abstract Lcom/efs/sdk/base/a/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/efs/sdk/base/a/g/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/efs/sdk/base/a/g/a/a;
.end method

.method public final a(Lcom/efs/sdk/base/a/f/b;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/efs/sdk/base/a/g/a;->a:Lcom/efs/sdk/base/a/g/a/a;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/efs/sdk/base/a/g/a;->a:Lcom/efs/sdk/base/a/g/a/a;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/efs/sdk/base/a/g/a;->a()Lcom/efs/sdk/base/a/g/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/efs/sdk/base/a/g/a;->a:Lcom/efs/sdk/base/a/g/a/a;

    if-nez v0, :cond_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/efs/sdk/base/a/g/a;->a:Lcom/efs/sdk/base/a/g/a/a;

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/a/g/a/a;->a(Lcom/efs/sdk/base/a/f/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    const-string v0, "efs.processor"

    const-string v1, "log handle error"

    .line 8
    invoke-static {v0, v1, p1}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
