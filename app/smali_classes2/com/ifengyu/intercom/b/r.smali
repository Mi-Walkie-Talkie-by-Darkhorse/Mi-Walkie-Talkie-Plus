.class public Lcom/ifengyu/intercom/b/r;
.super Ljava/lang/Object;
.source "GaoDeOfflineMapManagerInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/b/r$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/b/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ifengyu/intercom/b/r;->c:Z

    return-void
.end method

.method public static a()Lcom/amap/api/maps/offlinemap/OfflineMapManager;
    .locals 3

    sget-object v0, Lcom/ifengyu/intercom/b/r;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/b/r$1;

    invoke-direct {v2}, Lcom/ifengyu/intercom/b/r$1;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;)V

    sput-object v0, Lcom/ifengyu/intercom/b/r;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/b/r;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    return-object v0
.end method

.method public static a(Lcom/ifengyu/intercom/b/r$a;)V
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/b/r;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/b/r;->b:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/b/r;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/ifengyu/intercom/b/r;->c:Z

    return-void
.end method

.method public static b(Lcom/ifengyu/intercom/b/r$a;)V
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/b/r;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/b/r;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/ifengyu/intercom/b/r;->c:Z

    return v0
.end method

.method static synthetic c()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/b/r;->b:Ljava/util/List;

    return-object v0
.end method
