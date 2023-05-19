.class public Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "SystemPermissionFragment.java"


# instance fields
.field cameraValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c7
    .end annotation
.end field

.field locationValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c1
    .end annotation
.end field

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field notifyValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090347
    .end annotation
.end field

.field recordValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903a2
    .end annotation
.end field

.field storageValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090451
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private synthetic h3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method public static j3()Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private k3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;->notifyValue:Landroid/widget/TextView;

    const v1, 0x7f1101d6

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "android.permission.CAMERA"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/utils/m;->b([Ljava/lang/String;)Z

    move-result v0

    const v2, 0x7f1103ce

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;->cameraValue:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;->cameraValue:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/utils/m;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;->locationValue:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;->locationValue:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 8
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/utils/m;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;->recordValue:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;->recordValue:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/utils/m;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;->storageValue:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;->storageValue:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method


# virtual methods
.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;->g3()V

    return-object v0
.end method

.method protected g3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1103c7

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/j1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/j1;-><init>(Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic i3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;->h3(Landroid/view/View;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/SystemPermissionFragment;->k3()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902bf,
            0x7f0903a0,
            0x7f0900c5,
            0x7f090345,
            0x7f09044f,
            0x7f0902c0,
            0x7f0903a1,
            0x7f0900c6,
            0x7f090346,
            0x7f090450
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f1103d3

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_5

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://m.ifengyu.com/resourcesDev/resources/en/storageAuthHelp.html"

    goto :goto_0

    :cond_0
    const-string v1, "https://m.ifengyu.com/resourcesDev/resources/storageAuthHelp.html"

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/device/lite/WebActivity;->N(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3
    :sswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "https://m.ifengyu.com/resourcesDev/resources/en/micAuthHelp.html"

    goto :goto_1

    :cond_1
    const-string v1, "https://m.ifengyu.com/resourcesDev/resources/micAuthHelp.html"

    :goto_1
    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/device/lite/WebActivity;->N(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 4
    :sswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "https://m.ifengyu.com/resourcesDev/resources/en/notifaAuthHelp.html"

    goto :goto_2

    :cond_2
    const-string v1, "https://m.ifengyu.com/resourcesDev/resources/notifaAuthHelp.html"

    :goto_2
    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/device/lite/WebActivity;->N(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 5
    :sswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "https://m.ifengyu.com/resourcesDev/resources/en/locationAndroidAuthHelp.html"

    goto :goto_3

    :cond_3
    const-string v1, "https://m.ifengyu.com/resourcesDev/resources/locationAndroidAuthHelp.html"

    :goto_3
    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/device/lite/WebActivity;->N(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 6
    :sswitch_4
    invoke-static {}, Lcom/ifengyu/library/utils/m;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 7
    :sswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "https://m.ifengyu.com/resourcesDev/resources/en/camareAuthHelp.html"

    goto :goto_4

    :cond_4
    const-string v1, "https://m.ifengyu.com/resourcesDev/resources/camareAuthHelp.html"

    :goto_4
    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/device/lite/WebActivity;->N(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900c5 -> :sswitch_5
        0x7f0900c6 -> :sswitch_4
        0x7f0902bf -> :sswitch_3
        0x7f0902c0 -> :sswitch_4
        0x7f090345 -> :sswitch_2
        0x7f090346 -> :sswitch_4
        0x7f0903a0 -> :sswitch_1
        0x7f0903a1 -> :sswitch_4
        0x7f09044f -> :sswitch_0
        0x7f090450 -> :sswitch_4
    .end sparse-switch
.end method
