.class public Lcom/ifengyu/intercom/ui/fragment/MyFragment;
.super Lcom/ifengyu/intercom/ui/baseui/a;
.source "MyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/network/OnDownloadListener;


# instance fields
.field private g:Lcom/ifengyu/intercom/ui/MainActivity;

.field private h:Landroid/content/SharedPreferences;

.field private i:Landroid/content/SharedPreferences;

.field private j:Z

.field private k:Landroid/view/View;

.field mCivPortrait:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903a2
    .end annotation
.end field

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

.field userID:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09039f
    .end annotation
.end field

.field userName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903a1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MyFragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->i:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/fragment/MyFragment;)Lcom/ifengyu/intercom/ui/MainActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    return-object p0
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->p()V

    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->k:Landroid/view/View;

    const v1, 0x7f090415

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/a;->e:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/a;->i()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f110325

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->i:Landroid/content/SharedPreferences;

    const-string v1, "key_has_new_message"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->j:Z

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarRight:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v0, 0x7f08018c

    goto :goto_0

    :cond_0
    const v0, 0x7f08018b

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->userName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->h:Landroid/content/SharedPreferences;

    const v2, 0x7f11020a

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nickname"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const v1, 0x7f08019e

    .line 8
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->h:Landroid/content/SharedPreferences;

    const-string v3, "avatar"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->mCivPortrait:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    invoke-virtual {v1, v2, v3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->k:Landroid/view/View;

    const v1, 0x7f0903a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->k:Landroid/view/View;

    const v1, 0x7f09039c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->k:Landroid/view/View;

    const v1, 0x7f090398

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->k:Landroid/view/View;

    const v1, 0x7f09039d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->k:Landroid/view/View;

    const v1, 0x7f09039e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->k:Landroid/view/View;

    const v1, 0x7f09039a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->k:Landroid/view/View;

    const v1, 0x7f09039b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->k:Landroid/view/View;

    const v1, 0x7f090399

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->k:Landroid/view/View;

    const v1, 0x7f090397

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->k:Landroid/view/View;

    const v1, 0x7f090246

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/MyFragment$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment$a;-><init>(Lcom/ifengyu/intercom/ui/fragment/MyFragment;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/g/a;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method private k()V
    .locals 6

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1102d7

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v2, Lcom/ifengyu/intercom/ui/fragment/n;->a:Lcom/ifengyu/intercom/ui/fragment/n;

    const/4 v3, 0x0

    const v4, 0x7f110093

    const/4 v5, 0x2

    .line 5
    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v2, Lcom/ifengyu/intercom/ui/fragment/m;->a:Lcom/ifengyu/intercom/ui/fragment/m;

    const v4, 0x7f11009c

    .line 6
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    .line 7
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static newInstance()Lcom/ifengyu/intercom/ui/fragment/MyFragment;
    .locals 2

    const-string v0, "MyFragment"

    const-string v1, "newInstance"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V
    .locals 2

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    const p2, 0x7f1102d6

    invoke-static {p2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    const p2, 0x7f080191

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    .line 7
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/fragment/MyFragment$c;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment$c;-><init>(Lcom/ifengyu/intercom/ui/fragment/MyFragment;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    :cond_1
    :goto_0
    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "MyFragment"

    const-string v1, "onActivityCreated"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->addDownloadListener(Lcom/ifengyu/intercom/network/OnDownloadListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "setting_my_name"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "setting_had_modify_portrait"

    .line 2
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "setting_had_modify_name"

    .line 3
    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->mCivPortrait:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    invoke-static {p3}, Lcom/ifengyu/intercom/i/k0;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->userName:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    const-string v0, "MyFragment"

    const-string v1, "onAttach"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/MainActivity;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090246

    if-eq p1, v0, :cond_4

    const v0, 0x7f0903a0

    if-eq p1, v0, :cond_3

    const v0, 0x7f09041a

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 2
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.ifengyu.intercom.action.USE_HELP"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1102ee

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://m.ifengyu.com/resources/en/productList.html"

    goto :goto_0

    :cond_0
    const-string v1, "https://m.ifengyu.com/resources/productList.html"

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/lite/WebActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 7
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 8
    :pswitch_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f110248

    .line 9
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    const/4 v0, 0x1

    const v2, 0x7f1100fc

    const v3, 0x7f08013e

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZII)V

    .line 11
    new-instance p1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    sget-object v2, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-direct {p1, v0, v1, v2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V

    .line 12
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;)V

    .line 13
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/MyFragment$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment$b;-><init>(Lcom/ifengyu/intercom/ui/fragment/MyFragment;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 14
    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/AboutActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 15
    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 16
    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/AppSettingActivity;->start(Landroid/content/Context;)V

    goto :goto_1

    .line 17
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.ifengyu.intercom.action.MESSAGE_CENTER"

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 20
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarRight:Landroid/widget/ImageView;

    const v0, 0x7f08018b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->i:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "key_has_new_message"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 22
    :cond_3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->g:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->P()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setting_my_name"

    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x5

    .line 25
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 26
    :cond_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->k()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090397
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "MyFragment"

    const-string v1, "onCreate"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
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

    const-string p3, "MyFragment"

    const-string v0, "onCreateView"

    .line 1
    invoke-static {p3, v0}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f0c00a4

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->k:Landroid/view/View;

    .line 3
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->R()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->h:Landroid/content/SharedPreferences;

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->i:Landroid/content/SharedPreferences;

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->j()V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->k:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/a;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->removeDownloadListener(Lcom/ifengyu/intercom/network/OnDownloadListener;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "MyFragment"

    const-string v1, "onStart"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method
