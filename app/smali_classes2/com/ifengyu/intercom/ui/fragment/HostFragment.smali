.class public Lcom/ifengyu/intercom/ui/fragment/HostFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "HostFragment.java"


# instance fields
.field btnSave:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b7
    .end annotation
.end field

.field checkBoxM303:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900cf
    .end annotation
.end field

.field envRadioGroup:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a9
    .end annotation
.end field

.field etAudioHost:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901aa
    .end annotation
.end field

.field etPostHost:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ba
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private g3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const-string v1, "\u6d4b\u8bd5\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/m0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/m0;-><init>(Lcom/ifengyu/intercom/ui/fragment/HostFragment;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/f;->b()Lcom/ifengyu/intercom/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/f;->c()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/f;->b()Lcom/ifengyu/intercom/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/f;->b()Lcom/ifengyu/intercom/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/f;->e()Z

    move-result v2

    .line 8
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->etPostHost:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->etAudioHost:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "https://api-mipoc.ifengyu.com:8088"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->envRadioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f09039c

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->envRadioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f09039d

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->checkBoxM303:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->envRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/l0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/l0;-><init>(Lcom/ifengyu/intercom/ui/fragment/HostFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->btnSave:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->btnSave:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/k0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/k0;-><init>(Lcom/ifengyu/intercom/ui/fragment/HostFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic h3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic j3(Landroid/widget/RadioGroup;I)V
    .locals 0

    const p1, 0x7f09039c

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->etPostHost:Landroid/widget/EditText;

    const-string p2, "https://api-mipoc.ifengyu.com:8088"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->etAudioHost:Landroid/widget/EditText;

    const-string p2, "redirector.ifengyu.com:9099"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f09039d

    if-ne p2, p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->etPostHost:Landroid/widget/EditText;

    const-string p2, "https://api-mipoc-test.ifengyu.com"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->etAudioHost:Landroid/widget/EditText;

    const-string p2, "39.97.69.72:9099"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic l3(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->etPostHost:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->etAudioHost:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lorg/apache/commons/lang/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lorg/apache/commons/lang/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "http://"

    .line 4
    invoke-static {p1, v1}, Lorg/apache/commons/lang/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "https://"

    if-nez v2, :cond_1

    .line 5
    invoke-static {p1, v3}, Lorg/apache/commons/lang/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "http\u670d\u52a1\u5730\u5740\u5fc5\u987b\u643a\u5e26http\u6216https\u534f\u8bae\u5934"

    .line 6
    invoke-static {p1}, Lcom/blankj/utilcode/util/ToastUtils;->r(Ljava/lang/CharSequence;)V

    return-void

    .line 7
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/lang/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    invoke-static {v0, v3}, Lorg/apache/commons/lang/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->checkBoxM303:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/f;->b()Lcom/ifengyu/intercom/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/f;->g(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/ifengyu/intercom/f;->b()Lcom/ifengyu/intercom/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/f;->f(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/ifengyu/intercom/f;->b()Lcom/ifengyu/intercom/f;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/f;->h(Z)V

    .line 13
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->w()V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->r3(Landroid/content/Context;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "\u8bed\u97f3\u670d\u52a1\u5730\u5740\u4e0d\u80fd\u6709http\u534f\u8bae\u5934"

    .line 15
    invoke-static {p1}, Lcom/blankj/utilcode/util/ToastUtils;->r(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "Host\u5730\u5740\u4e0d\u80fd\u4e3a\u7a7a"

    .line 16
    invoke-static {p1}, Lcom/blankj/utilcode/util/ToastUtils;->r(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic n3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/database/TalkDatabase;->D()Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/database/TalkDatabase;->F()Lcom/ifengyu/talk/database/a/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/ifengyu/talk/database/a/c;->c()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->q3()V

    return-void
.end method

.method public static p3()Lcom/ifengyu/intercom/ui/fragment/HostFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/fragment/HostFragment;-><init>()V

    return-object v0
.end method

.method private q3()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private r3(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 3
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const-string v1, "\u914d\u7f6e\u5df2\u66f4\u65b0\uff0c\u786e\u8ba4\u9000\u51fa\u767b\u5f55\u5e76\u91cd\u542f\u5e94\u7528\uff1f"

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->F(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/j0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/j0;-><init>(Lcom/ifengyu/intercom/ui/fragment/HostFragment;)V

    const v2, 0x7f1100c6

    .line 5
    invoke-virtual {v0, p1, v2, p1, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f120100

    .line 6
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

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

    const v1, 0x7f0c009d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->g3()V

    return-object v0
.end method

.method public synthetic i3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->h3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic k3(Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->j3(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public synthetic m3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->l3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic o3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->n3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
