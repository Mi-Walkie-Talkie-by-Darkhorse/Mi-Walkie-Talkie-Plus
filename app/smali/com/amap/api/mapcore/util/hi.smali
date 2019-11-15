.class public Lcom/amap/api/mapcore/util/hi;
.super Ljava/lang/Object;
.source "LoaderFactory.java"


# static fields
.field private static final a:Lcom/amap/api/mapcore/util/hi;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/mapcore/util/hb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore/util/hi;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/hi;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/hi;->a:Lcom/amap/api/mapcore/util/hi;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/hi;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/amap/api/mapcore/util/hi;
    .locals 1

    sget-object v0, Lcom/amap/api/mapcore/util/hi;->a:Lcom/amap/api/mapcore/util/hi;

    return-object v0
.end method

.method private a(Lcom/amap/api/mapcore/util/fx;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/fx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/fx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;)Lcom/amap/api/mapcore/util/hb;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/hi;->a(Lcom/amap/api/mapcore/util/fx;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/fx;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/hi;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/hb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :try_start_2
    new-instance v1, Lcom/amap/api/mapcore/util/hg;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, p2, v4}, Lcom/amap/api/mapcore/util/hg;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/hi;->b:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/he;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;)Lcom/amap/api/mapcore/util/he;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
