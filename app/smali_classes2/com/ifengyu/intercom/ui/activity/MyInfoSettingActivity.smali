.class public Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;
.super Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.source "MyInfoSettingActivity.java"


# instance fields
.field btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a2
    .end annotation
.end field

.field private j:Landroid/widget/TextView;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field mCivPortrait:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090194
    .end annotation
.end field

.field mItemPassword:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09024e
    .end annotation
.end field

.field mIvPhoneArrow:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090276
    .end annotation
.end field

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field mTvIdValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904da
    .end annotation
.end field

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/net/Uri;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->r:Ljava/lang/String;

    return-void
.end method

.method private B0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f1103a2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const v3, 0x7f1103a1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->n:Landroid/widget/TextView;

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
    new-instance v0, Lcom/ifengyu/intercom/dialog/list/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/dialog/list/d;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/dialog/list/d;->H(I)Lcom/ifengyu/intercom/dialog/list/d;

    const v4, 0x7f110398

    .line 5
    invoke-virtual {v0, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/dialog/list/d;

    .line 6
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/dialog/list/d;->J(Z)Lcom/ifengyu/intercom/dialog/list/d;

    .line 7
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;->F(Ljava/lang/String;)Lcom/ifengyu/intercom/dialog/list/d;

    .line 8
    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;->F(Ljava/lang/String;)Lcom/ifengyu/intercom/dialog/list/d;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/e0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/e0;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;->K(Lcom/ifengyu/intercom/dialog/list/d$c;)Lcom/ifengyu/intercom/dialog/list/d;

    const v1, 0x7f120100

    .line 10
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private C0()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110386

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/ui/activity/x;->a:Lcom/ifengyu/intercom/ui/activity/x;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 5
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/ui/activity/i0;->a:Lcom/ifengyu/intercom/ui/activity/i0;

    const v3, 0x7f1100c6

    .line 6
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 7
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private D0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/dialog/list/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/dialog/list/d;-><init>(Landroid/content/Context;)V

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

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/d0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/d0;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;->K(Lcom/ifengyu/intercom/dialog/list/d$c;)Lcom/ifengyu/intercom/dialog/list/d;

    const v1, 0x7f120100

    .line 6
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private E0(Ljava/io/File;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7f110190

    const v2, 0x7f08018e

    .line 1
    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->C(ZZII)V

    const-string v0, "image/png"

    .line 2
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "file"

    invoke-static {v1, p1, v0}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/n/a;->q(Lokhttp3/MultipartBody$Part;)Lio/reactivex/Observable;

    move-result-object p1

    .line 6
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 7
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/j0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/j0;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    .line 8
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/l0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/l0;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    .line 10
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic F(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->G(Z)V

    return-void
.end method

.method private G(Z)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->k:Z

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->q:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mCivPortrait:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    const/16 p1, 0x1f4

    const v0, 0x7f11037c

    .line 4
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->u(I)V

    const v0, 0x7f08018f

    .line 5
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->k:Z

    const/16 p1, 0x3e8

    const v0, 0x7f1102dd

    .line 7
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->u(I)V

    const v0, 0x7f080187

    .line 8
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    .line 9
    :goto_0
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/x0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/x0;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private I()V
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

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->m:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private J(Landroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/yalantis/ucrop/a;->b(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->q:Landroid/net/Uri;

    if-nez p1, :cond_1

    const-string p1, "MyInfoSettingActivity"

    const-string v0, "handleCropResult#File uri is null."

    .line 2
    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->q:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->E0(Ljava/io/File;)V

    return-void
.end method

.method private K()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v2, 0x7f11031e

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    const v3, 0x7f080151

    invoke-virtual {v0, v3, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/z;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/z;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090411

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->j:Landroid/widget/TextView;

    .line 5
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    const v0, 0x7f090415

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->n:Landroid/widget/TextView;

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->O()I

    move-result v0

    const v3, 0x7f1103a3

    if-ne v0, v2, :cond_0

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->n:Landroid/widget/TextView;

    const v2, 0x7f1103a2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->n:Landroid/widget/TextView;

    const v2, 0x7f1103a1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->n:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f090413

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->o:Landroid/widget/TextView;

    .line 13
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->S()Ljava/lang/String;

    move-result-object v0

    const-string v2, "null"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 16
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const v0, 0x7f09040f

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->p:Landroid/widget/TextView;

    .line 18
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->N()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 20
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x16

    if-le v2, v3, :cond_5

    .line 21
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->p:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 22
    :cond_5
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 23
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :goto_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mCivPortrait:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->getUserInfo()Lcom/ifengyu/library/account/UserInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/ifengyu/library/account/UserInfo;->avatar:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/ifengyu/library/c/a;->e(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mTvIdValue:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->T()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "user_login_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 27
    sget-object v2, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->b:Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-ne v0, v2, :cond_7

    .line 28
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mItemPassword:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mIvPhoneArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 30
    :cond_7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mItemPassword:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mIvPhoneArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method private synthetic L(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->onBackPressed()V

    return-void
.end method

.method private synthetic N()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->O()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->n:Landroid/widget/TextView;

    const v1, 0x7f1103a2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->n:Landroid/widget/TextView;

    const v1, 0x7f1103a1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->n:Landroid/widget/TextView;

    const v1, 0x7f1103a3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private synthetic P(ILcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p2, "MyInfoSettingActivity"

    const-string v0, "updateSelfInfo success"

    .line 1
    invoke-static {p2, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    const p2, 0x7f11037c

    .line 2
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->u(I)V

    const p2, 0x7f08018f

    .line 3
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    .line 4
    invoke-static {p1}, Lcom/ifengyu/intercom/p/d0;->o0(I)V

    .line 5
    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->getUserInfo()Lcom/ifengyu/library/account/UserInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    iput p1, p2, Lcom/ifengyu/library/account/UserInfo;->gender:I

    .line 7
    invoke-static {p2}, Lcom/ifengyu/library/account/UserCache;->saveUserInfo(Lcom/ifengyu/library/account/UserInfo;)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/activity/f0;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/activity/f0;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic S(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "camera"

    if-eqz p1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/p/j0;->q(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->q0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/ifengyu/intercom/p/j0;->i(Ljava/lang/String;)V

    const p1, 0x7f110032

    .line 5
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x0(I)V

    :goto_0
    return-void
.end method

.method private synthetic U(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "storage"

    if-eqz p1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/p/j0;->q(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->r0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/ifengyu/intercom/p/j0;->i(Ljava/lang/String;)V

    const p1, 0x7f110035

    .line 5
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->x0(I)V

    :goto_0
    return-void
.end method

.method static synthetic W(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic X(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/library/utils/m;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic Z(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->u0()V

    return-void
.end method

.method static synthetic b0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic c0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic d0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->w0()V

    return-void
.end method

.method private synthetic f0(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->p0(I)V

    return-void
.end method

.method static synthetic h0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic i0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->F()V

    return-void
.end method

.method private synthetic j0(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    if-nez p3, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->t0()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->v0()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic l0(Lcom/ifengyu/intercom/http/entity/UploadFileEntity;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/UploadFileEntity;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->r:Ljava/lang/String;

    const-string v1, "avatar"

    .line 3
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

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/n/a;->X(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic n0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "MyInfoSettingActivity"

    const-string v0, "uploadPortrait success"

    .line 1
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->getUserInfo()Lcom/ifengyu/library/account/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->r:Ljava/lang/String;

    iput-object v0, p1, Lcom/ifengyu/library/account/UserInfo;->avatar:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/ifengyu/library/account/UserCache;->saveUserInfo(Lcom/ifengyu/library/account/UserInfo;)V

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->G(Z)V

    return-void
.end method

.method private q0()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "portrait.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/p/m;->c()Z

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
    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

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

.method private r0()V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/zhihu/matisse/a;->c(Landroid/app/Activity;)Lcom/zhihu/matisse/a;

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

.method private t0()V
    .locals 1

    const-string v0, "android.permission.CAMERA"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/utils/m;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->q0()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->y0()V

    :goto_0
    return-void
.end method

.method private u0()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult",
            "AutoDispose"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/e/a/b;

    invoke-direct {v0, p0}, Lb/e/a/b;-><init>(Landroid/app/Activity;)V

    const-string v1, "android.permission.CAMERA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/e/a/b;->l([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/g0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/g0;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    sget-object v2, Lcom/ifengyu/intercom/ui/activity/y0;->a:Lcom/ifengyu/intercom/ui/activity/y0;

    .line 2
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private v0()V
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/utils/m;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->r0()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->z0()V

    :goto_0
    return-void
.end method

.method private w0()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult",
            "AutoDispose"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/e/a/b;

    invoke-direct {v0, p0}, Lb/e/a/b;-><init>(Landroid/app/Activity;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/e/a/b;->l([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/c0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/c0;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    sget-object v2, Lcom/ifengyu/intercom/ui/activity/y0;->a:Lcom/ifengyu/intercom/ui/activity/y0;

    .line 2
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private x0(I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110302

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 3
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object p1, Lcom/ifengyu/intercom/ui/activity/y;->a:Lcom/ifengyu/intercom/ui/activity/y;

    const/4 v1, 0x0

    const v2, 0x7f1100bd

    const/4 v3, 0x2

    .line 4
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance p1, Lcom/ifengyu/intercom/ui/activity/m0;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/activity/m0;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    const v2, 0x7f1101d6

    .line 5
    invoke-virtual {v0, v1, v2, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f120100

    .line 6
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private y0()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110302

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f11005d

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/ui/activity/h0;->a:Lcom/ifengyu/intercom/ui/activity/h0;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 4
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/w;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/w;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    const v3, 0x7f1101d5

    .line 5
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 6
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private z0()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110302

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f110060

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/ui/activity/b0;->a:Lcom/ifengyu/intercom/ui/activity/b0;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 4
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/k0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/k0;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    const v3, 0x7f1101d5

    .line 5
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 6
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public H(Landroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/yalantis/ucrop/a$a;

    invoke-direct {v0}, Lcom/yalantis/ucrop/a$a;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->b(Z)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->d(Z)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->f(Z)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->e(Z)V

    const v1, 0x7f060029

    .line 6
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yalantis/ucrop/a$a;->g(I)V

    .line 7
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->h(I)V

    const v1, 0x7f0601bd

    .line 8
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->i(I)V

    const/16 v1, 0x3c

    .line 9
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/a$a;->c(I)V

    .line 10
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "portrait_crop.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yalantis/ucrop/a;->c(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/a;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    invoke-virtual {p1, v1, v1}, Lcom/yalantis/ucrop/a;->g(FF)Lcom/yalantis/ucrop/a;

    const/16 v1, 0x190

    .line 12
    invoke-virtual {p1, v1, v1}, Lcom/yalantis/ucrop/a;->h(II)Lcom/yalantis/ucrop/a;

    .line 13
    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/a;->i(Lcom/yalantis/ucrop/a$a;)Lcom/yalantis/ucrop/a;

    .line 14
    invoke-virtual {p1, p0}, Lcom/yalantis/ucrop/a;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public synthetic M(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->L(Landroid/view/View;)V

    return-void
.end method

.method public synthetic O()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->N()V

    return-void
.end method

.method public synthetic R(ILcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->P(ILcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public synthetic T(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->S(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic V(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->U(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic Y(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->X(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic a0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->Z(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic e0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->d0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic g0(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->f0(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V

    return-void
.end method

.method public synthetic k0(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->j0(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V

    return-void
.end method

.method public synthetic m0(Lcom/ifengyu/intercom/http/entity/UploadFileEntity;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->l0(Lcom/ifengyu/intercom/http/entity/UploadFileEntity;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method

.method public synthetic o0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->n0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    const/4 p2, 0x1

    if-eq p1, p2, :cond_a

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-eq p1, p2, :cond_6

    const/16 p2, 0x45

    if-eq p1, p2, :cond_5

    const-string p2, "null"

    const p3, 0x7f1103a3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 2
    :pswitch_0
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->N()Ljava/lang/String;

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
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->p:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 8
    :pswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->S()Ljava/lang/String;

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
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 11
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 12
    :pswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->R()Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 14
    :cond_5
    invoke-direct {p0, p3}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->J(Landroid/content/Intent;)V

    goto :goto_3

    :cond_6
    const p1, 0x7f1103ec

    if-nez p3, :cond_7

    .line 15
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    return-void

    .line 16
    :cond_7
    invoke-static {p3}, Lcom/zhihu/matisse/a;->g(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_8

    goto :goto_2

    .line 18
    :cond_8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->H(Landroid/net/Uri;)V

    goto :goto_3

    .line 19
    :cond_9
    :goto_2
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    return-void

    .line 20
    :cond_a
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object p3

    const-string v0, "portrait.jpg"

    invoke-direct {p1, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_b

    const p1, 0x7f1101bc

    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 23
    :cond_b
    invoke-static {p0, p1}, Lcom/ifengyu/library/utils/i;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->H(Landroid/net/Uri;)V

    :cond_c
    :goto_3
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
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "setting_my_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 3
    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->l:Z

    const-string v2, "setting_had_modify_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->k:Z

    const-string v2, "setting_had_modify_portrait"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->q:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09023e,
            0x7f090410,
            0x7f090414,
            0x7f090412,
            0x7f09040e,
            0x7f09024e,
            0x7f090247,
            0x7f0900a2
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
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->B0()V

    goto :goto_0

    .line 3
    :sswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->T()Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "user_login_type"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 4
    sget-object v1, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->b:Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->a()Ljava/lang/Integer;

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
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->l:Z

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
    invoke-static {p0}, Lcom/ifengyu/intercom/ui/login/SetupPasswordActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 16
    :sswitch_5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->D0()V

    goto :goto_0

    .line 17
    :sswitch_6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->C0()V

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900a2 -> :sswitch_6
        0x7f09023e -> :sswitch_5
        0x7f09024e -> :sswitch_4
        0x7f09040e -> :sswitch_3
        0x7f090410 -> :sswitch_2
        0x7f090412 -> :sswitch_1
        0x7f090414 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002c

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->I()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->K()V

    return-void
.end method

.method public p0(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f1103a2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f1103a1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/ifengyu/intercom/p/b0;->z(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const p1, 0x7f1102dd

    .line 4
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    :cond_2
    const v1, 0x7f110189

    const v2, 0x7f08018e

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0, v3, v3, v1, v2}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->C(ZZII)V

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    .line 6
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gender"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "application/json; charset=utf-8"

    .line 9
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v1

    .line 11
    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/n/a;->X(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/a0;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/intercom/ui/activity/a0;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    .line 13
    invoke-virtual {p1, v1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
