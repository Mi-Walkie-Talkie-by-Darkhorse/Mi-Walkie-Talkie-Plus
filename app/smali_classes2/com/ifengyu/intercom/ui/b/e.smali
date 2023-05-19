.class public Lcom/ifengyu/intercom/ui/b/e;
.super Landroid/widget/BaseAdapter;
.source "GaoDeOfflineDownloadedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/b/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/ifengyu/intercom/ui/b/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/b/e;->c:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/e;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/b/e;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/b/e;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/e;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/b/e;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadOfflineMapCityList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/e;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/b/e;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadingCityList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ifengyu/intercom/ui/b/e$a;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/ifengyu/intercom/ui/b/e$a;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/ui/b/e$a;-><init>(Lcom/ifengyu/intercom/ui/b/e;)V

    .line 3
    new-instance p2, Lcom/ifengyu/intercom/ui/b/f;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/b/e;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-direct {p2, v0, v1}, Lcom/ifengyu/intercom/ui/b/f;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/b/e;->d:Lcom/ifengyu/intercom/ui/b/f;

    .line 4
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/b/f;->r()Landroid/view/View;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/e;->d:Lcom/ifengyu/intercom/ui/b/f;

    iput-object v0, p3, Lcom/ifengyu/intercom/ui/b/e$a;->a:Lcom/ifengyu/intercom/ui/b/f;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/b/e;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    .line 8
    iget-object p3, p3, Lcom/ifengyu/intercom/ui/b/e$a;->a:Lcom/ifengyu/intercom/ui/b/f;

    invoke-virtual {p3, p1}, Lcom/ifengyu/intercom/ui/b/f;->v(Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    return-object p2
.end method
