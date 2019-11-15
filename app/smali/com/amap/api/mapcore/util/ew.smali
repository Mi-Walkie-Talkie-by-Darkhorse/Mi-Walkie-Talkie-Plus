.class public Lcom/amap/api/mapcore/util/ew;
.super Landroid/widget/BaseAdapter;
.source "OfflineDownloadedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ew$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/mapcore/util/fb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ew;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ew;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/ew;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ew;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ew;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadOfflineMapCityList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ew;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadingCityList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ew;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ew;->b()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ew$a;

    move-object v1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/ew;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/ew$a;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/fb;->a(Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    return-object p2

    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/util/ew$a;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/ew$a;-><init>(Lcom/amap/api/mapcore/util/ew;)V

    new-instance v1, Lcom/amap/api/mapcore/util/fb;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ew;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ew;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore/util/fb;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ew;->d:Lcom/amap/api/mapcore/util/fb;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ew;->d:Lcom/amap/api/mapcore/util/fb;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/fb;->a(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ew;->d:Lcom/amap/api/mapcore/util/fb;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/fb;->a()Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ew;->d:Lcom/amap/api/mapcore/util/fb;

    iput-object v1, v0, Lcom/amap/api/mapcore/util/ew$a;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_0
.end method
