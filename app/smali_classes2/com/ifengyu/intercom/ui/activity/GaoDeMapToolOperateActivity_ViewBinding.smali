.class public Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity_ViewBinding;
.super Ljava/lang/Object;
.source "GaoDeMapToolOperateActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09048e

    const-string v2, "field \'titleBarLeft\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->titleBarLeft:Landroid/widget/ImageView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090491

    const-string v2, "field \'titleBarTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->titleBarTitle:Landroid/widget/TextView;

    .line 5
    const-class v0, Lcom/amap/api/maps/MapView;

    const v1, 0x7f0902c9

    const-string v2, "field \'mapView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/MapView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->mapView:Lcom/amap/api/maps/MapView;

    .line 6
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0902ce

    const-string v2, "field \'zoomBigIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->zoomBigIV:Landroid/widget/ImageView;

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0902d0

    const-string v2, "field \'zoomSmallIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->zoomSmallIV:Landroid/widget/ImageView;

    .line 8
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0902cd

    const-string v2, "field \'myLocateIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->myLocateIV:Landroid/widget/ImageView;

    .line 9
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0902e1

    const-string v2, "field \'bottomMapKitBottomLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->titleBarLeft:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->titleBarTitle:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->mapView:Lcom/amap/api/maps/MapView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->zoomBigIV:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->zoomSmallIV:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->myLocateIV:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method