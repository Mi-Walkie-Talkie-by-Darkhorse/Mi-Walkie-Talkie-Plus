.class public Lcom/ifengyu/intercom/ui/fragment/MyFragment;
.super Lcom/ifengyu/intercom/ui/baseui/BaseFragment;
.source "MyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/network/OnDownloadListener;


# instance fields
.field private b:Lcom/ifengyu/intercom/ui/MainActivity;

.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/content/SharedPreferences;

.field private e:Z

.field private f:Landroid/view/View;

.field mCivPortrait:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100265
    .end annotation
.end field

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

.field userID:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100267
    .end annotation
.end field

.field userName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100266
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/fragment/MyFragment;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/fragment/MyFragment;)Lcom/ifengyu/intercom/ui/MainActivity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    return-object v0
.end method

.method public static d()Lcom/ifengyu/intercom/ui/fragment/MyFragment;
    .locals 2

    const-string v0, "MyFragment"

    const-string v1, "newInstance"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;-><init>()V

    return-object v0
.end method

.method private e()V
    .locals 6

    const/4 v5, 0x1

    const v4, 0x7f020172

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->f:Landroid/view/View;

    const v1, 0x7f100097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->c()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090204

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->d:Landroid/content/SharedPreferences;

    const-string v1, "key_has_new_message"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->e:Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarRight:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->e:Z

    if-eqz v0, :cond_1

    const v0, 0x7f02016a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->userName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->c:Landroid/content/SharedPreferences;

    const-string v2, "nickname"

    const v3, 0x7f090138

    invoke-static {v3}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->userID:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
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

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->c:Landroid/content/SharedPreferences;

    const-string v3, "avatar"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->mCivPortrait:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    invoke-virtual {v1, v2, v3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->f:Landroid/view/View;

    const v1, 0x7f100264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->f:Landroid/view/View;

    const v1, 0x7f100303

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->f:Landroid/view/View;

    const v1, 0x7f100302

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->f:Landroid/view/View;

    const v1, 0x7f100304

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->f:Landroid/view/View;

    const v1, 0x7f100305

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->f:Landroid/view/View;

    const v1, 0x7f100307

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->f:Landroid/view/View;

    const v1, 0x7f100306

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->f:Landroid/view/View;

    const v1, 0x7f100308

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->f:Landroid/view/View;

    const v1, 0x7f100309

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/MyFragment$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment$1;-><init>(Lcom/ifengyu/intercom/ui/fragment/MyFragment;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/a/a;->a(Lcom/ifengyu/intercom/a/b/b;)V

    return-void

    :cond_1
    const v0, 0x7f020169

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V
    .locals 4

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    const v1, 0x7f0901c2

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/MainActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/MainActivity;->d(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MyFragment$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment$3;-><init>(Lcom/ifengyu/intercom/ui/fragment/MyFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->k()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "MyFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->addDownloadListener(Lcom/ifengyu/intercom/network/OnDownloadListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    const-string v0, "setting_my_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setting_had_modify_portrait"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "setting_had_modify_name"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->mCivPortrait:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    invoke-static {v3}, Lcom/ifengyu/intercom/b/ad;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->userName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    const-string v0, "MyFragment"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.action.MESSAGE_CENTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarRight:Landroid/widget/ImageView;

    const v1, 0x7f020169

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_has_new_message"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "my_tab_page"

    const-string v1, "messageCenterBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->M()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setting_my_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "my_tab_page"

    const-string v1, "modifyPersonalInfoClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "my_tab_page"

    const-string v1, "offlineMapDownloadBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.action.PRODUCT_MANUAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "type"

    const-string v2, "seal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "my_tab_page"

    const-string v1, "productManualBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const-string v1, "type"

    const-string v2, "shark"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const-string v1, "type"

    const-string v2, "dolphin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string v1, "type"

    const-string v2, "dolphin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.action.USE_HELP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "my_tab_page"

    const-string v1, "commonQuestionAnswerClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    const/4 v1, 0x1

    const v2, 0x7f0900cf

    const v3, 0x7f020128

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ifengyu/intercom/ui/MainActivity;->a(ZZII)V

    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    sget-object v3, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MyFragment$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment$2;-><init>(Lcom/ifengyu/intercom/ui/fragment/MyFragment;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "my_tab_page"

    const-string v1, "questionFeedBackClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/AboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_8
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/s;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/s;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->show()V

    goto/16 :goto_0

    :sswitch_9
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "my_tab_page"

    const-string v1, "myTrackBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f10015b -> :sswitch_0
        0x7f100264 -> :sswitch_1
        0x7f100302 -> :sswitch_2
        0x7f100303 -> :sswitch_9
        0x7f100304 -> :sswitch_3
        0x7f100305 -> :sswitch_4
        0x7f100306 -> :sswitch_6
        0x7f100307 -> :sswitch_5
        0x7f100308 -> :sswitch_7
        0x7f100309 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "MyFragment"

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

    const-string v0, "MyFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f040097

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->f:Landroid/view/View;

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->c:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->d:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->e()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->f:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onDestroy()V

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->removeDownloadListener(Lcom/ifengyu/intercom/network/OnDownloadListener;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "MyFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onStop()V

    return-void
.end method
