.class public Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;
.super Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.source "BleDeviceMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;
    }
.end annotation


# instance fields
.field private A:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

.field private B:Lio/reactivex/disposables/Disposable;

.field private C:Ljava/lang/String;

.field bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007d
    .end annotation
.end field

.field bottomChannelName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007e
    .end annotation
.end field

.field bottomChannelNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007f
    .end annotation
.end field

.field private j:Landroid/widget/PopupWindow;

.field private k:Landroid/widget/PopupWindow;

.field private l:Landroid/view/animation/TranslateAnimation;

.field locationShareIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902cc
    .end annotation
.end field

.field private m:Lcom/ifengyu/intercom/ui/c/e;

.field mapKitBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902d2
    .end annotation
.end field

.field mapSwitchTypeBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902de
    .end annotation
.end field

.field mapView:Lcom/amap/api/maps/MapView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c9
    .end annotation
.end field

.field mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a1
    .end annotation
.end field

.field mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a2
    .end annotation
.end field

.field mcuHaveUpdateTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a6
    .end annotation
.end field

.field mcuUpdateImmediatelyBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a5
    .end annotation
.end field

.field myLocateIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902cd
    .end annotation
.end field

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Z

.field private s:Z

.field private t:Lcom/ifengyu/intercom/http/entity/VersionInfo;

.field titleBarLeft:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048e
    .end annotation
.end field

.field titleBarRight:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048f
    .end annotation
.end field

.field titleBarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090491
    .end annotation
.end field

.field private u:I

.field private v:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

.field private w:I

.field private x:Lcom/qmuiteam/qmui/widget/dialog/b;

.field private y:Lcom/qmuiteam/qmui/widget/dialog/b;

.field private z:Z

.field zoomBigIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ce
    .end annotation
.end field

.field zoomSmallIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902d0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->r:Z

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->s:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->u:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->z:Z

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->A:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

    return-void
.end method

.method private synthetic B0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/t0;->b()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic D0(Lcom/ifengyu/intercom/models/DeviceModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceType()I

    move-result p2

    .line 3
    invoke-static {p2}, Lcom/ifengyu/intercom/j/b;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/ifengyu/intercom/p/j0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->a0(I)V

    .line 5
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->W(I)V

    return-void
.end method

.method static synthetic F(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->W(I)V

    return-void
.end method

.method private synthetic F0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/t0;->b()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic G(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->z:Z

    return p0
.end method

.method static synthetic H(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/http/entity/VersionInfo;)Lcom/ifengyu/intercom/http/entity/VersionInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->t:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    return-object p1
.end method

.method private synthetic H0(Ljava/lang/String;Lcom/ifengyu/intercom/models/DeviceModel;ILcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/ifengyu/intercom/p/j0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/ifengyu/intercom/p/j0;->x(ILjava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->W(I)V

    return-void
.end method

.method static synthetic I(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->z:Z

    return p1
.end method

.method static synthetic J(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->v:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    return-object p0
.end method

.method private synthetic J0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic K(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->v:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    return-object p1
.end method

.method static synthetic L(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->u:I

    return p0
.end method

.method private synthetic L0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic M(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->u:I

    return p1
.end method

.method static synthetic N(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->w:I

    return p1
.end method

.method static synthetic O(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->k:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private synthetic O0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "BleDeviceMapActivity"

    const-string v0, "uploadInterPhoneInfo success"

    .line 1
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/i/z0/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/i/z0/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/z0/d;->j0(Z)V

    :cond_0
    return-void
.end method

.method static synthetic P(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->j:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private Q0()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->v()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/MiTalkiApp;->H(Z)V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->myLocateIV:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const v2, 0x7f080134

    goto :goto_0

    :cond_0
    const v2, 0x7f080133

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/c/e;->n(Z)V

    return-void
.end method

.method static synthetic R(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->U(Ljava/lang/String;)V

    return-void
.end method

.method private R0(I)V
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7f060036

    const v2, 0x7f06018b

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->n:Landroid/widget/ImageView;

    const v0, 0x7f08019f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->o:Landroid/widget/ImageView;

    const v0, 0x7f08019c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->n:Landroid/widget/ImageView;

    const v0, 0x7f08019e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->o:Landroid/widget/ImageView;

    const v0, 0x7f08019d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method static synthetic S(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Lcom/ifengyu/intercom/ui/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    return-object p0
.end method

.method static synthetic T(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->A:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

    return-object p0
.end method

.method private T0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/x0;->r1()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->m(Ljava/lang/String;)Lcom/ifengyu/intercom/i/y0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/y0;->k1()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->i(Ljava/lang/String;)Lcom/ifengyu/intercom/i/u0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/u0;->p1()V

    :goto_0
    return-void
.end method

.method private U(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "deviceId"

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "active"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    .line 5
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/n/a;->Q(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/h;->a:Lcom/ifengyu/intercom/device/oldDevice/h;

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$d;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    .line 9
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private V()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/device/oldDevice/n;->a:Lcom/ifengyu/intercom/device/oldDevice/n;

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/r;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/oldDevice/r;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    sget-object v2, Lcom/ifengyu/intercom/device/oldDevice/t;->a:Lcom/ifengyu/intercom/device/oldDevice/t;

    .line 4
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private V0()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/e/a/b;

    invoke-direct {v0, p0}, Lb/e/a/b;-><init>(Landroid/app/Activity;)V

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/e/a/b;->l([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/oldDevice/j;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private W(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->s:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->s:Z

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/x0;->C0()Z

    move-result v0

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->m(Ljava/lang/String;)Lcom/ifengyu/intercom/i/y0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/y0;->A0()Z

    move-result v0

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->i(Ljava/lang/String;)Lcom/ifengyu/intercom/i/u0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/u0;->D0()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    return-void

    .line 6
    :cond_4
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$c;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->B(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;)V

    return-void
.end method

.method private W0(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->r:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->A:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private X(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceType()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/j/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v1

    .line 3
    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/n/a;->K(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/o;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/oldDevice/o;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/q;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/q;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/models/DeviceModel;)V

    new-instance v2, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$g;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$g;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/models/DeviceModel;)V

    .line 6
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private X0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11005e

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100bd

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/f;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/oldDevice/f;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    const v2, 0x7f1101d5

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private Y()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->R0(I)V

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/c/e;->z()V

    .line 3
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->h0(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private Y0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110033

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100bd

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/oldDevice/i;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    const v2, 0x7f1101d6

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private Z()V
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->R0(I)V

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/c/e;->A()V

    .line 3
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->h0(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private Z0(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->y:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v2, 0x7f11018a

    .line 5
    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceType()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/j/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/p/j0;->m(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->F(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v2, 0x7f1100bd

    const/4 v3, 0x2

    new-instance v4, Lcom/ifengyu/intercom/device/oldDevice/g;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/device/oldDevice/g;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    .line 7
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v2, 0x7f110049

    new-instance v3, Lcom/ifengyu/intercom/device/oldDevice/l;

    invoke-direct {v3, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/l;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/models/DeviceModel;)V

    .line 8
    invoke-virtual {v0, v1, v2, v1, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f120100

    .line 9
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->y:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a0(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/j/b;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/n/a;->K(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$f;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$f;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    .line 6
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private a1(Lcom/ifengyu/intercom/models/DeviceModel;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->y:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceType()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/j/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/ifengyu/intercom/m/b/g;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v1, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 5
    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v1, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v3, 0x7f110439

    .line 6
    invoke-virtual {v1, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v1, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 7
    invoke-static {v0}, Lcom/ifengyu/intercom/p/j0;->n(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->F(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    new-instance v5, Lcom/ifengyu/intercom/device/oldDevice/k;

    invoke-direct {v5, p0}, Lcom/ifengyu/intercom/device/oldDevice/k;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    .line 8
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v1, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v3, 0x7f110049

    new-instance v4, Lcom/ifengyu/intercom/device/oldDevice/e;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/e;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Ljava/lang/String;Lcom/ifengyu/intercom/models/DeviceModel;I)V

    .line 9
    invoke-virtual {v1, v2, v3, v2, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v1, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f120100

    .line 10
    invoke-virtual {v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->y:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$e;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c1()V
    .locals 8

    const v0, 0x7f0c0110

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902d8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902d1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902d3

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->k:Landroid/widget/PopupWindow;

    const v2, 0x7f12000f

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->k:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->k:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->k:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$n;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$n;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v1, 0x2

    new-array v3, v1, [I

    .line 11
    iget-object v5, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mapKitBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 12
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 13
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 14
    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 15
    invoke-static {p0}, Lcom/ifengyu/intercom/g;->c(Landroid/app/Activity;)V

    .line 16
    iget-object v5, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->k:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mapKitBtn:Landroid/widget/TextView;

    sget v7, Lcom/ifengyu/intercom/g;->a:I

    div-int/2addr v7, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, v1

    sub-int/2addr v7, v0

    aget v0, v3, v2

    invoke-virtual {v5, v6, v4, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->k:Landroid/widget/PopupWindow;

    const v1, 0x3f19999a    # 0.6f

    invoke-static {p0, v0, v1}, Lcom/ifengyu/intercom/p/g0;->b(Landroid/content/Context;Landroid/widget/PopupWindow;F)V

    return-void
.end method

.method private d0()V
    .locals 10

    .line 1
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

    iput-object v9, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->l:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v0, 0x1f4

    .line 2
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->l:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$m;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$m;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private e0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->zoomBigIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->zoomSmallIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->myLocateIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mapKitBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mapSwitchTypeBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;

    new-instance v2, Lcom/ifengyu/intercom/device/oldDevice/m;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/oldDevice/m;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/ifengyu/intercom/l/a/d/c;->b(Ljava/lang/Object;Ljava/lang/Class;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method private e1()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11031a

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100bd

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/p;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/oldDevice/p;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    const v2, 0x7f1101d6

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private f0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/c/e;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mapView:Lcom/amap/api/maps/MapView;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/c/e;-><init>(Landroid/app/Activity;Lcom/amap/api/maps/MapView;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    .line 2
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/c/e;->o(Landroid/os/Bundle;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/c/e;->e(Z)V

    return-void
.end method

.method private f1()V
    .locals 8

    const v0, 0x7f0c010d

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902da

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->n:Landroid/widget/ImageView;

    const v1, 0x7f0902db

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f0902dc

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->o:Landroid/widget/ImageView;

    const v1, 0x7f0902dd

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->q:Landroid/widget/TextView;

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/c/e;->b()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 9
    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->R0(I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->R0(I)V

    .line 11
    :goto_0
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-direct {v1, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->j:Landroid/widget/PopupWindow;

    const v4, 0x7f12000f

    .line 12
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 13
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 14
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 15
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->j:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->j:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$a;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    new-array v1, v2, [I

    .line 17
    iget-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mapKitBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 18
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 19
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 20
    invoke-virtual {v0, v4, v6}, Landroid/view/View;->measure(II)V

    .line 21
    invoke-static {p0}, Lcom/ifengyu/intercom/g;->c(Landroid/app/Activity;)V

    .line 22
    iget-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->j:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mapKitBtn:Landroid/widget/TextView;

    sget v7, Lcom/ifengyu/intercom/g;->a:I

    div-int/2addr v7, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr v7, v0

    aget v0, v1, v3

    invoke-virtual {v4, v6, v5, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->j:Landroid/widget/PopupWindow;

    const v1, 0x3f19999a    # 0.6f

    invoke-static {p0, v0, v1}, Lcom/ifengyu/intercom/p/g0;->b(Landroid/content/Context;Landroid/widget/PopupWindow;F)V

    return-void
.end method

.method private g0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/j/a;->c:Landroid/graphics/Typeface;

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mapKitBtn:Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mapSwitchTypeBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->myLocateIV:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f080134

    goto :goto_0

    :cond_1
    const v1, 0x7f080133

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private g1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarRight:Landroid/widget/ImageView;

    const v1, 0x7f080137

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->x0(Z)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    const-string v2, "device_mac_address"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    const-class v1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 8
    :cond_1
    const-class v1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 9
    :cond_2
    const-class v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 10
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method static synthetic h0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "BleDeviceMapActivity"

    const-string v0, "activateDevice success"

    .line 1
    invoke-static {p0, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private h1()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f080135

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 3
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v4, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$b;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v0

    const v4, 0x7f080136

    if-eq v0, v2, :cond_4

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/i/t0;->l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/i/x0;->B1(Z)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/i/x0;->B1(Z)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->H()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/i/t0;->m(Ljava/lang/String;)Lcom/ifengyu/intercom/i/y0;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/i/y0;->i1(Z)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->m(Ljava/lang/String;)Lcom/ifengyu/intercom/i/y0;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/i/y0;->i1(Z)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->Z()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/i/t0;->i(Ljava/lang/String;)Lcom/ifengyu/intercom/i/u0;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/i/u0;->n1(I)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    invoke-static {v3}, Lcom/ifengyu/intercom/p/d0;->t0(Z)V

    goto :goto_0

    .line 19
    :cond_5
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->i(Ljava/lang/String;)Lcom/ifengyu/intercom/i/u0;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/i/u0;->n1(I)V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    invoke-static {v2}, Lcom/ifengyu/intercom/p/d0;->t0(Z)V

    :goto_0
    const v0, 0x7f110318

    .line 22
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f08018e

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->D(ZZLjava/lang/String;I)V

    goto :goto_1

    .line 23
    :cond_6
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 24
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->Z()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    invoke-static {v3}, Lcom/ifengyu/intercom/p/d0;->t0(Z)V

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1

    :cond_7
    const v0, 0x7f110105

    .line 28
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method static synthetic i0(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->G(Landroid/content/Context;)Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v0

    .line 2
    invoke-interface {v0, p0}, Lcom/ifengyu/intercom/database/a/e;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p0

    return-object p0
.end method

.method private i1(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p3, :cond_0

    const/high16 v1, 0x1000000

    .line 2
    div-int v1, p3, v1

    rem-int/lit16 v1, v1, 0x100

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v2, 0x10000

    .line 4
    div-int v3, p3, v2

    rem-int/lit16 v3, v3, 0x100

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    rem-int/2addr p3, v2

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 8
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p3, "unknown"

    .line 9
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_1

    const-string p4, "1"

    goto :goto_1

    :cond_1
    const-string p4, "0"

    :goto_1
    const-string v2, "active"

    .line 10
    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "appVersion"

    .line 11
    invoke-interface {v1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "category"

    .line 12
    invoke-interface {v1, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "deviceId"

    .line 13
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mcuVersion"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "phoneModel"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "phoneSys"

    const-string p2, "android"

    .line 16
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string p2, "phoneSysVersion"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "application/json; charset=utf-8"

    .line 19
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 20
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object p2

    .line 21
    invoke-interface {p2, p1}, Lcom/ifengyu/intercom/n/a;->a(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 22
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/device/oldDevice/s;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/device/oldDevice/s;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    new-instance p3, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$j;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$j;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    .line 23
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic j0(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getAgreedProtocolVersion()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->Z0(Lcom/ifengyu/intercom/models/DeviceModel;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->X(Lcom/ifengyu/intercom/models/DeviceModel;)V

    :goto_0
    return-void
.end method

.method private synthetic l0(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->B:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic n0(Lcom/ifengyu/intercom/models/DeviceModel;Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getAgreedProtocolVersion()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->a1(Lcom/ifengyu/intercom/models/DeviceModel;I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->W(I)V

    :goto_0
    return-void
.end method

.method private synthetic p0(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/j0;->x(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic r0(Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->S0()V

    :cond_0
    return-void
.end method

.method private synthetic u0(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "location"

    if-eqz p1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/p/j0;->q(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/ifengyu/intercom/p/j0;->i(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->Y0()V

    :goto_0
    return-void
.end method

.method private synthetic w0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->V0()V

    return-void
.end method

.method private synthetic y0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/library/utils/m;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public synthetic C0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->B0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic E0(Lcom/ifengyu/intercom/models/DeviceModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->D0(Lcom/ifengyu/intercom/models/DeviceModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic G0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->F0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic I0(Ljava/lang/String;Lcom/ifengyu/intercom/models/DeviceModel;ILcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->H0(Ljava/lang/String;Lcom/ifengyu/intercom/models/DeviceModel;ILcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic K0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->J0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic M0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->L0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic P0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->O0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public S0()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->A:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public U0()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f080136

    const v3, 0x7f080135

    const/4 v4, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0x7f080135

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->H()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const v2, 0x7f080135

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 7
    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->Z()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const v2, 0x7f080135

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    return-void
.end method

.method protected b1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->x:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11026c

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f1100c6

    new-instance v2, Lcom/ifengyu/intercom/device/oldDevice/a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/oldDevice/a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 5
    invoke-virtual {v0, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 6
    invoke-virtual {v0, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 7
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->x:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 8
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected c0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->x:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->x:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->x:Lcom/qmuiteam/qmui/widget/dialog/b;

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 2

    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->A:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2
    sget p1, Lcom/ifengyu/intercom/p/d0;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const p1, 0x7f110317

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->h()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mcu_language_type_english"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->A:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->h()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mcu_language_type_chinese"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->A:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic k0(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->j0(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method

.method public synthetic m0(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->l0(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic o0(Lcom/ifengyu/intercom/models/DeviceModel;Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->n0(Lcom/ifengyu/intercom/models/DeviceModel;Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->E(Ljava/lang/Class;)V

    return-void
.end method

.method public onBeanUserLocationChanged(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/c/e;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x4

    const-string v2, "gaode_map_cameraposition"

    const-string v3, "map_kit_measure_what"

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarRight:Landroid/widget/ImageView;

    const v2, 0x7f080137

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    invoke-static {v5}, Lcom/ifengyu/intercom/p/d0;->x0(Z)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result p1

    const-string v2, "device_mac_address"

    if-eq p1, v4, :cond_3

    const/16 v3, 0x9

    if-eq p1, v3, :cond_2

    const-string v3, "mcu_update_action_from_main"

    const-string v5, "mcu_update_info"

    const-string v6, "mcu_have_update"

    const-string v7, "mcu_update_device_type"

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 6
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "seal"

    .line 8
    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->t:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 13
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "shark"

    .line 15
    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->t:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 20
    :cond_2
    invoke-static {p0}, Lcom/ifengyu/intercom/device/lite/LiteUpgradeActivity;->start(Landroid/content/Context;)V

    goto :goto_1

    .line 21
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/DolphinUpdateMcuActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->j()I

    move-result v0

    .line 24
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->g()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "versionCode"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x10006

    if-lt v0, v2, :cond_4

    const-string v0, "update_type_mcu_ble"

    goto :goto_0

    :cond_4
    const-string v0, "update_type_mcu"

    :goto_0
    const-string v2, "key_update_type"

    .line 25
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "key_mcu_server_version_code"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.ifengyu.intercom.ACTION_UPDATE_IMMEDIATELY"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 29
    :goto_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 30
    :sswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->l:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 32
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 33
    iput-boolean v5, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->r:Z

    goto/16 :goto_3

    .line 34
    :sswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->g1()V

    goto/16 :goto_3

    .line 35
    :sswitch_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->onBackPressed()V

    goto/16 :goto_3

    .line 36
    :sswitch_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->f1()V

    goto/16 :goto_3

    .line 37
    :sswitch_5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->Z()V

    goto/16 :goto_3

    .line 38
    :sswitch_6
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->Y()V

    goto/16 :goto_3

    .line 39
    :sswitch_7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->k:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 40
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "measure_distance"

    .line 41
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/c/e;->c()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 44
    :sswitch_8
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->k:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 45
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "measure_latLong"

    .line 46
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/c/e;->c()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 48
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/c/e;->d()Landroid/location/Location;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    const-string v3, "gaode_my_location_longitude"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 50
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-string v2, "gaode_my_location_latitude"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 52
    :sswitch_9
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->c1()V

    goto/16 :goto_3

    .line 53
    :sswitch_a
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->k:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 54
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "measure_altitude"

    .line 55
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/c/e;->c()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 58
    :sswitch_b
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/c/e;->C()V

    goto :goto_3

    .line 59
    :sswitch_c
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/c/e;->B()V

    goto :goto_3

    .line 60
    :sswitch_d
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->Q0()V

    goto :goto_3

    .line 61
    :sswitch_e
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->h1()V

    goto :goto_3

    .line 62
    :sswitch_f
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result p1

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_5

    goto :goto_3

    .line 63
    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->v:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    if-eqz p1, :cond_8

    .line 64
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-static {p0, p1, v4, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->I(Landroid/content/Context;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;ZLjava/lang/String;)V

    goto :goto_3

    .line 65
    :cond_6
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->u:I

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const p1, 0x7f1103db

    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :pswitch_1
    const p1, 0x7f110356

    .line 67
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :pswitch_2
    const p1, 0x7f1103b7

    .line 68
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    .line 69
    :pswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->v:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    if-eqz p1, :cond_8

    .line 70
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->w:I

    if-ne v0, v4, :cond_7

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-static {p0, p1, v4, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelSettingActivity;->I(Landroid/content/Context;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;ZLjava/lang/String;)V

    :cond_8
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09007d -> :sswitch_f
        0x7f0902cc -> :sswitch_e
        0x7f0902cd -> :sswitch_d
        0x7f0902ce -> :sswitch_c
        0x7f0902d0 -> :sswitch_b
        0x7f0902d1 -> :sswitch_a
        0x7f0902d2 -> :sswitch_9
        0x7f0902d3 -> :sswitch_8
        0x7f0902d8 -> :sswitch_7
        0x7f0902da -> :sswitch_6
        0x7f0902dc -> :sswitch_5
        0x7f0902de -> :sswitch_4
        0x7f09048e -> :sswitch_3
        0x7f09048f -> :sswitch_2
        0x7f0904a1 -> :sswitch_1
        0x7f0904a5 -> :sswitch_0
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

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0041

    .line 2
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "device_mac_address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->g0()V

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->e0()V

    .line 8
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->f0(Landroid/os/Bundle;)V

    .line 9
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->d0()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "BleDeviceMapActivity"

    const-string v1, "onDestroy"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onDestroy()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->A:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/c/e;->p()V

    .line 5
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/l/a/d/c;->g(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->B:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 9
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->B:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/c/e;->q()V

    return-void
.end method

.method public onResume()V
    .locals 5

    const-string v0, "BleDeviceMapActivity"

    const-string v1, "onResume"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onResume()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/c/e;->r()V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->T0()V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->A:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarRight:Landroid/widget/ImageView;

    const v2, 0x7f080137

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->c0()V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->t:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionCode()I

    move-result v0

    .line 11
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v2

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-eq v2, v3, :cond_1

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->E()I

    move-result v1

    if-lt v1, v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->L()I

    move-result v1

    if-lt v1, v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->A:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 19
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->U0()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->m:Lcom/ifengyu/intercom/ui/c/e;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/c/e;->s(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "BleDeviceMapActivity"

    const-string v1, "onStart"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onStart()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->j(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->r(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;)V

    .line 5
    invoke-static {}, Lcom/ifengyu/library/utils/m;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->e1()V

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 7
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/utils/m;->b([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->X0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const-string v0, "BleDeviceMapActivity"

    const-string v1, "onStop"

    .line 2
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->l(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->p()V

    return-void
.end method

.method public synthetic q0(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->p0(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V

    return-void
.end method

.method public receiveDolphinParamResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 4
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "BleDeviceMapActivity"

    const-string v1, "receive dolphin ParamResponse"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDevNameGBK()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->b()Lcom/ifengyu/intercom/device/oldDevice/v/b;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/v/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->h(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->g(Z)V

    .line 7
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->c(Lcom/ifengyu/intercom/device/oldDevice/v/a;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getShareLoc()I

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->A:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->A:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 12
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

    .line 13
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getVersionMCU()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->W0(II)V

    .line 14
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->V()V

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasActivateChannel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->v(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getActivateChannel()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 18
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->b0()V

    goto :goto_1

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->i:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 20
    :cond_5
    :goto_1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->i(Ljava/lang/String;)Lcom/ifengyu/intercom/i/u0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/z0/d;->d0()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->g()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->k()I

    move-result p1

    if-lez p1, :cond_6

    .line 22
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->g()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->k()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/i/t0;->i(Ljava/lang/String;)Lcom/ifengyu/intercom/i/u0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/i/u0;->D0()Z

    move-result v1

    const-string v2, "dolphin"

    .line 24
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->i1(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_6
    return-void
.end method

.method public receiveSealChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "BleDeviceMapActivity"

    const-string v1, "receiveChannelStateOperateResp"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$k;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$k;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/z0/d;->d0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->v()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->E()I

    move-result p1

    if-lez p1, :cond_0

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/x0;->A1()V

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->v()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->E()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/i/t0;->l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/i/x0;->C0()Z

    move-result v1

    const-string v2, "seal"

    .line 8
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->i1(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public receiveSealParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 4
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "BleDeviceMapActivity"

    const-string v1, "receive seal ParamResponse"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->b()Lcom/ifengyu/intercom/device/oldDevice/v/b;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/v/a;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->h(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->g(Z)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->c(Lcom/ifengyu/intercom/device/oldDevice/v/a;)V

    .line 9
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$h;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$h;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getVerSoft()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->W0(II)V

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->V()V

    .line 12
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/x0;->g1()V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-ne v0, v1, :cond_5

    .line 14
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->A:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasActivate()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->v(Ljava/lang/Runnable;)V

    .line 18
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasActivate()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getActivate()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 19
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->b0()V

    goto :goto_1

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->i:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_1
    return-void
.end method

.method public receiveSharkChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "BleDeviceMapActivity"

    const-string v1, "receiveChannelStateOperateResp"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->m(Ljava/lang/String;)Lcom/ifengyu/intercom/i/y0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/z0/d;->d0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->G()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->L()I

    move-result p1

    if-lez p1, :cond_0

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->m(Ljava/lang/String;)Lcom/ifengyu/intercom/i/y0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/y0;->o1()V

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->G()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->L()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/i/t0;->m(Ljava/lang/String;)Lcom/ifengyu/intercom/i/y0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/i/y0;->A0()Z

    move-result v1

    const-string v2, "shark"

    .line 8
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->i1(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public receiveSharkParamResponse(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
    .locals 5
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "BleDeviceMapActivity"

    const-string v1, "receive shark ParamResponse"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->b()Lcom/ifengyu/intercom/device/oldDevice/v/b;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/v/a;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->h(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->g(Z)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->c(Lcom/ifengyu/intercom/device/oldDevice/v/a;)V

    .line 9
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$i;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$i;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getVerSoft()I

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->W0(II)V

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->V()V

    .line 12
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->m(Ljava/lang/String;)Lcom/ifengyu/intercom/i/y0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/y0;->d1()V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    if-ne v0, v1, :cond_5

    .line 14
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->A:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasActivate()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->v(Ljava/lang/Runnable;)V

    .line 18
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasActivate()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getActivate()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 19
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->b0()V

    goto :goto_0

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->i:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_0
    return-void
.end method

.method public synthetic t0(Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->r0(Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;)V

    return-void
.end method

.method public synthetic v0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->u0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic x0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->w0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic z0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->y0(Landroid/content/DialogInterface;I)V

    return-void
.end method
