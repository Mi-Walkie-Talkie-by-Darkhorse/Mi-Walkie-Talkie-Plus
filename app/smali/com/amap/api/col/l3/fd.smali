.class public final Lcom/amap/api/col/l3/fd;
.super Landroid/widget/BaseAdapter;
.source "OfflineDownloadedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/fd$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/col/l3/fi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/fd;->b:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/amap/api/col/l3/fd;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/amap/api/col/l3/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/col/l3/fd;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/fd;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/fd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    iget-object v0, p0, Lcom/amap/api/col/l3/fd;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/col/l3/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadOfflineMapCityList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object v0, p0, Lcom/amap/api/col/l3/fd;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/col/l3/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadingCityList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    invoke-direct {p0}, Lcom/amap/api/col/l3/fd;->b()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/fd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/fd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amap/api/col/l3/fd$a;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/amap/api/col/l3/fd$a;

    invoke-direct {p3, p0}, Lcom/amap/api/col/l3/fd$a;-><init>(Lcom/amap/api/col/l3/fd;)V

    .line 3
    new-instance p2, Lcom/amap/api/col/l3/fi;

    iget-object v0, p0, Lcom/amap/api/col/l3/fd;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/l3/fd;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-direct {p2, v0, v1}, Lcom/amap/api/col/l3/fi;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    iput-object p2, p0, Lcom/amap/api/col/l3/fd;->d:Lcom/amap/api/col/l3/fi;

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p2, v0}, Lcom/amap/api/col/l3/fi;->a(I)V

    .line 5
    iget-object p2, p0, Lcom/amap/api/col/l3/fd;->d:Lcom/amap/api/col/l3/fi;

    invoke-virtual {p2}, Lcom/amap/api/col/l3/fi;->a()Landroid/view/View;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/amap/api/col/l3/fd;->d:Lcom/amap/api/col/l3/fi;

    iput-object v0, p3, Lcom/amap/api/col/l3/fd$a;->a:Lcom/amap/api/col/l3/fi;

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/fd;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    .line 9
    iget-object p3, p3, Lcom/amap/api/col/l3/fd$a;->a:Lcom/amap/api/col/l3/fi;

    invoke-virtual {p3, p1}, Lcom/amap/api/col/l3/fi;->a(Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    return-object p2
.end method
