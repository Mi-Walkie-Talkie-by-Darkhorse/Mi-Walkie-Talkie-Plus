.class public Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "GaoDeMapDownLoadedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;
.implements Lcom/ifengyu/intercom/b/r$a;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/ListView;

.field private r:Lcom/ifengyu/intercom/ui/adapter/g;

.field private s:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->s:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;)Lcom/ifengyu/intercom/ui/adapter/g;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->r:Lcom/ifengyu/intercom/ui/adapter/g;

    return-object v0
.end method

.method private d()V
    .locals 2

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->g:Landroid/widget/ImageView;

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f10015b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f1000df

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f0900fa

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000de

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->q:Landroid/widget/ListView;

    invoke-static {}, Lcom/ifengyu/intercom/b/r;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/b/r;->a()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->setOnOfflineLoadedListener(Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->s:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->s:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/ifengyu/intercom/b/r;->a()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadingCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/r;->a()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadOfflineMapCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/g;

    invoke-static {}, Lcom/ifengyu/intercom/b/r;->a()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/adapter/g;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->r:Lcom/ifengyu/intercom/ui/adapter/g;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->q:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->r:Lcom/ifengyu/intercom/ui/adapter/g;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/r;->a()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadingCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/r;->a()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadOfflineMapCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const-class v0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->a(Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f10015b -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040027

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->d()V

    invoke-static {p0}, Lcom/ifengyu/intercom/b/r;->a(Lcom/ifengyu/intercom/b/r$a;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    invoke-static {p0}, Lcom/ifengyu/intercom/b/r;->b(Lcom/ifengyu/intercom/b/r$a;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    invoke-static {}, Lcom/ifengyu/intercom/b/r;->a()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadingCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/b/r;->a()Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getDownloadOfflineMapCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->r:Lcom/ifengyu/intercom/ui/adapter/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->r:Lcom/ifengyu/intercom/ui/adapter/g;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/g;->a()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onVerifyComplete()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ifengyu/intercom/b/r;->a(Z)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->c()V

    return-void
.end method
