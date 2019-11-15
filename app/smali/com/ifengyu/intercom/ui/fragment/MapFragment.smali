.class public Lcom/ifengyu/intercom/ui/fragment/MapFragment;
.super Lcom/ifengyu/intercom/ui/baseui/BaseFragment;
.source "MapFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/network/a;
.implements Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

.field private I:I

.field private J:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

.field private K:Landroid/content/ServiceConnection;

.field private L:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field private M:I

.field private b:Z

.field bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10025b
    .end annotation
.end field

.field bleReconnectImmediatelyBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10025c
    .end annotation
.end field

.field bleUnConnectCloseBtn:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10025d
    .end annotation
.end field

.field bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100247
    .end annotation
.end field

.field bottomChannelName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100248
    .end annotation
.end field

.field bottomChannelNumber:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100249
    .end annotation
.end field

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/PopupWindow;

.field private f:Landroid/widget/PopupWindow;

.field private g:Landroid/text/SpannableString;

.field gpsNoAccuracyPrompt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100253
    .end annotation
.end field

.field private h:Landroid/text/SpannableString;

.field private i:Landroid/text/SpannableString;

.field private j:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

.field private k:Z

.field private l:Lcom/ifengyu/intercom/greendao/bean/b;

.field locationShareIV:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10024a
    .end annotation
.end field

.field private m:Landroid/view/animation/TranslateAnimation;

.field mapContainer:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100245
    .end annotation
.end field

.field mapKitBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10024c
    .end annotation
.end field

.field mapSwitchTypeBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10024d
    .end annotation
.end field

.field mapTrackRecordBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10024b
    .end annotation
.end field

.field mapTrackRecordCloseBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100259
    .end annotation
.end field

.field mapTrackRecordCompressDistance:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100252
    .end annotation
.end field

.field mapTrackRecordCompressSpeed:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100250
    .end annotation
.end field

.field mapTrackRecordDistance:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100256
    .end annotation
.end field

.field mapTrackRecordGpsAccuracy:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10024e
    .end annotation
.end field

.field mapTrackRecordPauseBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100258
    .end annotation
.end field

.field mapTrackRecordSpeed:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100255
    .end annotation
.end field

.field mapTrackRecordTiming:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100257
    .end annotation
.end field

.field mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100261
    .end annotation
.end field

.field mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10025e
    .end annotation
.end field

.field mcuHaveUpdateTV:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10025f
    .end annotation
.end field

.field mcuUpdateImmediatelyBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100260
    .end annotation
.end field

.field myDeviceManager:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100243
    .end annotation
.end field

.field myLocateIV:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000e5
    .end annotation
.end field

.field private n:Lcom/ifengyu/intercom/ui/MainActivity;

.field private o:Lcom/ifengyu/intercom/ui/map/a;

.field private p:Lcom/ifengyu/intercom/ui/map/b;

.field popupBg:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10011c
    .end annotation
.end field

.field private q:Lcom/amap/api/maps/TextureMapView;

.field private r:Lorg/osmdroid/views/MapView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field titleBarRight:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10015b
    .end annotation
.end field

.field titleBarTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100244
    .end annotation
.end field

.field trackRecordingCompressBtn:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10025a
    .end annotation
.end field

.field trackRecordingCompressCanHideLayout:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100254
    .end annotation
.end field

.field trackRecordingCompressDistanceLayout:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100251
    .end annotation
.end field

.field trackRecordingCompressSpeedLayout:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10024f
    .end annotation
.end field

.field trackRecordingDataLayout:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100246
    .end annotation
.end field

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/view/View;

.field private z:Z

.field zoomBigIV:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000e3
    .end annotation
.end field

.field zoomSmallIV:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000e4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->C:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->I:I

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$1;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->K:Landroid/content/ServiceConnection;

    return-void
.end method

.method private A()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/f;->b()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/b/aa;->a()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/ifengyu/intercom/b/ab;->a()V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/ifengyu/intercom/b/h;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private B()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$13;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$13;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->I:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->H:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    return-object p1
.end method

.method public static a()Lcom/ifengyu/intercom/ui/fragment/MapFragment;
    .locals 2

    const-string v0, "MapFragment"

    const-string v1, "newInstance"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/service/TrackRecordService;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/ui/service/TrackRecordService;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object p1
.end method

.method private a(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->C:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->M:I

    return p1
.end method

.method private b(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/ifengyu/intercom/b/aa;->c()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/b/ab;->d()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k()V

    return-void
.end method

.method private b(Z)V
    .locals 6

    const/4 v4, 0x2

    new-array v0, v4, [I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myDeviceManager:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    new-array v1, v4, [I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    new-array v2, v4, [I

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    new-array v3, v4, [I

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->zoomBigIV:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    const-class v5, Lcom/ifengyu/intercom/ui/activity/UserGuideActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "isConnect"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "titleBarLeftBtnPoint"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v0, "titleBarRightBtnPoint"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v0, "shareLocationBtnPoint"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->E:Z

    return p1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/text/SpannableString;

    return-object v0
.end method

.method private c(I)V
    .locals 6

    const v5, 0x7f02013b

    const v1, 0x7f020139

    const v4, 0x7f020137

    const v3, 0x7f0f0095

    const v2, 0x7f0f001d

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Landroid/widget/ImageView;

    const v1, 0x7f020138

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c:Landroid/widget/ImageView;

    const v1, 0x7f02013d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Landroid/widget/ImageView;

    const v1, 0x7f020136

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c:Landroid/widget/ImageView;

    const v1, 0x7f02013d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c:Landroid/widget/ImageView;

    const v1, 0x7f02013c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c:Landroid/widget/ImageView;

    const v1, 0x7f02013d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->d:Landroid/widget/ImageView;

    const v1, 0x7f02013a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->F:Z

    return p1
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g:Landroid/text/SpannableString;

    return-object v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/text/SpannableString;

    return-object v0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object v0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->I:I

    return v0
.end method

.method private g()V
    .locals 7

    const/4 v0, 0x2

    const/4 v6, -0x1

    const/4 v1, 0x1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->X()I

    move-result v2

    if-eq v2, v1, :cond_0

    if-ne v2, v0, :cond_2

    :cond_0
    new-instance v3, Lcom/amap/api/maps/TextureMapView;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amap/api/maps/TextureMapView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/amap/api/maps/TextureMapView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/amap/api/maps/TextureMapView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/amap/api/maps/TextureMapView;

    invoke-direct {v3, v4, v5, p0}, Lcom/ifengyu/intercom/ui/map/a;-><init>(Landroid/content/Context;Lcom/amap/api/maps/TextureMapView;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    if-ne v2, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v3, v0, v1}, Lcom/ifengyu/intercom/ui/map/a;->a(IZ)V

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lorg/osmdroid/views/MapView;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r:Lorg/osmdroid/views/MapView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r:Lorg/osmdroid/views/MapView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v3, v4, p0}, Lcom/ifengyu/intercom/ui/map/b;-><init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    const/4 v0, 0x3

    if-ne v2, v0, :cond_3

    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    goto :goto_1
.end method

.method private h()V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    const/16 v5, 0x11

    const/16 v4, 0xd

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->y:Landroid/view/View;

    const v1, 0x7f100097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingDataLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    sget-object v0, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordTiming:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, " km"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g:Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v4, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, " km/h"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v4, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, " m"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v4, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "00:00:00"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v4, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v2, 0x5

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordTiming:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapKitBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapSwitchTypeBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->E:Z

    return v0
.end method

.method private i()V
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

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u()V

    return-void
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/MainActivity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    return-object v0
.end method

.method private j()V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    return-object v0
.end method

.method private k()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->T()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->U()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->R()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->S()V

    goto :goto_0
.end method

.method static synthetic l(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->o(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const-string v0, "map_tab_page"

    const-string v1, "deviceSettingClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v3, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v3, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v3, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.FROM_DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private m()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(I)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->m()V

    :goto_0
    invoke-static {v4}, Lcom/ifengyu/intercom/b/w;->m(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myLocateIV:Landroid/widget/ImageView;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/MiTalkiApp;->c(Z)V

    iput-boolean v5, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->n()Lcom/ifengyu/intercom/bean/MapCurrentStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ne v1, v4, :cond_1

    new-instance v1, Lcom/amap/api/maps/TextureMapView;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amap/api/maps/TextureMapView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/amap/api/maps/TextureMapView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/amap/api/maps/TextureMapView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/map/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/amap/api/maps/TextureMapView;

    invoke-direct {v1, v2, v3, p0}, Lcom/ifengyu/intercom/ui/map/a;-><init>(Landroid/content/Context;Lcom/amap/api/maps/TextureMapView;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1, v4, v5}, Lcom/ifengyu/intercom/ui/map/a;->a(IZ)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1, v7}, Lcom/ifengyu/intercom/ui/map/a;->a(Landroid/os/Bundle;)V

    :goto_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->a()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/map/a;->a(Lcom/ifengyu/intercom/bean/MapCurrentStatus;)V

    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->d()V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->g()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->W()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/map/a;->a(Lcom/ifengyu/intercom/greendao/bean/b;)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v1, v5}, Lcom/amap/api/maps/TextureMapView;->setVisibility(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->b()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->c()V

    iput-object v7, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->m()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->g()V

    goto/16 :goto_0
.end method

.method static synthetic m(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    return v0
.end method

.method static synthetic n(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    return-object v0
.end method

.method private n()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v6}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(I)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->n()V

    :goto_0
    invoke-static {v6}, Lcom/ifengyu/intercom/b/w;->m(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myLocateIV:Landroid/widget/ImageView;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/MiTalkiApp;->c(Z)V

    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->n()Lcom/ifengyu/intercom/bean/MapCurrentStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ne v1, v5, :cond_1

    new-instance v1, Lcom/amap/api/maps/TextureMapView;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amap/api/maps/TextureMapView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/amap/api/maps/TextureMapView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/amap/api/maps/TextureMapView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/map/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/amap/api/maps/TextureMapView;

    invoke-direct {v1, v2, v3, p0}, Lcom/ifengyu/intercom/ui/map/a;-><init>(Landroid/content/Context;Lcom/amap/api/maps/TextureMapView;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1, v6, v4}, Lcom/ifengyu/intercom/ui/map/a;->a(IZ)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1, v8}, Lcom/ifengyu/intercom/ui/map/a;->a(Landroid/os/Bundle;)V

    :goto_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->a()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/map/a;->a(Lcom/ifengyu/intercom/bean/MapCurrentStatus;)V

    iput-boolean v5, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->d()V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->g()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->W()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/map/a;->a(Lcom/ifengyu/intercom/greendao/bean/b;)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v1, v4}, Lcom/amap/api/maps/TextureMapView;->setVisibility(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->b()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->c()V

    iput-object v8, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->n()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->g()V

    goto/16 :goto_0
.end method

.method static synthetic o(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    return-object v0
.end method

.method private o()V
    .locals 7

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, v6}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(I)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myLocateIV:Landroid/widget/ImageView;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/MiTalkiApp;->c(Z)V

    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->h()Lcom/ifengyu/intercom/bean/MapCurrentStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/osmdroid/views/MapView;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r:Lorg/osmdroid/views/MapView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/amap/api/maps/TextureMapView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/TextureMapView;->setVisibility(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r:Lorg/osmdroid/views/MapView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r:Lorg/osmdroid/views/MapView;

    invoke-direct {v1, v2, v3, p0}, Lcom/ifengyu/intercom/ui/map/b;-><init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    sget-object v2, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    invoke-virtual {v1, v2, v4}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Z)V

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->a()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/bean/MapCurrentStatus;)V

    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->f()V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->e()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->W()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/greendao/bean/b;)V

    :goto_1
    invoke-static {v6}, Lcom/ifengyu/intercom/b/w;->m(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->b()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->c()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->h()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->e()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->h()V

    goto :goto_1
.end method

.method private p()V
    .locals 7

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-direct {p0, v5}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(I)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myLocateIV:Landroid/widget/ImageView;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/MiTalkiApp;->c(Z)V

    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->h()Lcom/ifengyu/intercom/bean/MapCurrentStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/osmdroid/views/MapView;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r:Lorg/osmdroid/views/MapView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v1, v5}, Lcom/amap/api/maps/TextureMapView;->setVisibility(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r:Lorg/osmdroid/views/MapView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r:Lorg/osmdroid/views/MapView;

    invoke-direct {v1, v2, v3, p0}, Lcom/ifengyu/intercom/ui/map/b;-><init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    sget-object v2, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    invoke-virtual {v1, v2, v4}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Z)V

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->a()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/bean/MapCurrentStatus;)V

    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->f()V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->e()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->W()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/greendao/bean/b;)V

    :goto_1
    invoke-static {v5}, Lcom/ifengyu/intercom/b/w;->m(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->b()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/a;->c()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/b;->i()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->e()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->i()V

    goto :goto_1
.end method

.method static synthetic p(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->F:Z

    return v0
.end method

.method private q()V
    .locals 9

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/high16 v8, 0x447a0000    # 1000.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v0, "MapFragment"

    const-string v1, "handleTrackRecordWhenStartUp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->W()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Lcom/ifengyu/intercom/greendao/bean/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Lcom/ifengyu/intercom/greendao/bean/b;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->K:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v6}, Landroid/support/v4/app/FragmentActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingDataLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v6, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->n()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "%02d:%02d:%02d"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/lit16 v4, v4, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rem-int/lit16 v4, v4, 0xe10

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0xd

    invoke-direct {v0, v2, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v2, 0x5

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordTiming:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->o()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->z()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    const v1, 0x7f09006d

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/map/a;->a(Lcom/ifengyu/intercom/greendao/bean/b;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%.1f"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%.1f"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    const v1, 0x7f090076

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/greendao/bean/b;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->A()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MapFragment"

    const-string v1, "track not be saved,so load track info and start TrackRecordService"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingDataLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v6, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->n()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_7
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "%02d:%02d:%02d"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/lit16 v4, v4, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rem-int/lit16 v4, v4, 0xe10

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0xd

    invoke-direct {v0, v2, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v2, 0x5

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordTiming:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->o()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_a

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    const v1, 0x7f09006d

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->b:Lorg/greenrobot/greendao/f;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v1

    new-array v2, v7, [Lorg/greenrobot/greendao/c/i;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    new-array v1, v6, [Lorg/greenrobot/greendao/f;

    sget-object v2, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->g:Lorg/greenrobot/greendao/f;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/c/g;->b([Lorg/greenrobot/greendao/f;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/greenrobot/greendao/c/g;->a(I)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_9

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/c;

    invoke-virtual {v0, v6}, Lcom/ifengyu/intercom/greendao/bean/c;->a(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "is_load_last_not_saved_track"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "last_not_saved_track_primary_key_id"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->W()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->K:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v6}, Landroid/support/v4/app/FragmentActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto/16 :goto_2

    :cond_a
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    const-string v2, "%.1f"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    const-string v2, "%.1f"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private r()V
    .locals 4

    const v3, 0x7f0201bc

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressCanHideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressCanHideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressDistanceLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressSpeedLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressCanHideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressDistanceLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressSpeedLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingCompressBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private s()V
    .locals 3

    const v2, 0x7f090076

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    const v1, 0x7f09006d

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f09021b

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k:Z

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/map/a;->a(Lcom/ifengyu/intercom/greendao/bean/b;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/greendao/bean/b;)V

    goto :goto_1
.end method

.method private t()V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f0901fe

    const v2, 0x7f09006c

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f09021b

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$4;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$4;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v3, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f09022c

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$5;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$5;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v3, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    goto :goto_0
.end method

.method private u()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingDataLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "00:00:00"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0xd

    invoke-direct {v1, v2, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v2, 0x5

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordTiming:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    const v1, 0x7f090076

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordPauseBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "is_load_last_not_saved_track"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->K:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v5}, Landroid/support/v4/app/FragmentActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->f()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->d()V

    goto :goto_0
.end method

.method private v()V
    .locals 7

    const/4 v3, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0400d1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1002ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1002eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f:Landroid/widget/PopupWindow;

    const v2, 0x7f0c00b2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/MapFragment$6;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$6;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->popupBg:Landroid/view/View;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/MapFragment$7;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$7;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->popupBg:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapKitBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/a;->a(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapKitBtn:Landroid/widget/TextView;

    sget v4, Lcom/ifengyu/intercom/a;->c:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    aget v1, v1, v6

    invoke-virtual {v2, v3, v5, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private w()V
    .locals 7

    const/4 v4, 0x2

    const/4 v3, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0400ce

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f1002d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Landroid/widget/ImageView;

    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->u:Landroid/widget/TextView;

    const v0, 0x7f1002db

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Landroid/widget/ImageView;

    const v0, 0x7f1002dc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v:Landroid/widget/TextView;

    const v0, 0x7f1002dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c:Landroid/widget/ImageView;

    const v0, 0x7f1002de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->w:Landroid/widget/TextView;

    const v0, 0x7f1002df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->d:Landroid/widget/ImageView;

    const v0, 0x7f1002e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->x:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->o()I

    move-result v0

    if-ne v0, v6, :cond_0

    invoke-direct {p0, v6}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(I)V

    :goto_0
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v1, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e:Landroid/widget/PopupWindow;

    const v2, 0x7f0c00b2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/MapFragment$8;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$8;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->popupBg:Landroid/view/View;

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/MapFragment$9;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$9;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->popupBg:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-array v0, v4, [I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapKitBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/a;->a(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapKitBtn:Landroid/widget/TextView;

    sget v4, Lcom/ifengyu/intercom/a;->c:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v4, v1

    aget v0, v0, v6

    invoke-virtual {v2, v3, v5, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    :cond_0
    invoke-direct {p0, v4}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->j()Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(I)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(I)V

    goto/16 :goto_0
.end method

.method private x()V
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z:Z

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myLocateIV:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0200f4

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z:Z

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/map/a;->a(Z)V

    :goto_2
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->c(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v0, 0x7f0200f3

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->k()V

    goto :goto_2
.end method

.method private y()V
    .locals 8

    const v7, 0x7f0200f7

    const v6, 0x7f0200f6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$10;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$10;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f090187

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020128

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/ifengyu/intercom/ui/MainActivity;->a(ZZLjava/lang/String;I)V

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/node/f;->a(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v4}, Lcom/ifengyu/intercom/b/w;->a(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/node/f;->a(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v5}, Lcom/ifengyu/intercom/b/w;->a(Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v4}, Lcom/ifengyu/intercom/b/aa;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    invoke-static {v5}, Lcom/ifengyu/intercom/b/aa;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->H()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v4}, Lcom/ifengyu/intercom/b/ab;->b(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    invoke-static {v5}, Lcom/ifengyu/intercom/b/ab;->b(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v4}, Lcom/ifengyu/intercom/b/w;->a(Z)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1

    :cond_5
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private z()V
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Z

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$11;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$11;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myLocateIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z:Z

    return-void
.end method

.method public a(IIIF)V
    .locals 7

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;IIIF)V

    invoke-virtual {v6, v0}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(JLjava/lang/String;ZZ)V
    .locals 6

    const v5, 0x7f09022b

    const/4 v4, 0x0

    const v3, 0x7f0901fe

    const v2, 0x7f09006c

    if-eqz p4, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    invoke-static {v5}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$14;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$14;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v3, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    :goto_0
    return-void

    :cond_0
    if-eqz p5, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    invoke-static {v5}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$15;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$15;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v3, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f09022a

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$16;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$16;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v3, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    goto :goto_0
.end method

.method public a(JZ)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->trackRecordingDataLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->g()V

    :goto_0
    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->K:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->stopService(Landroid/content/Intent;)Z

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->e()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "trackInfoPrimaryKeyId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "track_info_for_what"

    const-string v2, "for_preview_track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->K:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method public a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x2

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->sendEmptyMessage(I)Z

    sget v0, Lcom/ifengyu/intercom/b/w;->a:I

    if-ne v0, v1, :cond_0

    const v0, 0x7f090186

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mcu_language_type_english"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/b/v;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mcu_language_type_chinese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/bean/LocationBean;",
            ">;>;Z)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/ifengyu/intercom/ui/map/a;->a(ZLjava/util/ArrayList;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/ifengyu/intercom/ui/map/b;->a(ZLjava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public d()V
    .locals 4

    const v0, 0x7f0200f7

    const v1, 0x7f0200f6

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->t()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_3
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->H()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public e()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->A()V

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->C:Z

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->D:Z

    return-void
.end method

.method public f()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "MapFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/map/a;->a(Landroid/os/Bundle;)V

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    const-string v0, "MapFragment"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    return-void
.end method

.method public onBeanUserLocationChanged(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/map/a;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v3, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "map_tab_page"

    const-string v1, "deviceListBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->y()V

    const-string v0, "map_tab_page"

    const-string v1, "shareLocationBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->k()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->l()V

    goto :goto_0

    :sswitch_4
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->l()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->m()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->x()V

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->I:I

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->M:I

    if-ne v4, v0, :cond_3

    :goto_1
    invoke-static {v2, v3, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Landroid/content/Context;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->L:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-static {v1, v2, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->a(Landroid/content/Context;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :pswitch_3
    const v0, 0x7f0901f4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :pswitch_4
    const v0, 0x7f0901a4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :pswitch_5
    const v0, 0x7f090205

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->t()V

    const-string v0, "map_tab_page"

    const-string v1, "trackBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s()V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c()V

    goto/16 :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r()V

    goto/16 :goto_0

    :sswitch_b
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v()V

    const-string v0, "map_tab_page"

    const-string v1, "mapToolBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->w()V

    const-string v0, "map_tab_page"

    const-string v1, "mapSwitchBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m()V

    goto/16 :goto_0

    :sswitch_e
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n()V

    goto/16 :goto_0

    :sswitch_f
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o()V

    goto/16 :goto_0

    :sswitch_10
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p()V

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_4

    const-class v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    :goto_2
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "map_kit_measure_what"

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_5

    const-string v0, "measure_distance"

    :goto_3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_6

    const-string v0, "gaode_map_cameraposition"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/a;->i()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_4
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const-class v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    goto :goto_2

    :cond_5
    const-string v0, "measure_distance"

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->n()Lcom/ifengyu/intercom/bean/MapCurrentStatus;

    move-result-object v0

    const-string v2, "osm_map_latitude"

    iget-wide v4, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLatitude:D

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v2, "osm_map_longitude"

    iget-wide v4, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLongitude:D

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v2, "osm_map_zoom_level"

    iget v0, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentZoomLevel:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    :sswitch_12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_7

    const-class v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    :goto_5
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "map_kit_measure_what"

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_8

    const-string v0, "measure_altitude"

    :goto_6
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_9

    const-string v0, "gaode_map_cameraposition"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/a;->i()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_7
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const-class v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    goto :goto_5

    :cond_8
    const-string v0, "measure_altitude"

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->n()Lcom/ifengyu/intercom/bean/MapCurrentStatus;

    move-result-object v0

    const-string v2, "osm_map_latitude"

    iget-wide v4, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLatitude:D

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v2, "osm_map_longitude"

    iget-wide v4, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLongitude:D

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v2, "osm_map_zoom_level"

    iget v0, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentZoomLevel:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7

    :sswitch_13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_a

    const-class v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    :goto_8
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "map_kit_measure_what"

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_b

    const-string v0, "measure_latLong"

    :goto_9
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_c

    const-string v0, "gaode_map_cameraposition"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/a;->i()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->j()Landroid/location/Location;

    move-result-object v0

    const-string v2, "gaode_my_location_longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v2, "gaode_my_location_latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    :goto_a
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    const-class v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    goto :goto_8

    :cond_b
    const-string v0, "measure_latLong"

    goto :goto_9

    :cond_c
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->n()Lcom/ifengyu/intercom/bean/MapCurrentStatus;

    move-result-object v0

    const-string v2, "osm_map_latitude"

    iget-wide v4, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLatitude:D

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v2, "osm_map_longitude"

    iget-wide v4, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLongitude:D

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v2, "osm_map_zoom_level"

    iget v0, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentZoomLevel:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_a

    :sswitch_14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleReconnectImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "device_address"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/MainActivity;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "device_name"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/MainActivity;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.ifengyu.intercom.RECONNECT_DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->b()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/MainActivity;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/a/d;->a(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_15
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->F:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleReconnectImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleUnConnectCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_0

    :sswitch_16
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    const v3, 0x7f0200f8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v1}, Lcom/ifengyu/intercom/b/w;->o(Z)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    :goto_b
    :pswitch_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v1, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->m()I

    move-result v1

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "versionCode"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "update_info_message"

    const v4, 0x10006

    if-lt v1, v4, :cond_e

    const-string v1, "update_mcu_ble"

    :goto_c
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MCU_SERVER_VERSION_CODE"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.ifengyu.intercom.FORM_MAIN"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    :cond_e
    const-string v1, "update_mcu"

    goto :goto_c

    :pswitch_8
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v3, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "mcu_update_device_type"

    const-string v3, "seal"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mcu_have_update"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "mcu_update_info"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->H:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "mcu_update_action_from_main"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    :pswitch_9
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v3, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "mcu_update_device_type"

    const-string v3, "shark"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mcu_have_update"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "mcu_update_info"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->H:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "mcu_update_action_from_main"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    :sswitch_17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->C:Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000e3 -> :sswitch_3
        0x7f1000e4 -> :sswitch_4
        0x7f1000e5 -> :sswitch_5
        0x7f10015b -> :sswitch_1
        0x7f100243 -> :sswitch_0
        0x7f100247 -> :sswitch_6
        0x7f10024a -> :sswitch_2
        0x7f10024b -> :sswitch_7
        0x7f10024c -> :sswitch_b
        0x7f10024d -> :sswitch_c
        0x7f100258 -> :sswitch_8
        0x7f100259 -> :sswitch_9
        0x7f10025a -> :sswitch_a
        0x7f10025c -> :sswitch_14
        0x7f10025d -> :sswitch_15
        0x7f100260 -> :sswitch_16
        0x7f100261 -> :sswitch_17
        0x7f1002d9 -> :sswitch_d
        0x7f1002db -> :sswitch_e
        0x7f1002dd -> :sswitch_f
        0x7f1002df -> :sswitch_10
        0x7f1002e9 -> :sswitch_11
        0x7f1002ea -> :sswitch_12
        0x7f1002eb -> :sswitch_13
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "MapFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "MapFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->y:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f040095

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->y:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->y:Landroid/view/View;

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->i()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->y:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "MapFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->K:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/MainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->c()V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->c()V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onPause()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->b()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    const/16 v2, 0x8

    const-string v0, "MapFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onResume()V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->a()V

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->H:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->H:Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->d()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->T()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->B:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->A:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->a()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p:Lcom/ifengyu/intercom/ui/map/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->a()V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->s()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->G()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->sendEmptyMessage(I)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o:Lcom/ifengyu/intercom/ui/map/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/map/a;->b(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "MapFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onStart()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/network/a;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->A()V

    return-void
.end method

.method public onStop()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "MapFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onStop()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v3, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/MainActivity;->stopService(Landroid/content/Intent;)Z

    :cond_0
    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->A:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->T()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->myDeviceManager:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$12;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$12;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public receiveDolphinParamResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 4
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const/4 v3, 0x1

    const-string v0, "MapFragment"

    const-string v1, "receive dolphin ParamResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDevNameGBK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->af()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/a/d;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/a/d;->c(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getShareLoc()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionMCU()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionHW()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getVersionMCU()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(II)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z()V

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasActivateChannel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/MainActivity;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->b(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getActivateChannel()I

    move-result v0

    if-ne v0, v3, :cond_6

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->B()V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->i()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->l()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "dolphin"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->l()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/a/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/MiTalkiApp;->d(Z)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/MainActivity;->p:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public receiveSealChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "MapFragment"

    const-string v1, "receiveChannelStateOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->s()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/aa;->i()V

    const-string v0, "seal"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->s()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/a/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->d(Z)V

    :cond_0
    return-void
.end method

.method public receiveSealParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 5
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const/4 v4, 0x5

    const/4 v3, 0x1

    const-string v0, "MapFragment"

    const-string v1, "receive seal ParamResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->af()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/a/d;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/a/d;->c(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$18;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$18;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getVerSoft()I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(II)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z()V

    invoke-direct {p0, v4}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    :goto_1
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasActivate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/MainActivity;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->b(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasActivate()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getActivate()I

    move-result v0

    if-ne v0, v3, :cond_5

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->B()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/MainActivity;->p:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public receiveSharkChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "MapFragment"

    const-string v1, "receiveChannelStateOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->E()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->G()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/ab;->f()V

    const-string v0, "shark"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->G()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/a/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->d(Z)V

    :cond_0
    return-void
.end method

.method public receiveSharkParamResponse(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
    .locals 5
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const/4 v4, 0x1

    const/4 v0, 0x4

    const-string v1, "MapFragment"

    const-string v2, "receive shark ParamResponse"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasDeviceName()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->af()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/node/a/d;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ae()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/node/a/d;->c(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/MapFragment$19;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$19;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getVerSoft()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(II)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z()V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasShareLoc()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->H()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x3

    :cond_3
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasActivate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/MainActivity;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->b(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasActivate()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getActivate()I

    move-result v0

    if-ne v0, v4, :cond_5

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->B()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/MainActivity;->p:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
