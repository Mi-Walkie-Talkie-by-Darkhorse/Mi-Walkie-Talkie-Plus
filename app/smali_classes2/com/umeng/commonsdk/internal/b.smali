.class public Lcom/umeng/commonsdk/internal/b;
.super Ljava/lang/Object;
.source "UMInternalData.java"


# static fields
.field private static b:Lcom/umeng/commonsdk/internal/b;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lcom/umeng/commonsdk/internal/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/umeng/commonsdk/internal/b;->a:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/umeng/commonsdk/internal/c;

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/internal/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/internal/b;->c:Lcom/umeng/commonsdk/internal/c;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;
    .locals 2

    const-class v0, Lcom/umeng/commonsdk/internal/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/internal/b;->b:Lcom/umeng/commonsdk/internal/b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/umeng/commonsdk/internal/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/internal/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/commonsdk/internal/b;->b:Lcom/umeng/commonsdk/internal/b;

    .line 3
    :cond_0
    sget-object p0, Lcom/umeng/commonsdk/internal/b;->b:Lcom/umeng/commonsdk/internal/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a()Lcom/umeng/commonsdk/internal/c;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/b;->c:Lcom/umeng/commonsdk/internal/c;

    return-object v0
.end method
