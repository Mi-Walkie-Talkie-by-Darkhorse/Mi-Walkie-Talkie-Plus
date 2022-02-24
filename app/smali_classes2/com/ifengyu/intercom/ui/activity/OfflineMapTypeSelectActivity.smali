.class public Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "OfflineMapTypeSelectActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method

.method private w()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->r()[D

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;)V

    invoke-static {v1, v2, v3, v4, v0}, Lcom/ifengyu/intercom/g/a;->b(DDLcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method


# virtual methods
.method public gaodeMapDownloadClicked(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public googleMapDownloadClicked(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003d

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    const p1, 0x7f09041d

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f110264

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090419

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;->w()V

    return-void
.end method
