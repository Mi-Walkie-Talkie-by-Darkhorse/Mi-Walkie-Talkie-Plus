.class public Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;
.super Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.source "GaoDeMapDownLoadedActivity.java"

# interfaces
.implements Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;
.implements Lcom/ifengyu/intercom/p/u$b;


# instance fields
.field private j:Landroid/widget/ListView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Lcom/ifengyu/intercom/ui/b/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;-><init>()V

    return-void
.end method

.method private G()V
    .locals 4

    const v0, 0x7f090499

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f090231

    .line 2
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/library/widget/view/ItemView;

    const v2, 0x7f090351

    .line 3
    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->j:Landroid/widget/ListView;

    const v2, 0x7f090484

    .line 4
    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->k:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v2

    new-instance v3, Lcom/ifengyu/intercom/ui/activity/t;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/activity/t;-><init>(Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f1102f2

    .line 6
    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 7
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/s;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/s;-><init>(Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/p/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->F()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/p/u;->c()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->setOnOfflineLoadedListener(Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;)V

    :goto_0
    return-void
.end method

.method private synthetic H(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic J(Landroid/view/View;)V
    .locals 0

    .line 1
    const-class p1, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->E(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/b/e;

    invoke-static {}, Lcom/ifengyu/intercom/p/u;->c()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/b/e;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->l:Lcom/ifengyu/intercom/ui/b/e;

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/p/u;->c()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadingCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/p/u;->c()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadOfflineMapCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public synthetic I(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->H(Landroid/view/View;)V

    return-void
.end method

.method public synthetic K(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->J(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0025

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->G()V

    .line 4
    invoke-static {p0}, Lcom/ifengyu/intercom/p/u;->b(Lcom/ifengyu/intercom/p/u$b;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onDestroy()V

    .line 2
    invoke-static {p0}, Lcom/ifengyu/intercom/p/u;->e(Lcom/ifengyu/intercom/p/u$b;)V

    return-void
.end method

.method public onDownload(IILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->l:Lcom/ifengyu/intercom/ui/b/e;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onRemove(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->l:Lcom/ifengyu/intercom/ui/b/e;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/b/e;->a()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/p/u;->c()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadingCityList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x8

    const/4 p3, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/p/u;->c()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadOfflineMapCityList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->j:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->j:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onStart()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/p/u;->c()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadingCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/p/u;->c()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadOfflineMapCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->l:Lcom/ifengyu/intercom/ui/b/e;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/b/e;->a()V

    :cond_1
    return-void
.end method

.method public onVerifyComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/ifengyu/intercom/p/u;->f(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->F()V

    return-void
.end method
