.class Lcom/umeng/analytics/process/c;
.super Ljava/lang/Object;
.source "UMProcessDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/process/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/analytics/process/c;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/process/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/process/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/analytics/process/c;->a:Lcom/umeng/analytics/process/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/umeng/analytics/process/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/process/c;->a:Lcom/umeng/analytics/process/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/umeng/analytics/process/c;

    invoke-direct {v1}, Lcom/umeng/analytics/process/c;-><init>()V

    sput-object v1, Lcom/umeng/analytics/process/c;->a:Lcom/umeng/analytics/process/c;

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
    sget-object v0, Lcom/umeng/analytics/process/c;->a:Lcom/umeng/analytics/process/c;

    iput-object p0, v0, Lcom/umeng/analytics/process/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Lcom/umeng/analytics/process/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/process/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/umeng/analytics/process/c;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/umeng/analytics/process/c$a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/analytics/process/c$a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/umeng/analytics/process/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/process/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/umeng/analytics/process/c$a;

    :goto_0
    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/c;->c(Ljava/lang/String;)Lcom/umeng/analytics/process/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/process/c$a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/c;->c(Ljava/lang/String;)Lcom/umeng/analytics/process/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/process/c$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
