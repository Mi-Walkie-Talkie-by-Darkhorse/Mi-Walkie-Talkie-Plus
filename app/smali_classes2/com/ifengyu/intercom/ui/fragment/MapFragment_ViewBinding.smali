.class public Lcom/ifengyu/intercom/ui/fragment/MapFragment_ViewBinding;
.super Ljava/lang/Object;
.source "MapFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/fragment/MapFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    const v0, 0x7f100244

    const-string v1, "field \'titleBarTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarTitle:Landroid/widget/TextView;

    const v0, 0x7f10015b

    const-string v1, "field \'titleBarRight\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    const v0, 0x7f100243

    const-string v1, "field \'myDeviceManager\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myDeviceManager:Landroid/widget/LinearLayout;

    const v0, 0x7f100245

    const-string v1, "field \'mapContainer\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f100247

    const-string v1, "field \'bottomChannelLayout\'"

    const-class v2, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const v0, 0x7f100248

    const-string v1, "field \'bottomChannelName\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelName:Landroid/widget/TextView;

    const v0, 0x7f100249

    const-string v1, "field \'bottomChannelNumber\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    const v0, 0x7f10024a

    const-string v1, "field \'locationShareIV\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    const v0, 0x7f1000e3

    const-string v1, "field \'zoomBigIV\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->zoomBigIV:Landroid/widget/ImageView;

    const v0, 0x7f1000e4

    const-string v1, "field \'zoomSmallIV\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->zoomSmallIV:Landroid/widget/ImageView;

    const v0, 0x7f1000e5

    const-string v1, "field \'myLocateIV\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myLocateIV:Landroid/widget/ImageView;

    const v0, 0x7f10024b

    const-string v1, "field \'mapTrackRecordBtn\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordBtn:Landroid/widget/TextView;

    const v0, 0x7f10024c

    const-string v1, "field \'mapKitBtn\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapKitBtn:Landroid/widget/TextView;

    const v0, 0x7f10024d

    const-string v1, "field \'mapSwitchTypeBtn\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapSwitchTypeBtn:Landroid/widget/TextView;

    const v0, 0x7f10025b

    const-string v1, "field \'bleIsUnConnectLayout\'"

    const-class v2, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const v0, 0x7f10025c

    const-string v1, "field \'bleReconnectImmediatelyBtn\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleReconnectImmediatelyBtn:Landroid/widget/TextView;

    const v0, 0x7f10025d

    const-string v1, "field \'bleUnConnectCloseBtn\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleUnConnectCloseBtn:Landroid/widget/ImageView;

    const v0, 0x7f10025e

    const-string v1, "field \'mcuHaveUpdateLayout\'"

    const-class v2, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const v0, 0x7f10025f

    const-string v1, "field \'mcuHaveUpdateTV\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    const v0, 0x7f100260

    const-string v1, "field \'mcuUpdateImmediatelyBtn\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    const v0, 0x7f100261

    const-string v1, "field \'mcuHaveUpdateCloseBtn\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;

    const v0, 0x7f100246

    const-string v1, "field \'trackRecordingDataLayout\'"

    const-class v2, Landroid/view/ViewGroup;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingDataLayout:Landroid/view/ViewGroup;

    const v0, 0x7f100254

    const-string v1, "field \'trackRecordingCompressCanHideLayout\'"

    const-class v2, Landroid/view/ViewGroup;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressCanHideLayout:Landroid/view/ViewGroup;

    const v0, 0x7f100253

    const-string v1, "field \'gpsNoAccuracyPrompt\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    const v0, 0x7f100251

    const-string v1, "field \'trackRecordingCompressDistanceLayout\'"

    const-class v2, Landroid/view/ViewGroup;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressDistanceLayout:Landroid/view/ViewGroup;

    const v0, 0x7f10024f

    const-string v1, "field \'trackRecordingCompressSpeedLayout\'"

    const-class v2, Landroid/view/ViewGroup;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressSpeedLayout:Landroid/view/ViewGroup;

    const v0, 0x7f10024e

    const-string v1, "field \'mapTrackRecordGpsAccuracy\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordGpsAccuracy:Landroid/widget/ImageView;

    const v0, 0x7f100252

    const-string v1, "field \'mapTrackRecordCompressDistance\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    const v0, 0x7f100250

    const-string v1, "field \'mapTrackRecordCompressSpeed\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    const v0, 0x7f100257

    const-string v1, "field \'mapTrackRecordTiming\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordTiming:Landroid/widget/TextView;

    const v0, 0x7f100256

    const-string v1, "field \'mapTrackRecordDistance\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    const v0, 0x7f100255

    const-string v1, "field \'mapTrackRecordSpeed\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    const v0, 0x7f100258

    const-string v1, "field \'mapTrackRecordPauseBtn\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    const v0, 0x7f100259

    const-string v1, "field \'mapTrackRecordCloseBtn\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCloseBtn:Landroid/widget/TextView;

    const v0, 0x7f10025a

    const-string v1, "field \'trackRecordingCompressBtn\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressBtn:Landroid/widget/ImageView;

    const v0, 0x7f10011c

    const-string v1, "field \'popupBg\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->popupBg:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
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

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->popupBg:Landroid/view/View;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    return-void
.end method
