.class public Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090419

    const-string v2, "field \'titleBarLeft\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->titleBarLeft:Landroid/widget/ImageView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09041d

    const-string v2, "field \'titleBarTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->titleBarTitle:Landroid/widget/TextView;

    const-class v0, Lorg/osmdroid/views/MapView;

    const v1, 0x7f090252

    const-string v2, "field \'mapView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/MapView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09025b

    const-string v2, "field \'zoomBigIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->zoomBigIV:Landroid/widget/ImageView;

    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09025d

    const-string v2, "field \'zoomSmallIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->zoomSmallIV:Landroid/widget/ImageView;

    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09025a

    const-string v2, "field \'myLocateIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->myLocateIV:Landroid/widget/ImageView;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090272

    const-string v2, "field \'bottomMapKitBottomLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f09030a

    const-string v1, "field \'popupBg\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->popupBg:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->titleBarLeft:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->titleBarTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->zoomBigIV:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->zoomSmallIV:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->myLocateIV:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->popupBg:Landroid/view/View;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
