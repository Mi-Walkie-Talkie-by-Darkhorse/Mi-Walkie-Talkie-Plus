.class public Lcom/ifengyu/intercom/ui/fragment/MapFragment;
.super Lcom/ifengyu/intercom/ui/baseui/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;
.implements Lcom/ifengyu/intercom/network/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/view/View;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

.field private N:I

.field private O:Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

.field private P:Landroid/content/ServiceConnection;

.field private Q:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field private R:I

.field private S:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

.field private T:Lcom/ifengyu/intercom/lite/g/t;

.field private U:Lcom/qmuiteam/qmui/widget/dialog/b;

.field private V:Z

.field private W:Lcom/qmuiteam/qmui/widget/dialog/b;

.field X:Landroid/widget/TextView;

.field Y:Landroid/widget/TextView;

.field Z:Landroid/widget/TextView;

.field b0:Landroid/widget/TextView;

.field bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090428
    .end annotation
.end field

.field bleReconnectImmediatelyBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090431
    .end annotation
.end field

.field bleUnConnectCloseBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090427
    .end annotation
.end field

.field bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090081
    .end annotation
.end field

.field bottomChannelName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090082
    .end annotation
.end field

.field bottomChannelNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090083
    .end annotation
.end field

.field c0:Landroid/widget/TextView;

.field d0:Landroid/view/View;

.field e0:Lcom/ifengyu/intercom/lite/h/h0;

.field private g:Z

.field gpsNoAccuracyPrompt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a5
    .end annotation
.end field

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/PopupWindow;

.field private k:Landroid/widget/PopupWindow;

.field private l:Landroid/text/SpannableString;

.field locationShareIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090259
    .end annotation
.end field

.field private m:Landroid/text/SpannableString;

.field mapContainer:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090258
    .end annotation
.end field

.field mapKitBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025f
    .end annotation
.end field

.field mapSwitchTypeBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09026f
    .end annotation
.end field

.field mapTrackRecordBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090274
    .end annotation
.end field

.field mapTrackRecordCloseBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090275
    .end annotation
.end field

.field mapTrackRecordCompressDistance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090448
    .end annotation
.end field

.field mapTrackRecordCompressSpeed:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09044a
    .end annotation
.end field

.field mapTrackRecordDistance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09044b
    .end annotation
.end field

.field mapTrackRecordGpsAccuracy:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090436
    .end annotation
.end field

.field mapTrackRecordPauseBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090276
    .end annotation
.end field

.field mapTrackRecordSpeed:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09044c
    .end annotation
.end field

.field mapTrackRecordTiming:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09044d
    .end annotation
.end field

.field mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09042a
    .end annotation
.end field

.field mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09042b
    .end annotation
.end field

.field mcuHaveUpdateTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090430
    .end annotation
.end field

.field mcuUpdateImmediatelyBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09042f
    .end annotation
.end field

.field myDeviceManager:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902cb
    .end annotation
.end field

.field myLocateIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025a
    .end annotation
.end field

.field private n:Landroid/text/SpannableString;

.field private o:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

.field private p:Z

.field private q:Lcom/ifengyu/intercom/greendao/bean/b;

.field private r:Landroid/view/animation/TranslateAnimation;

.field private s:Lcom/ifengyu/intercom/ui/MainActivity;

.field private t:Lcom/ifengyu/intercom/ui/map/a;

.field titleBarRight:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09041a
    .end annotation
.end field

.field titleBarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09041d
    .end annotation
.end field

.field trackRecordingCompressBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090445
    .end annotation
.end field

.field trackRecordingCompressCanHideLayout:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090446
    .end annotation
.end field

.field trackRecordingCompressDistanceLayout:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090447
    .end annotation
.end field

.field trackRecordingCompressSpeedLayout:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090449
    .end annotation
.end field

.field trackRecordingDataLayout:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090277
    .end annotation
.end field

.field private u:Lcom/ifengyu/intercom/ui/map/b;

.field private v:Lcom/amap/api/maps/TextureMapView;

.field private w:Lorg/osmdroid/views/MapView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/TextView;

.field zoomBigIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025b
    .end annotation
.end field

.field zoomSmallIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->H:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->I:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->N:I

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->O:Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$k;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$k;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->P:Landroid/content/ServiceConnection;

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->V:Z

    return-void
.end method

.method private A()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Landroid/view/View;

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->S:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Landroid/view/View;

    const v1, 0x7f090482

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->X:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Landroid/view/View;

    const v1, 0x7f09049a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->Y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Landroid/view/View;

    const v1, 0x7f09049b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->Z:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Landroid/view/View;

    const v1, 0x7f090468

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b0:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Landroid/view/View;

    const v1, 0x7f090469

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c0:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Landroid/view/View;

    const v1, 0x7f090221

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->d0:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->S:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$p;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$p;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->d()Lcom/ifengyu/intercom/lite/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->q()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->S:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f1100e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->S:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private B()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myDeviceManager:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->zoomBigIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->zoomSmallIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myLocateIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapKitBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapSwitchTypeBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCloseBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleReconnectImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleUnConnectCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private C()V
    .locals 7

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->n()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lorg/osmdroid/views/MapView;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->w:Lorg/osmdroid/views/MapView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->w:Lorg/osmdroid/views/MapView;

    invoke-direct {v1, v2, v4, p0}, Lcom/ifengyu/intercom/ui/map/b;-><init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    :goto_0
    invoke-virtual {v1, v0, v3}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v4, Lcom/amap/api/maps/TextureMapView;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amap/api/maps/TextureMapView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v:Lcom/amap/api/maps/TextureMapView;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v:Lcom/amap/api/maps/TextureMapView;

    invoke-direct {v2, v4, v5, p0}, Lcom/ifengyu/intercom/ui/map/a;-><init>(Landroid/content/Context;Lcom/amap/api/maps/TextureMapView;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    if-ne v0, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v2, v1, v3}, Lcom/ifengyu/intercom/ui/map/a;->a(IZ)V

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    :goto_2
    return-void
.end method

.method private D()V
    .locals 7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Landroid/view/View;

    const v1, 0x7f090415

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/a;->e:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/a;->i()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingDataLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    sget-object v0, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordTiming:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v2, " km"

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Landroid/text/SpannableString;

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0xd

    invoke-direct {v2, v3, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Landroid/text/SpannableString;

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x11

    invoke-virtual {v0, v2, v5, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v2, " km/h"

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m:Landroid/text/SpannableString;

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, v3, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m:Landroid/text/SpannableString;

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v2, v5, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v2, " m"

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Landroid/text/SpannableString;

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, v3, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Landroid/text/SpannableString;

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v2, v5, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v2, "00:00:00"

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, v3, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordTiming:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Landroid/text/SpannableString;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m:Landroid/text/SpannableString;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordBtn:Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapKitBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapSwitchTypeBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method private E()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/g/t;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/g/t;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->T:Lcom/ifengyu/intercom/lite/g/t;

    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/h/h0;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->k()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$q;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$q;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->g()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$r;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$r;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->h()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$s;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$s;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->i()Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$t;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$t;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->T:Lcom/ifengyu/intercom/lite/g/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/g/t;->e()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$u;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$u;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->T:Lcom/ifengyu/intercom/lite/g/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/g/t;->b()V

    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/event/LiteEvent;

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/MapFragment$v;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$v;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/ifengyu/intercom/lite/utils/j;->a(Ljava/lang/Object;Ljava/lang/Class;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method private F()V
    .locals 3

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->E:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->E:Z

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myLocateIV:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v0, 0x7f0800f5

    goto :goto_0

    :cond_0
    const v0, 0x7f0800f4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->E:Z

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/map/a;->a(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->c()V

    :goto_1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Z)V

    return-void
.end method

.method private G()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/m;->a()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/g0;->h()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/i/h0;->d()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/e;->c()V

    :goto_0
    return-void
.end method

.method private H()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g:Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingDataLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v1, Landroid/text/SpannableString;

    const-string v3, "00:00:00"

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/4 v5, 0x5

    const/16 v6, 0x11

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordTiming:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Landroid/text/SpannableString;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Landroid/text/SpannableString;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    const-string v3, "0.0"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m:Landroid/text/SpannableString;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m:Landroid/text/SpannableString;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    const v3, 0x7f11009d

    invoke-static {v3}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->e()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08020a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordBtn:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "is_load_last_not_saved_track"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->P:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->h()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->g()V

    :goto_0
    return-void
.end method

.method private I()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c00d5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090265

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09025e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090260

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k:Landroid/widget/PopupWindow;

    const v2, 0x7f12000e

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/ifengyu/intercom/ui/fragment/MapFragment$g;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$g;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v1, 0x2

    new-array v3, v1, [I

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapKitBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/ifengyu/intercom/d;->a(Landroid/app/Activity;)V

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapKitBtn:Landroid/widget/TextView;

    sget v7, Lcom/ifengyu/intercom/d;->b:I

    div-int/2addr v7, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, v1

    sub-int/2addr v7, v0

    aget v0, v3, v2

    invoke-virtual {v5, v6, v4, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k:Landroid/widget/PopupWindow;

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/i/f0;->a(Landroid/content/Context;Landroid/widget/PopupWindow;F)V

    return-void
.end method

.method private J()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c00d2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->x:Landroid/widget/ImageView;

    const v1, 0x7f090268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z:Landroid/widget/TextView;

    const v1, 0x7f090269

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->y:Landroid/widget/ImageView;

    const v1, 0x7f09026a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->A:Landroid/widget/TextView;

    const v1, 0x7f09026d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/widget/ImageView;

    const v1, 0x7f09026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->B:Landroid/widget/TextView;

    const v1, 0x7f09026b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/widget/ImageView;

    const v1, 0x7f09026c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->x:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->y:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->a()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->a()Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    move-result-object v1

    sget-object v4, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    if-ne v1, v4, :cond_2

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(I)V

    :goto_0
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-direct {v1, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Landroid/widget/PopupWindow;

    const v4, 0x7f12000e

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/ifengyu/intercom/ui/fragment/MapFragment$h;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$h;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    new-array v1, v2, [I

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapKitBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/ifengyu/intercom/d;->a(Landroid/app/Activity;)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapKitBtn:Landroid/widget/TextView;

    sget v7, Lcom/ifengyu/intercom/d;->b:I

    div-int/2addr v7, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr v7, v0

    aget v0, v1, v3

    invoke-virtual {v4, v6, v5, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Landroid/widget/PopupWindow;

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/i/f0;->a(Landroid/content/Context;Landroid/widget/PopupWindow;F)V

    return-void
.end method

.method private K()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    const v1, 0x7f0800f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->i(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x8f03

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v3, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v3, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->d()Lcom/ifengyu/intercom/lite/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r()Lcom/ifengyu/intercom/lite/models/ChannelModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/lite/LiteSettingHolderActivity;->a(Landroid/content/Context;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v3, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private L()V
    .locals 7

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    const v1, 0x7f0800f7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v4, Lcom/ifengyu/intercom/ui/fragment/MapFragment$i;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$i;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    const v4, 0x7f0800f8

    if-eq v0, v2, :cond_4

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/ifengyu/intercom/i/g0;->d(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/ifengyu/intercom/i/g0;->d(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/h0;->b(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/ifengyu/intercom/i/h0;->b(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->Z()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/node/e;->b(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v3}, Lcom/ifengyu/intercom/i/d0;->f(Z)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/node/e;->b(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v2}, Lcom/ifengyu/intercom/i/d0;->f(Z)V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    const v1, 0x7f110285

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08013e

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    if-ne v0, v2, :cond_8

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->Z()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v3}, Lcom/ifengyu/intercom/i/d0;->f(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1

    :cond_7
    const v0, 0x7f1100c9

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->N:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->M:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/service/TrackRecordService;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/ui/service/TrackRecordService;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->Q:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/qmuiteam/qmui/widget/dialog/b;)Lcom/qmuiteam/qmui/widget/dialog/b;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->W:Lcom/qmuiteam/qmui/widget/dialog/b;

    return-object p1
.end method

.method private a(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->H:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->O:Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->U:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110127

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const p1, 0x7f1101b2

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/b;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v1, p1, v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const p1, 0x7f120105

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->U:Lcom/qmuiteam/qmui/widget/dialog/b;

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->U:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->U:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 4

    const/16 v0, 0x8

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->S:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->S:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->X:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->X:Landroid/widget/TextView;

    sget-object v3, Lcom/ifengyu/intercom/i/p;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->d0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->Z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c0:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->Y:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0x11

    invoke-static {v1, v3}, Lcom/qmuiteam/qmui/util/d;->c(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->Y:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplayReceiveFreqWithTone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/lite/utils/f;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->Z:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySendFreqWithTone()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/utils/f;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b0:Landroid/widget/TextView;

    const v0, 0x7f1101ab

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c0:Landroid/widget/TextView;

    const v0, 0x7f110187

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->d0:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->Z:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c0:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->Y:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/util/d;->c(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->Y:Landroid/widget/TextView;

    const v0, 0x7f11018a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b0:Landroid/widget/TextView;

    const v0, 0x7f110188

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    sget-object p1, Lcom/ifengyu/intercom/i/p;->c:Landroid/graphics/Typeface;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->Y:Landroid/widget/TextView;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->Z:Landroid/widget/TextView;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/lite/utils/h;->a(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->W:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110389

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v2, 0x7f110093

    const/4 v3, 0x2

    new-instance v4, Lcom/ifengyu/intercom/ui/fragment/MapFragment$n;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$n;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v2, 0x7f110043

    const/4 v3, 0x1

    new-instance v4, Lcom/ifengyu/intercom/ui/fragment/a;

    invoke-direct {v4, p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/a;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const p1, 0x7f1200fc

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->W:Lcom/qmuiteam/qmui/widget/dialog/b;

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->W:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->W:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->V:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->R:I

    return p1
.end method

.method private b(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "dolphin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "shark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "seal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "lite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const-string p1, ""

    goto :goto_2

    :cond_1
    const p1, 0x7f1100db

    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const p1, 0x7f1100e3

    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const p1, 0x7f1100ed

    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const p1, 0x7f1100d8

    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    const v0, 0x7f110386

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f11038a

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$o;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0600c3

    invoke-static {v4, v5}, Landroidx/core/content/b;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0600c5

    invoke-static {v4, v5}, Landroidx/core/content/b;->a(Landroid/content/Context;I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$o;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;IIII)V

    invoke-virtual {v1, v3}, Lcom/qmuiteam/qmui/span/d;->b(Z)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    const/16 v0, 0x11

    invoke-virtual {v2, v1, v3, p1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x32b0ae -> :sswitch_3
        0x35cdfd -> :sswitch_2
        0x6854fe5 -> :sswitch_1
        0x6d7f79de -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/lite/models/ChannelModel;
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r()Lcom/ifengyu/intercom/lite/models/ChannelModel;

    move-result-object p0

    return-object p0
.end method

.method private b(I)V
    .locals 7

    const/4 v0, 0x1

    const v1, 0x7f080158

    const v2, 0x7f08015a

    const v3, 0x7f080154

    const v4, 0x7f060175

    const v5, 0x7f060036

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const v6, 0x7f080156

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->A:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->B:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/widget/ImageView;

    const v0, 0x7f080157

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->C:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->A:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/widget/ImageView;

    const v0, 0x7f080159

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->B:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->C:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->y:Landroid/widget/ImageView;

    const v0, 0x7f080153

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->A:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->B:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->C:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->x:Landroid/widget/ImageView;

    const v0, 0x7f080155

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->A:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->B:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->C:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myDeviceManager:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    new-array v2, v0, [I

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    new-array v3, v0, [I

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    new-array v0, v0, [I

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->zoomBigIV:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    const-class v5, Lcom/ifengyu/intercom/ui/activity/UserGuideActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "isConnect"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "titleBarLeftBtnPoint"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string p1, "titleBarRightBtnPoint"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string p1, "shareLocationBtnPoint"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J:Z

    return p1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Landroid/text/SpannableString;

    return-object p0
.end method

.method private c(I)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/g0;->b()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/h0;->b()V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->K:Z

    return p1
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m:Landroid/text/SpannableString;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    return p1
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->V:Z

    return p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->Q:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->N:I

    return p0
.end method

.method static synthetic g(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic h(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J:Z

    return p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic i(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic j(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->S:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    return-object p0
.end method

.method static synthetic k(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic l(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m()V

    return-void
.end method

.method static synthetic m(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    return-object p0
.end method

.method private m()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->f()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/ifengyu/intercom/ui/MainActivity;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/f/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$m;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$m;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/g/a;->b(Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)Lcom/ifengyu/intercom/g/e/f;

    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/view/animation/TranslateAnimation;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r:Landroid/view/animation/TranslateAnimation;

    return-object p0
.end method

.method private n()V
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->I:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->I:Z

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->U()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$j;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static newInstance()Lcom/ifengyu/intercom/ui/fragment/MapFragment;
    .locals 2

    const-string v0, "MapFragment"

    const-string v1, "newInstance"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;-><init>()V

    return-object v0
.end method

.method private o()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->c0()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->d()Lcom/ifengyu/intercom/lite/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g0()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->i0()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->h0()V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic o(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    return p0
.end method

.method static synthetic p(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/a;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    return-object p0
.end method

.method private p()V
    .locals 8

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(I)V

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->l()V

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myLocateIV:Landroid/widget/ImageView;

    const v2, 0x7f0800f4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Z)V

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->E:Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->b()Lcom/ifengyu/intercom/bean/MapCurrentStatus;

    move-result-object v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v0, :cond_1

    new-instance v3, Lcom/amap/api/maps/TextureMapView;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/amap/api/maps/TextureMapView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v:Lcom/amap/api/maps/TextureMapView;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/ifengyu/intercom/ui/map/a;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v:Lcom/amap/api/maps/TextureMapView;

    invoke-direct {v3, v5, v6, p0}, Lcom/ifengyu/intercom/ui/map/a;-><init>(Landroid/content/Context;Lcom/amap/api/maps/TextureMapView;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v3, v0, v2}, Lcom/ifengyu/intercom/ui/map/a;->a(IZ)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/ui/map/a;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v3, v2}, Lcom/amap/api/maps/TextureMapView;->setVisibility(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/b;->e()V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/b;->d()V

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/a;->l()V

    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/a;->g()V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/map/a;->a(Lcom/ifengyu/intercom/bean/MapCurrentStatus;)V

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->i()V

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->k()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->m()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v3, v1}, Lcom/ifengyu/intercom/ui/map/a;->a(Lcom/ifengyu/intercom/greendao/bean/b;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->k()V

    :goto_1
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->c(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic q(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/b;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    return-object p0
.end method

.method private q()V
    .locals 9

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(I)V

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->m()V

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myLocateIV:Landroid/widget/ImageView;

    const v2, 0x7f0800f4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Z)V

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->E:Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->b()Lcom/ifengyu/intercom/bean/MapCurrentStatus;

    move-result-object v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    new-instance v3, Lcom/amap/api/maps/TextureMapView;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/amap/api/maps/TextureMapView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v:Lcom/amap/api/maps/TextureMapView;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/ifengyu/intercom/ui/map/a;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v:Lcom/amap/api/maps/TextureMapView;

    invoke-direct {v3, v6, v7, p0}, Lcom/ifengyu/intercom/ui/map/a;-><init>(Landroid/content/Context;Lcom/amap/api/maps/TextureMapView;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v3, v0, v2}, Lcom/ifengyu/intercom/ui/map/a;->a(IZ)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/ui/map/a;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v3, v2}, Lcom/amap/api/maps/TextureMapView;->setVisibility(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/b;->e()V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/b;->d()V

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/a;->m()V

    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/a;->g()V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/map/a;->a(Lcom/ifengyu/intercom/bean/MapCurrentStatus;)V

    iput-boolean v5, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->i()V

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->k()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->m()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v3, v1}, Lcom/ifengyu/intercom/ui/map/a;->a(Lcom/ifengyu/intercom/greendao/bean/b;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->k()V

    :goto_1
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->c(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private r()Lcom/ifengyu/intercom/lite/models/ChannelModel;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->g()Landroidx/lifecycle/p;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    return-object v0
.end method

.method static synthetic r(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->K:Z

    return p0
.end method

.method static synthetic s(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->O:Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    return-object p0
.end method

.method private s()V
    .locals 7

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(I)V

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myLocateIV:Landroid/widget/ImageView;

    const v2, 0x7f0800f4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Z)V

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->E:Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->c()Lcom/ifengyu/intercom/bean/MapCurrentStatus;

    move-result-object v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Lorg/osmdroid/views/MapView;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->w:Lorg/osmdroid/views/MapView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v:Lcom/amap/api/maps/TextureMapView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/amap/api/maps/TextureMapView;->setVisibility(I)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->w:Lorg/osmdroid/views/MapView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->w:Lorg/osmdroid/views/MapView;

    invoke-direct {v3, v4, v5, p0}, Lcom/ifengyu/intercom/ui/map/b;-><init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    sget-object v4, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    invoke-virtual {v3, v4, v2}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Z)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/map/a;->f()V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/map/a;->e()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/map/b;->l()V

    :goto_0
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/map/b;->f()V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v3, v1}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/bean/MapCurrentStatus;)V

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->h()V

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->j()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->m()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v3, v1}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/greendao/bean/b;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->j()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->l()V

    :goto_1
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->c(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic t(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/lite/g/t;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->T:Lcom/ifengyu/intercom/lite/g/t;

    return-object p0
.end method

.method private t()V
    .locals 7

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(I)V

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myLocateIV:Landroid/widget/ImageView;

    const v2, 0x7f0800f4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Z)V

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->E:Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->c()Lcom/ifengyu/intercom/bean/MapCurrentStatus;

    move-result-object v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Lorg/osmdroid/views/MapView;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->w:Lorg/osmdroid/views/MapView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v3, v0}, Lcom/amap/api/maps/TextureMapView;->setVisibility(I)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->w:Lorg/osmdroid/views/MapView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->w:Lorg/osmdroid/views/MapView;

    invoke-direct {v3, v4, v5, p0}, Lcom/ifengyu/intercom/ui/map/b;-><init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    sget-object v4, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    invoke-virtual {v3, v4, v2}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Z)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/map/a;->f()V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/map/a;->e()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/map/b;->k()V

    :goto_0
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/map/b;->f()V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v3, v1}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/bean/MapCurrentStatus;)V

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->h()V

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->j()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->m()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v3, v1}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/greendao/bean/b;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->j()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->k()V

    :goto_1
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->c(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private u()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$l;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$l;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic u(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o()V

    return-void
.end method

.method static synthetic v(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Landroid/text/SpannableString;

    return-object p0
.end method

.method private v()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/ifengyu/intercom/ui/MainActivity;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->w()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f1200fc

    const v2, 0x7f11009c

    const/4 v3, 0x2

    const v4, 0x7f110093

    const/4 v5, 0x0

    if-nez v0, :cond_2

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v6, 0x7f11033e

    invoke-virtual {v0, v6}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v6, Lcom/ifengyu/intercom/ui/fragment/i;->a:Lcom/ifengyu/intercom/ui/fragment/i;

    invoke-virtual {v0, v5, v4, v3, v6}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v3, Lcom/ifengyu/intercom/ui/fragment/h;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/fragment/h;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v5, v2, v5, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v6, 0x7f110350

    invoke-virtual {v0, v6}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v6, Lcom/ifengyu/intercom/ui/fragment/d;->a:Lcom/ifengyu/intercom/ui/fragment/d;

    invoke-virtual {v0, v5, v4, v3, v6}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v3, Lcom/ifengyu/intercom/ui/fragment/g;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/fragment/g;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v5, v2, v5, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method private w()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressCanHideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const v1, 0x7f080210

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressCanHideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressDistanceLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressSpeedLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressCanHideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressDistanceLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressSpeedLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private x()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f11009d

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    const v1, 0x7f110094

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->e()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080209

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f11033e

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->e()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08020a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Z

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/map/a;->a(Lcom/ifengyu/intercom/greendao/bean/b;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/greendao/bean/b;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a()V

    :cond_4
    :goto_1
    return-void
.end method

.method private y()V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "MapFragment"

    const-string v2, "handleTrackRecordWhenStartUp"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->m()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_a

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/greendao/bean/b;

    iput-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/ifengyu/intercom/greendao/bean/b;

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/16 v6, 0x11

    const/4 v7, 0x5

    const/16 v8, 0xd

    const/4 v9, 0x2

    const/4 v10, 0x3

    const-string v11, "%02d:%02d:%02d"

    const/16 v12, 0x8

    const-string v13, "0.0"

    const-string v15, "%.1f"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v14

    const-class v5, Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-direct {v2, v14, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->P:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v5, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingDataLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v4, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g:Z

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/b;->r()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    div-int/lit16 v10, v10, 0xe10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    rem-int/lit16 v10, v10, 0xe10

    div-int/lit8 v10, v10, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-static {v2, v11, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v8, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v2, v1, v7, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordTiming:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/b;->q()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v5, 0x3e8

    if-ge v2, v5, :cond_2

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Landroid/text/SpannableString;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v15, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Landroid/text/SpannableString;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v5, v15, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/b;->l()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    const v2, 0x7f110094

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->e()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080209

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    const v2, 0x7f11009d

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->e()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08020a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-boolean v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/map/a;->a(Lcom/ifengyu/intercom/greendao/bean/b;)V

    goto/16 :goto_3

    :cond_4
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/greendao/bean/b;)V

    goto/16 :goto_3

    :cond_5
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/b;->m()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "track not be saved,so load track info and start TrackRecordService"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Z

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingDataLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v4, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g:Z

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/b;->r()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_6
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    div-int/lit16 v10, v10, 0xe10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    rem-int/lit16 v10, v10, 0xe10

    div-int/lit8 v10, v10, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-static {v2, v11, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v8, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v2, v1, v7, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordTiming:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/b;->q()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v5, 0x3e8

    if-ge v2, v5, :cond_8

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Landroid/text/SpannableString;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v15, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Landroid/text/SpannableString;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v15, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    const v2, 0x7f110094

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->e()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f080209

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/dao/b;->e()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->TrackID:Lorg/greenrobot/greendao/Property;

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/greendao/bean/b;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v5, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    new-array v2, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->CurrentTime:Lorg/greenrobot/greendao/Property;

    aput-object v5, v2, v3

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_9

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/greendao/bean/c;

    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/greendao/bean/c;->a(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/dao/b;->e()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_9
    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "is_load_last_not_saved_track"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->m()J

    move-result-wide v2

    const-string v5, "last_not_saved_track_primary_key_id"

    invoke-virtual {v1, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v5, Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->P:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_a
    :goto_3
    return-void
.end method

.method private z()V
    .locals 10

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v9, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v0, 0x1f4

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myLocateIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->E:Z

    return-void
.end method

.method public a(IIIF)V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v7, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;IIIF)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(JLjava/lang/String;ZZ)V
    .locals 3

    const p1, 0x7f11034f

    const p2, 0x7f1200fc

    const p3, 0x7f11009c

    const/4 v0, 0x2

    const v1, 0x7f110093

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    new-instance p4, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p4, p5}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, p1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object p1, Lcom/ifengyu/intercom/ui/fragment/e;->a:Lcom/ifengyu/intercom/ui/fragment/e;

    invoke-virtual {p4, v2, v1, v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p4, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance p1, Lcom/ifengyu/intercom/ui/fragment/j;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/fragment/j;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {p4, v2, p3, v2, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p4, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-virtual {p4, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    if-eqz p5, :cond_1

    new-instance p4, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p4, p5}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, p1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object p1, Lcom/ifengyu/intercom/ui/fragment/f;->a:Lcom/ifengyu/intercom/ui/fragment/f;

    invoke-virtual {p4, v2, v1, v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p4, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance p1, Lcom/ifengyu/intercom/ui/fragment/k;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/fragment/k;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {p4, v2, p3, v2, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p4, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-virtual {p4, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    new-instance p1, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p1, p4}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const p4, 0x7f11034e

    invoke-virtual {p1, p4}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object p4, Lcom/ifengyu/intercom/ui/fragment/c;->a:Lcom/ifengyu/intercom/ui/fragment/c;

    invoke-virtual {p1, v2, v1, v0, p4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p1, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance p4, Lcom/ifengyu/intercom/ui/fragment/l;

    invoke-direct {p4, p0}, Lcom/ifengyu/intercom/ui/fragment/l;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {p1, v2, p3, v2, p4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p1, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public a(JZ)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g:Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingDataLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->k()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->j()V

    :goto_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->P:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    return-void

    :cond_1
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-direct {p3, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "trackInfoPrimaryKeyId"

    invoke-virtual {p3, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "track_info_for_what"

    const-string p2, "for_preview_track"

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->P:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->O:Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget p1, Lcom/ifengyu/intercom/i/d0;->a:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    const p1, 0x7f110284

    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->i()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mcu_language_type_english"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->O:Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->i()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mcu_language_type_chinese"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->O:Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->H()V

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public synthetic a(Ljava/lang/String;ILcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p3}, Landroidx/appcompat/app/d;->dismiss()V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->W:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/l0;->a(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/d0;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/bean/LocationBean;",
            ">;>;Z)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/ifengyu/intercom/ui/map/a;->a(ZLjava/util/ArrayList;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/ifengyu/intercom/ui/map/b;->a(ZLjava/util/ArrayList;Z)V

    :goto_0
    return-void
.end method

.method public synthetic b(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public synthetic c(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 2

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a(ZZ)V

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public synthetic d(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 2

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a(ZZ)V

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public synthetic e(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a(ZZ)V

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public synthetic f(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ifengyu/intercom/lite/old/LiteUpgradeActivity;->start(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->O:Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->V:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->H:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->I:Z

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->f()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/ifengyu/intercom/ui/MainActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->O:Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public l()V
    .locals 5

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0800f8

    const v3, 0x7f0800f7

    const/4 v4, 0x0

    if-eq v0, v1, :cond_5

    const v1, 0x8f03

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0x7f0800f7

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->G()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const v2, 0x7f0800f7

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->Z()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const v2, 0x7f0800f7

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "MapFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/map/a;->a(Landroid/os/Bundle;)V

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->y()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    const-string v0, "MapFragment"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/MainActivity;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    return-void
.end method

.method public onBeanUserLocationChanged(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/map/a;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;Z)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x5

    const/4 v2, 0x4

    const-string v3, "gaode_map_cameraposition"

    const-string v4, "osm_map_zoom_level"

    const-string v5, "osm_map_longitude"

    const-string v6, "osm_map_latitude"

    const-string v7, "map_kit_measure_what"

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->w()V

    goto/16 :goto_9

    :sswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleReconnectImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_address"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_name"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->n()I

    move-result v1

    const-string v2, "device_type"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.ifengyu.intercom.RECONNECT_DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_9

    :sswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    const v3, 0x7f0800f9

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v9}, Lcom/ifengyu/intercom/i/d0;->i(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result p1

    if-eq p1, v8, :cond_3

    const v3, 0x8f03

    if-eq p1, v3, :cond_2

    const-string v3, "mcu_update_action_from_main"

    const-string v4, "mcu_update_info"

    const-string v5, "mcu_have_update"

    const-string v6, "mcu_update_device_type"

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "seal"

    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->M:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "shark"

    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->M:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/old/LiteUpgradeActivity;->start(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v2, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->k()I

    move-result v1

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "versionCode"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const v3, 0x10006

    if-lt v1, v3, :cond_4

    const-string v1, "update_mcu_ble"

    goto :goto_0

    :cond_4
    const-string v1, "update_mcu"

    :goto_0
    const-string v3, "update_info_message"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "MCU_SERVER_VERSION_CODE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.ifengyu.intercom.FORM_MAIN"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_9

    :sswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setClickable(Z)V

    iput-boolean v9, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->H:Z

    goto/16 :goto_9

    :sswitch_4
    iput-boolean v8, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->K:Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleReconnectImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleUnConnectCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_9

    :sswitch_5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->K()V

    goto/16 :goto_9

    :sswitch_6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :sswitch_7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->x()V

    goto/16 :goto_9

    :sswitch_8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b()V

    goto/16 :goto_9

    :sswitch_9
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v()V

    goto/16 :goto_9

    :sswitch_a
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J()V

    goto/16 :goto_9

    :sswitch_b
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s()V

    goto/16 :goto_9

    :sswitch_c
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t()V

    goto/16 :goto_9

    :sswitch_d
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q()V

    goto/16 :goto_9

    :sswitch_e
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p()V

    goto/16 :goto_9

    :sswitch_f
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v1, :cond_5

    const-class v1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    goto :goto_2

    :cond_5
    const-class v1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    :goto_2
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    const-string v0, "measure_distance"

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->b()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->b()Lcom/ifengyu/intercom/bean/MapCurrentStatus;

    move-result-object v0

    iget-wide v1, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLatitude:D

    invoke-virtual {p1, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    iget-wide v1, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLongitude:D

    invoke-virtual {p1, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    iget v0, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentZoomLevel:I

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :sswitch_10
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v1, :cond_7

    const-class v1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    goto :goto_4

    :cond_7
    const-class v1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    :goto_4
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    const-string v0, "measure_latLong"

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->b()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->d()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    const-string v3, "gaode_my_location_longitude"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-string v2, "gaode_my_location_latitude"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->b()Lcom/ifengyu/intercom/bean/MapCurrentStatus;

    move-result-object v0

    iget-wide v1, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLatitude:D

    invoke-virtual {p1, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    iget-wide v1, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLongitude:D

    invoke-virtual {p1, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    iget v0, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentZoomLevel:I

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :sswitch_11
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->I()V

    goto/16 :goto_9

    :sswitch_12
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v1, :cond_9

    const-class v1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    goto :goto_6

    :cond_9
    const-class v1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    :goto_6
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    const-string v0, "measure_altitude"

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->b()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->b()Lcom/ifengyu/intercom/bean/MapCurrentStatus;

    move-result-object v0

    iget-wide v1, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLatitude:D

    invoke-virtual {p1, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    iget-wide v1, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLongitude:D

    invoke-virtual {p1, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    iget v0, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentZoomLevel:I

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_7
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :sswitch_13
    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/a;->o()V

    goto/16 :goto_9

    :cond_b
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/b;->n()V

    goto/16 :goto_9

    :sswitch_14
    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/a;->n()V

    goto :goto_9

    :cond_c
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/b;->m()V

    goto :goto_9

    :sswitch_15
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->F()V

    goto :goto_9

    :sswitch_16
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L()V

    goto :goto_9

    :sswitch_17
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result p1

    if-eq p1, v2, :cond_e

    if-eq p1, v1, :cond_d

    goto :goto_9

    :cond_d
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->Q:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->Q:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-static {p1, v0, v8}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->a(Landroid/content/Context;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    goto :goto_9

    :cond_e
    iget p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->N:I

    packed-switch p1, :pswitch_data_0

    goto :goto_9

    :pswitch_0
    const p1, 0x7f110326

    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_9

    :pswitch_1
    const p1, 0x7f1102b0

    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_9

    :pswitch_2
    const p1, 0x7f110308

    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_9

    :pswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->Q:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->Q:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->R:I

    if-ne v1, v8, :cond_f

    goto :goto_8

    :cond_f
    const/4 v8, 0x0

    :goto_8
    invoke-static {p1, v0, v8}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Landroid/content/Context;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    :cond_10
    :goto_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090081 -> :sswitch_17
        0x7f090259 -> :sswitch_16
        0x7f09025a -> :sswitch_15
        0x7f09025b -> :sswitch_14
        0x7f09025d -> :sswitch_13
        0x7f09025e -> :sswitch_12
        0x7f09025f -> :sswitch_11
        0x7f090260 -> :sswitch_10
        0x7f090265 -> :sswitch_f
        0x7f090267 -> :sswitch_e
        0x7f090269 -> :sswitch_d
        0x7f09026b -> :sswitch_c
        0x7f09026d -> :sswitch_b
        0x7f09026f -> :sswitch_a
        0x7f090274 -> :sswitch_9
        0x7f090275 -> :sswitch_8
        0x7f090276 -> :sswitch_7
        0x7f0902cb -> :sswitch_6
        0x7f09041a -> :sswitch_5
        0x7f090427 -> :sswitch_4
        0x7f09042a -> :sswitch_3
        0x7f09042f -> :sswitch_2
        0x7f090431 -> :sswitch_1
        0x7f090445 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "MapFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/a;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p3, "MapFragment"

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c00a2

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->B()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->C()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->E()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->A()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "MapFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/a;->onDestroy()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->O:Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->P:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->e()V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->d()V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/lite/utils/j;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/a;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->f()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->e()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 5

    const-string v0, "MapFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->g()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->f()V

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    const v1, 0x8f03

    const v2, 0x7f0800f9

    const/4 v3, 0x5

    const/16 v4, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->d()Lcom/ifengyu/intercom/lite/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->O:Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->S:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->l()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->m()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->n()V

    goto/16 :goto_1

    :cond_1
    invoke-static {v0}, Lcom/ifengyu/intercom/f/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->O:Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->M:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->D()I

    move-result v1

    if-lt v1, v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->K()I

    move-result v1

    if-lt v1, v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->O:Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->c0()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->F:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->x()I

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o()V

    :cond_6
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/map/a;->b(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "MapFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/network/a;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G()V

    return-void
.end method

.method public onStop()V
    .locals 5

    const-string v0, "MapFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->b()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v4, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    :cond_0
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->F:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->c0()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myDeviceManager:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment$w;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$w;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public receiveDolphinParamResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 4
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "MapFragment"

    const-string v1, "receive dolphin ParamResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDevNameGBK()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/node/q/d;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/node/q/d;->b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getShareLoc()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->O:Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->O:Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionMCU()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionHW()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getVersionMCU()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(II)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n()V

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasActivateChannel()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->b(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getActivateChannel()I

    move-result p1

    if-ne p1, v1, :cond_4

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->k()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->h()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->l()I

    move-result p1

    if-lez p1, :cond_6

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->l()I

    move-result v0

    const-string v2, "dolphin"

    invoke-static {v2, p1, v0}, Lcom/ifengyu/intercom/g/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Z)V

    :cond_6
    return-void
.end method

.method public receiveSealChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "MapFragment"

    const-string v1, "receiveChannelStateOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$d;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$d;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->k()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->u()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->D()I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/i/g0;->i()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->u()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->D()I

    move-result v0

    const-string v1, "seal"

    invoke-static {v1, p1, v0}, Lcom/ifengyu/intercom/g/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Z)V

    :cond_0
    return-void
.end method

.method public receiveSealParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 4
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "MapFragment"

    const-string v1, "receive seal ParamResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/q/d;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/q/d;->b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$b;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$b;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getVerSoft()I

    move-result p1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(II)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n()V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->O:Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasActivate()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->b(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasActivate()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getActivate()I

    move-result p1

    if-ne p1, v2, :cond_4

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_1
    return-void
.end method

.method public receiveSharkChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "MapFragment"

    const-string v1, "receiveChannelStateOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$e;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$e;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->k()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->F()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->K()I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/i/h0;->e()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->F()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->K()I

    move-result v0

    const-string v1, "shark"

    invoke-static {v1, p1, v0}, Lcom/ifengyu/intercom/g/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Z)V

    :cond_0
    return-void
.end method

.method public receiveSharkParamResponse(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
    .locals 5
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "MapFragment"

    const-string v1, "receive shark ParamResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/q/d;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/q/d;->b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$c;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getVerSoft()I

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(II)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n()V

    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->O:Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasActivate()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->b(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasActivate()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getActivate()I

    move-result p1

    if-ne p1, v2, :cond_4

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_0
    return-void
.end method
