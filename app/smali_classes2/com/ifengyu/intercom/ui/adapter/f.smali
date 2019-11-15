.class public Lcom/ifengyu/intercom/ui/adapter/f;
.super Landroid/widget/BaseExpandableListAdapter;
.source "GaoDeOfflineCityListAdapter.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/adapter/f$a;
    }
.end annotation


# instance fields
.field private a:[Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private d:Landroid/content/Context;


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

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/f;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/f;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/f;->c:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/adapter/f;->d:Landroid/content/Context;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/f;->a:[Z

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v0

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

    check-cast v0, Lcom/ifengyu/intercom/ui/adapter/f$a;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/adapter/f$a;->a:Lcom/ifengyu/intercom/ui/adapter/e;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/adapter/e;->a(Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    return-object p4

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/f$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/adapter/f$a;-><init>(Lcom/ifengyu/intercom/ui/adapter/f;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/e;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/f;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/f;->c:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-direct {v1, v2, v3}, Lcom/ifengyu/intercom/ui/adapter/e;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/adapter/e;->a()Landroid/view/View;

    move-result-object p4

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/adapter/f$a;->a:Lcom/ifengyu/intercom/ui/adapter/e;

    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getProvinceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/f;->d:Landroid/content/Context;

    const v1, 0x7f0400a3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    const v0, 0x7f100276

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100277

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/f;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getPinyin()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sheng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "sheng"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/f;->a:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/f;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200a4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-object p3

    :cond_2
    const-string v3, "guangxi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "guangxi"

    goto :goto_0

    :cond_3
    const-string v3, "ningxia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "ningxia"

    goto :goto_0

    :cond_4
    const-string v3, "xinjiang"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "xinjiang"

    goto :goto_0

    :cond_5
    const-string v3, "neimenggu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v2, "neimenggu"

    goto :goto_0

    :cond_6
    const-string v3, "xizang"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "xizang"

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/f;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getProvinceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/f;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200a2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/f;->a:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method

.method public onGroupExpand(I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/f;->a:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method
