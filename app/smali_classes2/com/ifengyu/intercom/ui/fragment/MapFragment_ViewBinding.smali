.class public Lcom/ifengyu/intercom/ui/fragment/MapFragment_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09041d

    const-string v2, "field \'titleBarTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarTitle:Landroid/widget/TextView;

    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09041a

    const-string v2, "field \'titleBarRight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0902cb

    const-string v2, "field \'myDeviceManager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myDeviceManager:Landroid/widget/LinearLayout;

    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f090258

    const-string v2, "field \'mapContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const v1, 0x7f090081

    const-string v2, "field \'bottomChannelLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090082

    const-string v2, "field \'bottomChannelName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelName:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090083

    const-string v2, "field \'bottomChannelNumber\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090259

    const-string v2, "field \'locationShareIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09025b

    const-string v2, "field \'zoomBigIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->zoomBigIV:Landroid/widget/ImageView;

    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09025d

    const-string v2, "field \'zoomSmallIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->zoomSmallIV:Landroid/widget/ImageView;

    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09025a

    const-string v2, "field \'myLocateIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myLocateIV:Landroid/widget/ImageView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090274

    const-string v2, "field \'mapTrackRecordBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordBtn:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09025f

    const-string v2, "field \'mapKitBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapKitBtn:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09026f

    const-string v2, "field \'mapSwitchTypeBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapSwitchTypeBtn:Landroid/widget/TextView;

    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const v1, 0x7f090428

    const-string v2, "field \'bleIsUnConnectLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090431

    const-string v2, "field \'bleReconnectImmediatelyBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleReconnectImmediatelyBtn:Landroid/widget/TextView;

    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090427

    const-string v2, "field \'bleUnConnectCloseBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleUnConnectCloseBtn:Landroid/widget/ImageView;

    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const v1, 0x7f09042b

    const-string v2, "field \'mcuHaveUpdateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090430

    const-string v2, "field \'mcuHaveUpdateTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09042f

    const-string v2, "field \'mcuUpdateImmediatelyBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09042a

    const-string v2, "field \'mcuHaveUpdateCloseBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;

    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f090277

    const-string v2, "field \'trackRecordingDataLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingDataLayout:Landroid/view/ViewGroup;

    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f090446

    const-string v2, "field \'trackRecordingCompressCanHideLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressCanHideLayout:Landroid/view/ViewGroup;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901a5

    const-string v2, "field \'gpsNoAccuracyPrompt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f090447

    const-string v2, "field \'trackRecordingCompressDistanceLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressDistanceLayout:Landroid/view/ViewGroup;

    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f090449

    const-string v2, "field \'trackRecordingCompressSpeedLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressSpeedLayout:Landroid/view/ViewGroup;

    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090436

    const-string v2, "field \'mapTrackRecordGpsAccuracy\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordGpsAccuracy:Landroid/widget/ImageView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090448

    const-string v2, "field \'mapTrackRecordCompressDistance\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09044a

    const-string v2, "field \'mapTrackRecordCompressSpeed\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09044d

    const-string v2, "field \'mapTrackRecordTiming\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordTiming:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09044b

    const-string v2, "field \'mapTrackRecordDistance\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09044c

    const-string v2, "field \'mapTrackRecordSpeed\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090276

    const-string v2, "field \'mapTrackRecordPauseBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090275

    const-string v2, "field \'mapTrackRecordCloseBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCloseBtn:Landroid/widget/TextView;

    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090445

    const-string v2, "field \'trackRecordingCompressBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressBtn:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myDeviceManager:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelName:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->zoomBigIV:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->zoomSmallIV:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myLocateIV:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordBtn:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapKitBtn:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapSwitchTypeBtn:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleReconnectImmediatelyBtn:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleUnConnectCloseBtn:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingDataLayout:Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressCanHideLayout:Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressDistanceLayout:Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressSpeedLayout:Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordGpsAccuracy:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordTiming:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCloseBtn:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressBtn:Landroid/widget/ImageView;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
