.class public Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity_ViewBinding;
.super Ljava/lang/Object;
.source "GaoDeMapToolOperateActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    const v0, 0x7f1000c3

    const-string v1, "field \'titleBarLeft\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->titleBarLeft:Landroid/widget/ImageView;

    const v0, 0x7f100244

    const-string v1, "field \'titleBarTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->titleBarTitle:Landroid/widget/TextView;

    const v0, 0x7f1000e1

    const-string v1, "field \'mapView\'"

    const-class v2, Lcom/amap/api/maps/MapView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/MapView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->mapView:Lcom/amap/api/maps/MapView;

    const v0, 0x7f1000e3

    const-string v1, "field \'zoomBigIV\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->zoomBigIV:Landroid/widget/ImageView;

    const v0, 0x7f1000e4

    const-string v1, "field \'zoomSmallIV\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->zoomSmallIV:Landroid/widget/ImageView;

    const v0, 0x7f1000e5

    const-string v1, "field \'myLocateIV\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->myLocateIV:Landroid/widget/ImageView;

    const v0, 0x7f1000e6

    const-string v1, "field \'bottomMapKitBottomLayout\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->titleBarLeft:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->titleBarTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->mapView:Lcom/amap/api/maps/MapView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->zoomBigIV:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->zoomSmallIV:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->myLocateIV:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    return-void
.end method
