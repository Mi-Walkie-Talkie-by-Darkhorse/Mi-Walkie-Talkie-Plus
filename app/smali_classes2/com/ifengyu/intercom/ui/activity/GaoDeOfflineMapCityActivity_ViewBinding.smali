.class public Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;

    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090419

    const-string v2, "field \'leftBackIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->leftBackIv:Landroid/widget/ImageView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09041d

    const-string v2, "field \'titleText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->titleText:Landroid/widget/TextView;

    const-class v0, Landroid/widget/ExpandableListView;

    const v1, 0x7f0900d5

    const-string v2, "field \'cityExpandableListView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ExpandableListView;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->cityExpandableListView:Landroid/widget/ExpandableListView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->leftBackIv:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->titleText:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeOfflineMapCityActivity;->cityExpandableListView:Landroid/widget/ExpandableListView;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
