.class public Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "QrScanFragment.java"


# instance fields
.field private A:Lcom/huawei/hms/hmsscankit/RemoteView;

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field rimFrameLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903be
    .end annotation
.end field

.field scanArea:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dc
    .end annotation
.end field

.field private final z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    const/high16 v0, 0x43700000    # 240.0f

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->z:I

    return-void
.end method

.method static synthetic A3(Lcom/ifengyu/intercom/models/NetDeviceModel;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/models/DeviceModel;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/DeviceModel;->setName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getSn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/DeviceModel;->setAddress(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getSn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceId(Ljava/lang/String;)V

    const/16 v1, 0xd

    .line 5
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceType(I)V

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceColor(I)V

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getBindTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/models/DeviceModel;->setCreateTime(J)V

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getBindTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/models/DeviceModel;->setUpdateTime(J)V

    .line 9
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/models/DeviceModel;->setNetDeviceModel(Lcom/ifengyu/intercom/models/NetDeviceModel;)V

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/database/a/e;->j(Lcom/ifengyu/intercom/models/DeviceModel;)J

    .line 11
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/database/AppDatabase;->H()Lcom/ifengyu/intercom/database/a/g;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/ifengyu/intercom/database/a/g;->d(Lcom/ifengyu/intercom/models/NetDeviceModel;)J

    return-object v0
.end method

.method static synthetic B3()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/library/event/SimpleEvent;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/ifengyu/library/event/SimpleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic C3([Lcom/huawei/hms/ml/scan/HmsScan;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->S3([Lcom/huawei/hms/ml/scan/HmsScan;)V

    return-void
.end method

.method private synthetic E3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->d2()V

    return-void
.end method

.method private synthetic G3(Landroid/view/View;)V
    .locals 0

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->T2(Ljava/lang/String;)Z

    return-void
.end method

.method public static synthetic I3(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic J3(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    return-void
.end method

.method private synthetic L3(Landroid/net/Uri;Ljava/lang/Long;)[Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;

    invoke-direct {v0}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->setPhotoMode(Z)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->create()Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/huawei/hms/hmsscankit/ScanUtil;->decodeWithBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    return-object p1
.end method

.method private synthetic N3([Lcom/huawei/hms/ml/scan/HmsScan;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->S3([Lcom/huawei/hms/ml/scan/HmsScan;)V

    return-void
.end method

.method private synthetic P3(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->U3()V

    return-void
.end method

.method public static R3()Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;-><init>()V

    return-object v0
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/base/k;->a3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method

.method static synthetic i3(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/base/k;->a3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method

.method static synthetic j3(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/base/k;->a3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method

.method static synthetic k3(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method static synthetic l3(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method static synthetic m3(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private r3(Ljava/lang/String;)V
    .locals 2

    const-string v0, "fymi://a/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->p3(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/f;->b()Lcom/ifengyu/intercom/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/f;->e()Z

    move-result v0

    const-string v1, "https://m.ifengyu.com"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    const-string v0, "https://beebest.ifengyu.com"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->U3()V

    return-void

    .line 7
    :cond_2
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->T3(Landroid/net/Uri;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->U3()V

    :goto_0
    return-void
.end method

.method private t3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/k;->l(Landroid/app/Activity;)Z

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->r(Z)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080152

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/r0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/r0;-><init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f11032a

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->o(II)Landroid/widget/Button;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0601bd

    invoke-static {v1, v2}, Landroidx/appcompat/a/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 7
    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/y0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/y0;-><init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->rimFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->A:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic u3(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/device/mi3gw/Mi3GWDetailActivity;->N(Landroid/content/Context;Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method

.method private synthetic w3(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v1, "bindMi3GwDevice success"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/ui/fragment/t0;->a:Lcom/ifengyu/intercom/ui/fragment/t0;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v0, 0x7f11011f

    .line 3
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/q0;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/q0;-><init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;Lcom/ifengyu/intercom/models/DeviceModel;)V

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/base/k;->f3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V

    return-void
.end method

.method private synthetic y3(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const p1, 0x7f11011e

    .line 1
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/ifengyu/intercom/ui/base/k;->c3(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic D3([Lcom/huawei/hms/ml/scan/HmsScan;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->C3([Lcom/huawei/hms/ml/scan/HmsScan;)V

    return-void
.end method

.method protected E2()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->V3()V

    return-void
.end method

.method public synthetic F3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->E3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic H3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->G3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic K3(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->J3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic M3(Landroid/net/Uri;Ljava/lang/Long;)[Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->L3(Landroid/net/Uri;Ljava/lang/Long;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    return-object p1
.end method

.method public synthetic O3([Lcom/huawei/hms/ml/scan/HmsScan;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->N3([Lcom/huawei/hms/ml/scan/HmsScan;)V

    return-void
.end method

.method public synthetic Q3(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->P3(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected R2()V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/zhihu/matisse/a;->d(Landroidx/fragment/app/Fragment;)Lcom/zhihu/matisse/a;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/zhihu/matisse/MimeType;->g()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/a;->a(Ljava/util/Set;)Lcom/zhihu/matisse/SelectionCreator;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/SelectionCreator;->e(Z)Lcom/zhihu/matisse/SelectionCreator;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Lcom/zhihu/matisse/SelectionCreator;->a(Z)Lcom/zhihu/matisse/SelectionCreator;

    .line 5
    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/SelectionCreator;->d(I)Lcom/zhihu/matisse/SelectionCreator;

    const v1, 0x3f59999a    # 0.85f

    .line 6
    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/SelectionCreator;->g(F)Lcom/zhihu/matisse/SelectionCreator;

    const v1, 0x7f120124

    .line 7
    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/SelectionCreator;->f(I)Lcom/zhihu/matisse/SelectionCreator;

    new-instance v1, Lcom/zhihu/matisse/b/b/a;

    invoke-direct {v1}, Lcom/zhihu/matisse/b/b/a;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/SelectionCreator;->c(Lcom/zhihu/matisse/b/a;)Lcom/zhihu/matisse/SelectionCreator;

    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/SelectionCreator;->b(I)V

    return-void
.end method

.method public S3([Lcom/huawei/hms/ml/scan/HmsScan;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->W3()V

    if-eqz p1, :cond_0

    .line 2
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/huawei/hms/ml/scan/HmsScanBase;->getOriginalValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/huawei/hms/ml/scan/HmsScanBase;->getOriginalValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->r3(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->U3()V

    :goto_0
    return-void
.end method

.method protected T3(Landroid/net/Uri;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "typ"

    .line 1
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const-string p2, "3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "1"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "content"

    .line 4
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->o3(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->U3()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p2, "uuid"

    .line 7
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->n3(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected U3()V
    .locals 2

    const v0, 0x7f110327

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/b1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/b1;-><init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/base/k;->a3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method

.method protected V3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->A:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onStart()V

    return-void
.end method

.method protected W3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->A:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onStop()V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->t3()V

    return-object v0
.end method

.method protected n3(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->U3()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uuid"

    .line 4
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    .line 6
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 8
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/n/a;->u(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/c1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/c1;-><init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V

    .line 10
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/ui/fragment/u0;->a:Lcom/ifengyu/intercom/ui/fragment/u0;

    .line 11
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 12
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/m;

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/w0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/w0;-><init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment$a;-><init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V

    .line 13
    invoke-interface {p1, v0, v1}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected o3(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->U3()V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/ifengyu/library/utils/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/ifengyu/intercom/bean/QRContentEntity;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/QRContentEntity;

    .line 5
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->q3(Lcom/ifengyu/intercom/bean/QRContentEntity;)Lcom/qmuiteam/qmui/arch/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    const p1, 0x7f1103ec

    if-nez p3, :cond_1

    .line 1
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    return-void

    .line 2
    :cond_1
    invoke-static {p3}, Lcom/zhihu/matisse/a;->g(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 4
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    const-wide/16 p2, 0x1f4

    .line 5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p2, p3, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p2

    .line 6
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/ifengyu/intercom/ui/fragment/v0;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/ui/fragment/v0;-><init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V

    .line 7
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/ifengyu/intercom/ui/fragment/a1;

    invoke-direct {p3, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/a1;-><init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;Landroid/net/Uri;)V

    .line 8
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 9
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/m;

    new-instance p2, Lcom/ifengyu/intercom/ui/fragment/z0;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/fragment/z0;-><init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V

    new-instance p3, Lcom/ifengyu/intercom/ui/fragment/x0;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/ui/fragment/x0;-><init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V

    .line 10
    invoke-interface {p1, p2, p3}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 11
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->s3(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->A:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onDestroy()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/k;->m(Landroid/app/Activity;)Z

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/k;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/k;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method protected p3(Ljava/lang/String;)V
    .locals 2

    const-string v0, "fymi://a/"

    const-string v1, ""

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/ifengyu/intercom/bean/QRContentEntity;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/QRContentEntity;

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/QRContentEntity;->getTyp()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->q3(Lcom/ifengyu/intercom/bean/QRContentEntity;)Lcom/qmuiteam/qmui/arch/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->U3()V

    :goto_0
    return-void
.end method

.method protected q3(Lcom/ifengyu/intercom/bean/QRContentEntity;)Lcom/qmuiteam/qmui/arch/b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->u3(Lcom/ifengyu/intercom/bean/QRContentEntity;)Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;

    move-result-object p1

    return-object p1
.end method

.method public s3(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ifengyu/library/utils/s;->m()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/ifengyu/library/utils/s;->n()I

    move-result v1

    .line 3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 4
    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->z:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v1, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 5
    div-int/lit8 v4, v3, 0x2

    add-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 6
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v3, 0x2

    sub-int v1, v0, v1

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 7
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 8
    new-instance v0, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;

    invoke-direct {v0}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->setContext(Landroid/app/Activity;)Lcom/huawei/hms/hmsscankit/RemoteView$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->setBoundingBox(Landroid/graphics/Rect;)Lcom/huawei/hms/hmsscankit/RemoteView$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->setFormat(I[I)Lcom/huawei/hms/hmsscankit/RemoteView$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->build()Lcom/huawei/hms/hmsscankit/RemoteView;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->A:Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 9
    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/s0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/s0;-><init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/hmsscankit/RemoteView;->setOnResultCallback(Lcom/huawei/hms/hmsscankit/OnResultCallback;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->A:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/hmsscankit/RemoteView;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic v3(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->u3(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method

.method public synthetic x3(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->w3(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method

.method public synthetic z3(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->y3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
