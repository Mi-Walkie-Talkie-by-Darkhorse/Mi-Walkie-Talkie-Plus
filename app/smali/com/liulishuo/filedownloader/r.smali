.class public Lcom/liulishuo/filedownloader/r;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/r$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private b:Lcom/liulishuo/filedownloader/w;

.field private d:Lcom/liulishuo/filedownloader/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/r;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/r;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/liulishuo/filedownloader/r;
    .locals 1

    invoke-static {}, Lcom/liulishuo/filedownloader/r$a;->a()Lcom/liulishuo/filedownloader/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/c;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;
    .locals 1

    new-instance v0, Lcom/liulishuo/filedownloader/c;

    invoke-direct {v0, p1}, Lcom/liulishuo/filedownloader/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/liulishuo/filedownloader/e;)V
    .locals 2

    invoke-static {}, Lcom/liulishuo/filedownloader/f;->a()Lcom/liulishuo/filedownloader/f;

    move-result-object v0

    const-string v1, "event.service.connect.changed"

    invoke-virtual {v0, v1, p1}, Lcom/liulishuo/filedownloader/f;->a(Ljava/lang/String;Lcom/liulishuo/filedownloader/event/c;)Z

    return-void
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/r;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/liulishuo/filedownloader/n;->a()Lcom/liulishuo/filedownloader/n;

    move-result-object v0

    invoke-static {}, Lcom/liulishuo/filedownloader/e/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/n;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    invoke-static {}, Lcom/liulishuo/filedownloader/n;->a()Lcom/liulishuo/filedownloader/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/n;->c()Z

    move-result v0

    return v0
.end method

.method d()Lcom/liulishuo/filedownloader/w;
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/r;->b:Lcom/liulishuo/filedownloader/w;

    if-nez v0, :cond_1

    sget-object v1, Lcom/liulishuo/filedownloader/r;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/r;->b:Lcom/liulishuo/filedownloader/w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/liulishuo/filedownloader/ab;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/ab;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/r;->b:Lcom/liulishuo/filedownloader/w;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/r;->b:Lcom/liulishuo/filedownloader/w;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method e()Lcom/liulishuo/filedownloader/v;
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/r;->d:Lcom/liulishuo/filedownloader/v;

    if-nez v0, :cond_1

    sget-object v1, Lcom/liulishuo/filedownloader/r;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/r;->d:Lcom/liulishuo/filedownloader/v;

    if-nez v0, :cond_0

    new-instance v0, Lcom/liulishuo/filedownloader/z;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/z;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/r;->d:Lcom/liulishuo/filedownloader/v;

    iget-object v0, p0, Lcom/liulishuo/filedownloader/r;->d:Lcom/liulishuo/filedownloader/v;

    check-cast v0, Lcom/liulishuo/filedownloader/e;

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/r;->a(Lcom/liulishuo/filedownloader/e;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/r;->d:Lcom/liulishuo/filedownloader/v;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
