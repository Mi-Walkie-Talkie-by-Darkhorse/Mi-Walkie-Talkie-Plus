.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "DeviceInfoSettingFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/mi3gw/c/e0;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation


# instance fields
.field deviceId:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09013f
    .end annotation
.end field

.field deviceNickname:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090140
    .end annotation
.end field

.field ivAvatar:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090269
    .end annotation
.end field

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private h3(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v0, "handleCropResult#Intent data is null."

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/yalantis/ucrop/a;->b(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v0, "handleCropResult#File uri is null."

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->P0(Ljava/io/File;)V

    return-void
.end method

.method private i3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f110122

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/z0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/z0;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic j3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic l3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    if-nez p3, :cond_0

    const-string p1, "android.permission.CAMERA"

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->T2(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->T2(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic n3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic o3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->G()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    const p1, 0x7f110308

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    array-length p4, p4

    const/16 v0, 0x1e

    if-le p4, v0, :cond_1

    const p1, 0x7f1102da

    .line 5
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p3}, Landroidx/appcompat/app/d;->dismiss()V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p3}, Landroidx/appcompat/app/d;->dismiss()V

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->Q0(Ljava/lang/String;)V

    return-void
.end method

.method public static q3()Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;-><init>()V

    return-object v0
.end method

.method private r3()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/dialog/list/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11041e

    .line 2
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;->F(Ljava/lang/String;)Lcom/ifengyu/intercom/dialog/list/d;

    const v1, 0x7f11041d

    .line 3
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;->F(Ljava/lang/String;)Lcom/ifengyu/intercom/dialog/list/d;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;->I(Z)Lcom/ifengyu/intercom/dialog/list/d;

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/x0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/x0;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;->K(Lcom/ifengyu/intercom/dialog/list/d$c;)Lcom/ifengyu/intercom/dialog/list/d;

    const v1, 0x7f120100

    .line 6
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private s3()V
    .locals 8

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/e;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->deviceNickname:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/view/ItemView;->getValueText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110141

    .line 3
    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v2, v0

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v3, 0x7f110308

    .line 4
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->J(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    .line 5
    invoke-virtual {v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->H(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->I(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    sget-object v4, Lcom/ifengyu/intercom/device/mi3gw/fragment/y0;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/y0;

    const/4 v5, 0x0

    const v6, 0x7f1100bd

    const/4 v7, 0x2

    .line 7
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    new-instance v4, Lcom/ifengyu/intercom/device/mi3gw/fragment/w0;

    invoke-direct {v4, p0, v0, v1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/w0;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;)V

    const v6, 0x7f1100c6

    .line 8
    invoke-virtual {v2, v5, v6, v5, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->v(F)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v4, 0x7f120100

    .line 10
    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->G()Landroid/widget/EditText;

    move-result-object v0

    new-array v3, v3, [Landroid/text/InputFilter;

    .line 12
    new-instance v4, Lcom/ifengyu/intercom/p/e0;

    const/16 v6, 0x1e

    invoke-direct {v4, v6}, Lcom/ifengyu/intercom/p/e0;-><init>(I)V

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 14
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 15
    invoke-static {v0}, Lcom/ifengyu/library/utils/d;->d(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public D0(J)V
    .locals 0

    return-void
.end method

.method public E(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected E2()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->q()Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->q()Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->ivAvatar:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/ifengyu/library/c/a;->g(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->deviceNickname:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->deviceId:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public varargs F([J)V
    .locals 0

    return-void
.end method

.method public G0()V
    .locals 0

    return-void
.end method

.method public H(Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 0

    return-void
.end method

.method public L(Lcom/ifengyu/intercom/models/NetDeviceModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->E2()V

    return-void
.end method

.method public L0()V
    .locals 0

    return-void
.end method

.method public M0(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public O0()V
    .locals 0

    return-void
.end method

.method protected O2()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "portrait.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->z:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ifengyu/library/utils/i;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "output"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public P(J)V
    .locals 0

    return-void
.end method

.method public R0(J)V
    .locals 0

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

.method public S()V
    .locals 1

    const v0, 0x7f1102ac

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    return-void
.end method

.method public X0(J)V
    .locals 0

    return-void
.end method

.method public Y(J)V
    .locals 0

    return-void
.end method

.method public a1(J)V
    .locals 0

    return-void
.end method

.method public d0(Lcom/ifengyu/talk/http/entity/TempGroup;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->addListener(Lcom/ifengyu/intercom/device/mi3gw/c/e0;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0093

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->i3()V

    return-object v0
.end method

.method public g3(Landroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Lcom/yalantis/ucrop/a$a;

    invoke-direct {v0}, Lcom/yalantis/ucrop/a$a;-><init>()V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->b(Z)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->d(Z)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->f(Z)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->e(Z)V

    const v1, 0x7f060029

    .line 8
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yalantis/ucrop/a$a;->g(I)V

    .line 9
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->h(I)V

    const v1, 0x7f0601bd

    .line 10
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->i(I)V

    const/16 v1, 0x3c

    .line 11
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->c(I)V

    .line 12
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "portrait_crop.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yalantis/ucrop/a;->c(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/a;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    invoke-virtual {p1, v1, v1}, Lcom/yalantis/ucrop/a;->g(FF)Lcom/yalantis/ucrop/a;

    const/16 v1, 0x190

    .line 14
    invoke-virtual {p1, v1, v1}, Lcom/yalantis/ucrop/a;->h(II)Lcom/yalantis/ucrop/a;

    .line 15
    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/a;->i(Lcom/yalantis/ucrop/a$a;)Lcom/yalantis/ucrop/a;

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x45

    invoke-virtual {p1, v0, p0, v1}, Lcom/yalantis/ucrop/a;->f(Landroid/content/Context;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public varargs h1([J)V
    .locals 0

    return-void
.end method

.method public i0(J)V
    .locals 0

    return-void
.end method

.method public varargs k0([J)V
    .locals 0

    return-void
.end method

.method public k1()V
    .locals 0

    return-void
.end method

.method public synthetic k3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->j3(Landroid/view/View;)V

    return-void
.end method

.method public l0(J)V
    .locals 0

    return-void
.end method

.method public synthetic m3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->l3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V

    return-void
.end method

.method public o0()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/16 p2, 0x45

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-direct {p0, p3}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->h3(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    const p1, 0x7f1103ec

    if-nez p3, :cond_2

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_2
    invoke-static {p3}, Lcom/zhihu/matisse/a;->g(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->g3(Landroid/net/Uri;)V

    goto :goto_1

    .line 6
    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    return-void

    .line 7
    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->z:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string p2, "handleTakePhotoResult#Current photo path is null,please check"

    invoke-static {p1, p2}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_6
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->z:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_7

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string p2, "File not exists"

    invoke-static {p1, p2}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/ifengyu/library/utils/i;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->g3(Landroid/net/Uri;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->removeListener(Lcom/ifengyu/intercom/device/mi3gw/c/e0;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090143,
            0x7f090140
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090140

    if-eq p1, v0, :cond_1

    const v0, 0x7f090143

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->r3()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->s3()V

    :goto_0
    return-void
.end method

.method public p(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic p3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->o3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public r(J)V
    .locals 0

    return-void
.end method

.method public varargs t0([J)V
    .locals 0

    return-void
.end method

.method public t1(J)V
    .locals 0

    return-void
.end method

.method public w0()V
    .locals 1

    const v0, 0x7f1102aa

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method
