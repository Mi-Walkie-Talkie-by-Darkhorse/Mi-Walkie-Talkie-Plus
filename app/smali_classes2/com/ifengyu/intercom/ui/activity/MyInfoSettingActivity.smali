.class public Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "MyInfoSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/ui/widget/dialog/v$a;
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

.field private d:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Landroid/content/SharedPreferences;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/net/Uri;

.field private final y:Ljava/lang/String;

.field private final z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/b/l;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->d:Ljava/lang/String;

    const-string v0, "android.permission.CAMERA"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->y:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->z:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/yalantis/ucrop/a;->a(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x:Landroid/net/Uri;

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x:Landroid/net/Uri;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    const-string v0, "portrait"

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-static {v0, p1, v1}, Lcom/ifengyu/intercom/a/a;->a(Ljava/lang/String;Ljava/io/File;Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->q:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x:Landroid/net/Uri;

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    const/16 v0, 0x1f4

    const v1, 0x7f0901ba

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->e(I)V

    const v1, 0x7f02016e

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->d(I)V

    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$3;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$3;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->q:Z

    const/16 v0, 0x3e8

    const v1, 0x7f090152

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->e(I)V

    const v1, 0x7f020167

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->d(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->r:Z

    return v0
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "setting_my_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->s:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->q:Z

    return v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x:Landroid/net/Uri;

    return-object v0
.end method

.method private d()V
    .locals 7

    const/16 v6, 0x16

    const/4 v5, 0x1

    const v4, 0x7f020172

    const v3, 0x7f0901e0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->c_()V

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f100107

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    const v0, 0x7f100109

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f10010b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->u:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->N()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f10010d

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->v:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->O()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->v:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->w:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->P()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->t:Landroid/content/SharedPreferences;

    const-string v3, "avatar"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    invoke-virtual {v1, v2, v3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f090189

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->c:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100108

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10010a

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10010c

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10010e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->u:Landroid/widget/TextView;

    const-string v2, "male"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0901df

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f0901de

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_8

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->w:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0901df

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/v;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/v;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/v;->setClickListener(Lcom/ifengyu/intercom/ui/widget/dialog/v$a;)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/v;->show()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0901de

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private f()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$5;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$5;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->setOnclickListener(Lcom/ifengyu/intercom/ui/widget/dialog/f$a;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->show()V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->q()V

    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->r()V

    return-void
.end method

.method private q()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "portrait.jpg"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/b/c;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".provider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "portrait.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    const-string v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private r()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f090117

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f0901df

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f0901de

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0900cf

    const v2, 0x7f020128

    invoke-virtual {p0, v3, v3, v0, v2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(ZZII)V

    const/4 v0, 0x4

    if-nez p1, :cond_4

    const-string v4, "male"

    :goto_1
    new-instance v5, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;

    invoke-direct {v5, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;I)V

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lcom/ifengyu/intercom/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/a/b/b;)V

    goto :goto_0

    :cond_4
    const-string v4, "female"

    goto :goto_1
.end method

.method public a(Landroid/net/Uri;)V
    .locals 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v4, 0xdc

    const v2, 0x7f0f0095

    const/4 v1, 0x1

    new-instance v0, Lcom/yalantis/ucrop/a$a;

    invoke-direct {v0}, Lcom/yalantis/ucrop/a$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->a(Z)V

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->c(Z)V

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->b(Z)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->b(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->c(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->a(I)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "portrait.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yalantis/ucrop/a;->a(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/a;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lcom/yalantis/ucrop/a;->a(II)Lcom/yalantis/ucrop/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yalantis/ucrop/a;->a(Lcom/yalantis/ucrop/a$a;)Lcom/yalantis/ucrop/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yalantis/ucrop/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected c_()V
    .locals 2

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const v2, 0x7f0901e0

    const/16 v4, 0x16

    const/4 v3, 0x1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "portrait.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/b/c;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    const v0, 0x7f09020b

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p3}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    if-eqz p3, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "portrait.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(Ljava/io/File;)V

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->M()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->O()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->v:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->P()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_8

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->w:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x8 -> :sswitch_1
        0xb -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0x45 -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "setting_my_name"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "setting_had_modify_name"

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->r:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "setting_had_modify_portrait"

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->q:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->f()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->r:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "setting_what"

    const-string v2, "setting_my_name"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->e()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "setting_what"

    const-string v2, "setting_my_phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "setting_what"

    const-string v2, "setting_my_email"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100107
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040030

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->setContentView(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const-string v1, "sp_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/MiTalkiApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->t:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->c()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->d()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    return-void
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f09017e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->q()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    const-string v0, "MyInfoSettingActivity"

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
