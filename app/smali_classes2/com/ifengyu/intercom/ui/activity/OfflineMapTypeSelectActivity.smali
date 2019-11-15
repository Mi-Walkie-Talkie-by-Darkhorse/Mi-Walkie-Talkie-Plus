.class public Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "OfflineMapTypeSelectActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method

.method private c()V
    .locals 5

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->Y()[D

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    new-instance v4, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity$2;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;)V

    invoke-static {v2, v3, v0, v1, v4}, Lcom/ifengyu/intercom/a/a;->b(DDLcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method


# virtual methods
.method public gaodeMapDownloadClicked(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public googleMapDownloadClicked(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040033

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;->setContentView(I)V

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09016d

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;->c()V

    return-void
.end method
