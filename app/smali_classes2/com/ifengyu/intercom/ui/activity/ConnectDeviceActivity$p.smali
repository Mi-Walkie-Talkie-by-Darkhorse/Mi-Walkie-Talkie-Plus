.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$p;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$p;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->f(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$p;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->f(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$p;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->f(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$p;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->g(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$p;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->g(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
