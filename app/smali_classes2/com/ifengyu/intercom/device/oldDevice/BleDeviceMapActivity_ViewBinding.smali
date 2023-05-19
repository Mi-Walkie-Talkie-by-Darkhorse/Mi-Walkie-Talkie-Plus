.class public Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BleDeviceMapActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090491

    const-string v2, "field \'titleBarTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarTitle:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09048f

    const-string v2, "field \'titleBarRight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarRight:Landroid/widget/ImageView;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09048e

    const-string v2, "field \'titleBarLeft\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarLeft:Landroid/widget/ImageView;

    .line 6
    const-class v0, Lcom/amap/api/maps/MapView;

    const v1, 0x7f0902c9

    const-string v2, "field \'mapView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/MapView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mapView:Lcom/amap/api/maps/MapView;

    .line 7
    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const v1, 0x7f09007d

    const-string v2, "field \'bottomChannelLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09007e

    const-string v2, "field \'bottomChannelName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelName:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09007f

    const-string v2, "field \'bottomChannelNumber\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelNumber:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0902cc

    const-string v2, "field \'locationShareIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    .line 11
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0902ce

    const-string v2, "field \'zoomBigIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->zoomBigIV:Landroid/widget/ImageView;

    .line 12
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0902d0

    const-string v2, "field \'zoomSmallIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->zoomSmallIV:Landroid/widget/ImageView;

    .line 13
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0902cd

    const-string v2, "field \'myLocateIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->myLocateIV:Landroid/widget/ImageView;

    .line 14
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902d2

    const-string v2, "field \'mapKitBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mapKitBtn:Landroid/widget/TextView;

    .line 15
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902de

    const-string v2, "field \'mapSwitchTypeBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mapSwitchTypeBtn:Landroid/widget/TextView;

    .line 16
    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const v1, 0x7f0904a2

    const-string v2, "field \'mcuHaveUpdateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    .line 17
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904a6

    const-string v2, "field \'mcuHaveUpdateTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateTV:Landroid/widget/TextView;

    .line 18
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904a5

    const-string v2, "field \'mcuUpdateImmediatelyBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    .line 19
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0904a1

    const-string v2, "field \'mcuHaveUpdateCloseBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarTitle:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarRight:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarLeft:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mapView:Lcom/amap/api/maps/MapView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelName:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelNumber:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    .line 11
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->zoomBigIV:Landroid/widget/ImageView;

    .line 12
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->zoomSmallIV:Landroid/widget/ImageView;

    .line 13
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->myLocateIV:Landroid/widget/ImageView;

    .line 14
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mapKitBtn:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mapSwitchTypeBtn:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    .line 17
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateTV:Landroid/widget/TextView;

    .line 18
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    .line 19
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;

    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
