.class public Lcom/ifengyu/intercom/ui/adapter/g;
.super Landroid/widget/BaseAdapter;
.source "GaoDeOfflineDownloadedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/adapter/g$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/ifengyu/intercom/ui/adapter/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/g;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/g;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/g;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/adapter/g;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/g;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/g;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadOfflineMapCityList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/g;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/g;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadingCityList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/adapter/g;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/adapter/g$a;

    move-object v1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/adapter/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/adapter/g$a;->a:Lcom/ifengyu/intercom/ui/adapter/h;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/adapter/h;->a(Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    return-object p2

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/g$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/adapter/g$a;-><init>(Lcom/ifengyu/intercom/ui/adapter/g;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/h;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/g;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/g;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-direct {v1, v2, v3}, Lcom/ifengyu/intercom/ui/adapter/h;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/g;->d:Lcom/ifengyu/intercom/ui/adapter/h;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/g;->d:Lcom/ifengyu/intercom/ui/adapter/h;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/adapter/h;->a()Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/g;->d:Lcom/ifengyu/intercom/ui/adapter/h;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/adapter/g$a;->a:Lcom/ifengyu/intercom/ui/adapter/h;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_0
.end method
