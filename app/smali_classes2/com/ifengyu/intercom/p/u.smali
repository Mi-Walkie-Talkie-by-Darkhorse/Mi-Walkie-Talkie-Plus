.class public Lcom/ifengyu/intercom/p/u;
.super Ljava/lang/Object;
.source "GaoDeOfflineMapManagerInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/p/u$b;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/maps/offlinemap/OfflineMapManager; = null

.field private static b:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/p/u$b;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/p/u;->b:Ljava/util/List;

    return-object v0
.end method

.method public static b(Lcom/ifengyu/intercom/p/u$b;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/p/u;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/p/u;->b:Ljava/util/List;

    .line 3
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/p/u;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c()Lcom/amap/api/maps/offlinemap/OfflineMapManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/p/u;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/p/u$a;

    invoke-direct {v2}, Lcom/ifengyu/intercom/p/u$a;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;)V

    sput-object v0, Lcom/ifengyu/intercom/p/u;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    sget-object v0, Lcom/ifengyu/intercom/p/u;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    return-object v0
.end method

.method public static d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ifengyu/intercom/p/u;->c:Z

    return v0
.end method

.method public static e(Lcom/ifengyu/intercom/p/u$b;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/p/u;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static f(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ifengyu/intercom/p/u;->c:Z

    return-void
.end method
