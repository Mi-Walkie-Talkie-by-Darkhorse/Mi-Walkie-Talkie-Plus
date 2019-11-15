.class public Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity_ViewBinding;
.super Ljava/lang/Object;
.source "GaoDeOfflineMapCityActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;

    const v0, 0x7f1000c3

    const-string v1, "field \'leftBackIv\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->leftBackIv:Landroid/widget/ImageView;

    const v0, 0x7f100244

    const-string v1, "field \'titleText\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->titleText:Landroid/widget/TextView;

    const v0, 0x7f1000e0

    const-string v1, "field \'cityExpandableListView\'"

    const-class v2, Landroid/widget/ExpandableListView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->cityExpandableListView:Landroid/widget/ExpandableListView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->leftBackIv:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->titleText:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->cityExpandableListView:Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;

    return-void
.end method
