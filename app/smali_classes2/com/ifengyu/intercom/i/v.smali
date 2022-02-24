.class public Lcom/ifengyu/intercom/i/v;
.super Ljava/lang/Object;
.source "GaoDeOfflineMapManagerInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/i/v$b;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/maps/offlinemap/OfflineMapManager; = null

.field private static b:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/i/v$b;",
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
    sget-object v0, Lcom/ifengyu/intercom/i/v;->b:Ljava/util/List;

    return-object v0
.end method

.method public static a(Lcom/ifengyu/intercom/i/v$b;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/i/v;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/i/v;->b:Ljava/util/List;

    .line 4
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/i/v;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 5
    sput-boolean p0, Lcom/ifengyu/intercom/i/v;->c:Z

    return-void
.end method

.method public static b()Lcom/amap/api/maps/offlinemap/OfflineMapManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/v;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/i/v$a;

    invoke-direct {v2}, Lcom/ifengyu/intercom/i/v$a;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;)V

    sput-object v0, Lcom/ifengyu/intercom/i/v;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    .line 3
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/i/v;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    return-object v0
.end method

.method public static b(Lcom/ifengyu/intercom/i/v$b;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/i/v;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ifengyu/intercom/i/v;->c:Z

    return v0
.end method
