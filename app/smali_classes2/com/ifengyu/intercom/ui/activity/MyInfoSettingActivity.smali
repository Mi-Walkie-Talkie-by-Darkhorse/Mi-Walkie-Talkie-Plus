.class public Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "MyInfoSettingActivity.java"

# interfaces
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# instance fields
.field private A:Landroid/net/Uri;

.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field mItemPassword:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f3
    .end annotation
.end field

.field mIvPhoneArrow:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09020f
    .end annotation
.end field

.field mTvIdValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090476
    .end annotation
.end field

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Landroid/content/SharedPreferences;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const-string v0, "android.permission.CAMERA"

    .line 2
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->B:Ljava/lang/String;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->C:Ljava/lang/String;

    return-void
.end method

.method private A()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "portrait.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/i/i;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-static {p0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    const-string v2, "output"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private B()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "image/*"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.OPENABLE"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f110166

    .line 5
    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private C()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f1102f3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const v3, 0x7f1102f2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/ifengyu/intercom/lite/dialog/list/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/dialog/list/d;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/lite/dialog/list/d;->d(I)Lcom/ifengyu/intercom/lite/dialog/list/d;

    const v4, 0x7f1102e9

    .line 5
    invoke-virtual {v0, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/lite/dialog/list/d;

    .line 6
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/lite/dialog/list/d;->d(Z)Lcom/ifengyu/intercom/lite/dialog/list/d;

    .line 7
    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/dialog/list/d;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    .line 8
    invoke-static {v3}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/dialog/list/d;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$d;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/dialog/list/d;->a(Lcom/ifengyu/intercom/lite/dialog/list/d$c;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    const v1, 0x7f1200fc

    .line 10
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private D()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/dialog/list/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/dialog/list/d;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110373

    .line 2
    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/dialog/list/d;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    const v1, 0x7f110372

    .line 3
    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/dialog/list/d;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/dialog/list/d;->c(Z)Lcom/ifengyu/intercom/lite/dialog/list/d;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/l;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/l;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/dialog/list/d;->a(Lcom/ifengyu/intercom/lite/dialog/list/d$c;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    const v1, 0x7f1200fc

    .line 6
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/yalantis/ucrop/b;->a(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->A:Landroid/net/Uri;

    if-nez p1, :cond_1

    const-string p1, "MyInfoSettingActivity"

    const-string v0, "handleCropResult#File uri is null."

    .line 4
    invoke-static {p1, v0}, Lcom/ifengyu/library/a/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->A:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    .line 7
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    const-string v1, "portrait"

    invoke-static {v1, p1, v0}, Lcom/ifengyu/intercom/g/a;->a(Ljava/lang/String;Ljava/io/File;Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->t:Z

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->A:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->s:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    const/16 p1, 0x1f4

    const v0, 0x7f1102cd

    .line 6
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    const v0, 0x7f080191

    .line 7
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->t:Z

    const/16 p1, 0x3e8

    const v0, 0x7f110248

    .line 9
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    const v0, 0x7f080189

    .line 10
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    .line 11
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->u:Z

    return p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->t:Z

    return p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->A:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method private f(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroidx/appcompat/app/b$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->setCancelable(Z)Landroidx/appcompat/app/b$a;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/b$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    const v0, 0x7f110093

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/b$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/m;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/m;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    const v1, 0x7f110145

    .line 5
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/b$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->create()Landroidx/appcompat/app/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private w()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110051

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110093

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/k;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/k;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    const v2, 0x7f110144

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private x()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110053

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110093

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/n;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/n;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    const v2, 0x7f110144

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private y()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "setting_my_name"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->v:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private z()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->r()V

    const v0, 0x7f09041d

    .line 2
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f090154

    .line 3
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->s:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    const v0, 0x7f090392

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->r:Landroid/widget/TextView;

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090396

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x:Landroid/widget/TextView;

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->M()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    const v2, 0x7f1102f4

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "unknown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x:Landroid/widget/TextView;

    const-string v4, "male"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1102f3

    goto :goto_0

    :cond_1
    const v0, 0x7f1102f2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const v0, 0x7f090394

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->y:Landroid/widget/TextView;

    .line 13
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->Q()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    .line 15
    :cond_4
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 16
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const v0, 0x7f090390

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->z:Landroid/widget/TextView;

    .line 18
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->L()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_5

    .line 20
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x16

    if-le v1, v2, :cond_7

    .line 21
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->z:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 22
    :cond_7
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 23
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :goto_6
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const v1, 0x7f08019e

    .line 25
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->w:Landroid/content/SharedPreferences;

    const-string v4, "avatar"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->s:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    invoke-virtual {v1, v2, v4, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 32
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f110288

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mTvIdValue:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->R()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "user_login_type"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 35
    sget-object v1, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->c:Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-ne v0, v1, :cond_9

    .line 36
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mItemPassword:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mIvPhoneArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 38
    :cond_9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mItemPassword:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mIvPhoneArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 15
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 16
    invoke-static {}, Lcom/ifengyu/intercom/i/i;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.permission.CAMERA"

    .line 17
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    new-instance v0, Lcom/yalantis/ucrop/b$a;

    invoke-direct {v0}, Lcom/yalantis/ucrop/b$a;-><init>()V

    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/b$a;->a(Z)V

    .line 20
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/b$a;->b(Z)V

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/b$a;->d(Z)V

    .line 22
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/b$a;->c(Z)V

    const v1, 0x7f060175

    .line 23
    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yalantis/ucrop/b$a;->b(I)V

    .line 24
    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/b$a;->c(I)V

    const v1, 0x7f0601ad

    .line 25
    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/b$a;->d(I)V

    const/16 v1, 0x3c

    .line 26
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/b$a;->a(I)V

    .line 27
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "portrait_crop.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yalantis/ucrop/b;->a(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/b;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    invoke-virtual {p1, v1, v1}, Lcom/yalantis/ucrop/b;->a(FF)Lcom/yalantis/ucrop/b;

    const/16 v1, 0x190

    .line 29
    invoke-virtual {p1, v1, v1}, Lcom/yalantis/ucrop/b;->a(II)Lcom/yalantis/ucrop/b;

    .line 30
    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/b;->a(Lcom/yalantis/ucrop/b$a;)Lcom/yalantis/ucrop/b;

    .line 31
    invoke-virtual {p1, p0}, Lcom/yalantis/ucrop/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    if-nez p3, :cond_1

    const-string p1, "android.permission.CAMERA"

    .line 9
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->A()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->w()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne p3, p1, :cond_3

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 12
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->B()V

    goto :goto_0

    .line 14
    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x()V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 12
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 13
    invoke-static {}, Lcom/ifengyu/intercom/i/i;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 14
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x14

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public synthetic c(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/library/a/m;->e()Ljava/lang/String;

    move-result-object p2

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public e(I)V
    .locals 9

    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f1102f3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f1102f2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const p1, 0x7f110248

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_2
    const v0, 0x7f1100fc

    const v2, 0x7f08013e

    .line 6
    invoke-virtual {p0, v1, v1, v0, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZII)V

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_3

    const-string v0, "male"

    goto :goto_0

    :cond_3
    const-string v0, "female"

    :goto_0
    move-object v7, v0

    .line 7
    new-instance v8, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;

    invoke-direct {v8, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;I)V

    invoke-static/range {v3 .. v8}, Lcom/ifengyu/intercom/g/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_b

    const/4 p2, 0x1

    if-eq p1, p2, :cond_9

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    const/16 p2, 0x45

    if-eq p1, p2, :cond_5

    const-string p2, "null"

    const p3, 0x7f1102f4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 2
    :pswitch_0
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->L()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x16

    if-le p2, p3, :cond_1

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->z:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 8
    :pswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->Q()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 11
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 12
    :pswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->P()Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 14
    :cond_5
    invoke-direct {p0, p3}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(Landroid/content/Intent;)V

    goto :goto_2

    :cond_6
    const p1, 0x7f11032e

    if-nez p3, :cond_7

    .line 15
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 16
    :cond_7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    if-nez p3, :cond_8

    .line 17
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 18
    :cond_8
    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(Landroid/net/Uri;)V

    goto :goto_2

    .line 19
    :cond_9
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object p3

    const-string v0, "portrait.jpg"

    invoke-direct {p1, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_a

    const p1, 0x7f110125

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 22
    :cond_a
    invoke-static {p0, p1}, Lcom/ifengyu/library/a/e;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(Landroid/net/Uri;)V

    :cond_b
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "setting_my_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 3
    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->u:Z

    const-string v2, "setting_had_modify_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->t:Z

    const-string v2, "setting_had_modify_portrait"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->A:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901e5,
            0x7f090391,
            0x7f090395,
            0x7f090393,
            0x7f09038f,
            0x7f0901f3,
            0x7f0901ec
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "setting_what"

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->C()V

    goto :goto_0

    .line 3
    :sswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->R()Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "user_login_type"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 4
    sget-object v1, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->c:Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 5
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "setting_my_phone"

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0xc

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_2
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->u:Z

    .line 9
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "setting_my_name"

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0xb

    .line 11
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 12
    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "setting_my_email"

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0xd

    .line 14
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 15
    :sswitch_4
    invoke-static {p0}, Lcom/ifengyu/intercom/lite/LiteSetupPasswordActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 16
    :sswitch_5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->D()V

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0901e5 -> :sswitch_5
        0x7f0901f3 -> :sswitch_4
        0x7f09038f -> :sswitch_3
        0x7f090391 -> :sswitch_2
        0x7f090393 -> :sswitch_1
        0x7f090395 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003a

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    const-string v0, "sp_user"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->w:Landroid/content/SharedPreferences;

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->y()V

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->z()V

    return-void
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/ifengyu/intercom/i/l0;->a(Ljava/util/List;)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "android.permission.CAMERA"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p1, 0x7f11002d

    .line 4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->f(I)V

    goto :goto_0

    :cond_0
    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f11002f

    .line 6
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->f(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/ifengyu/intercom/i/l0;->b(Ljava/util/List;)V

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->A()V

    goto :goto_0

    :cond_0
    const/16 p2, 0x14

    if-ne p1, p2, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->B()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 2
    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method protected r()V
    .locals 2

    const v0, 0x7f090419

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c:Landroid/widget/ImageView;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
