.class public Lcom/amap/api/mapcore/util/ex;
.super Landroid/widget/BaseExpandableListAdapter;
.source "OfflineListAdapter.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ex$a;
    }
.end annotation


# instance fields
.field private a:[Z

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/amap/api/maps/offlinemap/OfflineMapManager;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;",
            "Lcom/amap/api/maps/offlinemap/OfflineMapManager;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/ex;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ex;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ex;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/ex;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iput-object p3, p0, Lcom/amap/api/mapcore/util/ex;->e:Landroid/content/Context;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ex;->a:[Z

    return-void
.end method

.method private a(I)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ex;->getGroupCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/ex;->b:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ex;->notifyDataSetChanged()V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/ex;->b:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ex;->notifyDataSetChanged()V

    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ex$a;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ex;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/ex$a;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/fb;->a(Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    return-object p4

    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/util/ex$a;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/ex$a;-><init>(Lcom/amap/api/mapcore/util/ex;)V

    new-instance v1, Lcom/amap/api/mapcore/util/fb;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ex;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ex;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore/util/fb;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/fb;->a(I)V

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/fb;->a()Landroid/view/View;

    move-result-object p4

    iput-object v1, v0, Lcom/amap/api/mapcore/util/ex$a;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ex;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ex;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ex;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ex;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getProvinceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/util/ex;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ex;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/ex;->b:I

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ex;->e:Landroid/content/Context;

    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ff;->a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object p3, v0

    :cond_0
    const v0, 0x7f070011

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070012

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ex;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getProvinceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ex;->a:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/api/mapcore/util/ff;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object p3

    :cond_1
    invoke-static {}, Lcom/amap/api/mapcore/util/ff;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onGroupCollapse(I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ex;->a:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method

.method public onGroupExpand(I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ex;->a:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method
