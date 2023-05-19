.class Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity$a;
.super Landroid/os/Handler;
.source "GaoDeOfflineMapCityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->H(Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->G(Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->F(Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;)Lcom/ifengyu/intercom/ui/b/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
