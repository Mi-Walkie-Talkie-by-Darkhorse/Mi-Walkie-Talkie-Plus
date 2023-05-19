.class public Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "UserInfoFragment.java"

# interfaces
.implements Lcom/ifengyu/talk/h/g;
.implements Lcom/ifengyu/talk/h/f;


# instance fields
.field private A:I

.field btnBottom1:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a3
    .end annotation
.end field

.field btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a4
    .end annotation
.end field

.field ivAvatar:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090269
    .end annotation
.end field

.field ivIsDevice:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090271
    .end annotation
.end field

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field topBg:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049c
    .end annotation
.end field

.field tvId:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904d8
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904e5
    .end annotation
.end field

.field private z:Lcom/shanlitech/et/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private A3()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->k()Lcom/ifengyu/talk/f/g0;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z:Lcom/shanlitech/et/model/User;

    invoke-virtual {v2}, Lcom/shanlitech/et/model/User;->getAccount()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ifengyu/talk/f/g0;->b([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f110173

    .line 3
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    :cond_0
    return-void
.end method

.method private g3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "key_user_model"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/shanlitech/et/model/User;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z:Lcom/shanlitech/et/model/User;

    const-string v1, "key_from_where"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->A:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f080151

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/q1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/q1;-><init>(Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom1:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom1:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/p1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/p1;-><init>(Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/u1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/u1;-><init>(Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic h3(Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic i3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z3()V

    return-void
.end method

.method private synthetic k3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z3()V

    return-void
.end method

.method private synthetic m3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic o3(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom1:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const v0, 0x7f11002e

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->x3()V

    :cond_0
    return-void
.end method

.method private synthetic q3(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const v0, 0x7f11002e

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->x3()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const v0, 0x7f1103bb

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->y3()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic s3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z3()V

    return-void
.end method

.method static synthetic u3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic v3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z:Lcom/shanlitech/et/model/User;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/User;->removeContact()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f110110

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    :cond_0
    return-void
.end method

.method private x3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z:Lcom/shanlitech/et/model/User;

    invoke-static {v0}, Lcom/shanlitech/et/model/ContactList;->isContact(Lcom/shanlitech/et/model/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110102

    .line 2
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f0801b5

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->n(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/s1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/s1;-><init>(Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom1:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f1103bb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z:Lcom/shanlitech/et/model/User;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/model/User;->addContact(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f110058

    .line 9
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private y3()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->A3()V

    return-void
.end method

.method private z3()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110112

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/ui/fragment/r1;->a:Lcom/ifengyu/intercom/ui/fragment/r1;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/o1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/o1;-><init>(Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;)V

    const v3, 0x7f1100cd

    .line 4
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public B0(Lcom/shanlitech/et/notice/event/ResultEvent;)V
    .locals 0

    return-void
.end method

.method public C0(Lcom/shanlitech/et/notice/event/GroupRemovedEvent;)V
    .locals 0

    return-void
.end method

.method protected E2()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z:Lcom/shanlitech/et/model/User;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->tvId:Landroid/widget/TextView;

    const v2, 0x7f1101ce

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z:Lcom/shanlitech/et/model/User;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->ivAvatar:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z:Lcom/shanlitech/et/model/User;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/User;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/ifengyu/library/c/a;->f(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->A:I

    const/4 v1, 0x3

    const v2, 0x7f0801b5

    const v3, 0x7f11002e

    const v5, 0x7f1103bb

    const/16 v6, 0x8

    if-ne v0, v1, :cond_4

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z:Lcom/shanlitech/et/model/User;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->getRole()I

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->ivIsDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom1:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->ivIsDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z:Lcom/shanlitech/et/model/User;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->isMe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom1:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z:Lcom/shanlitech/et/model/User;

    invoke-static {v0}, Lcom/shanlitech/et/model/ContactList;->isContact(Lcom/shanlitech/et/model/User;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->n(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/n1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/n1;-><init>(Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom1:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom1:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom1:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z:Lcom/shanlitech/et/model/User;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->getRole()I

    move-result v0

    if-nez v0, :cond_6

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->ivIsDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom1:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 26
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->H()Lcom/ifengyu/intercom/database/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z:Lcom/shanlitech/et/model/User;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/intercom/database/a/g;->e(J)Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 27
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 29
    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 30
    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->ivIsDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z:Lcom/shanlitech/et/model/User;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->isMe()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom1:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 34
    :cond_7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->z:Lcom/shanlitech/et/model/User;

    invoke-static {v0}, Lcom/shanlitech/et/model/ContactList;->isContact(Lcom/shanlitech/et/model/User;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 35
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->n(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/v1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/v1;-><init>(Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom1:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 39
    :cond_8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom1:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    :goto_1
    return-void
.end method

.method public H0(Lcom/shanlitech/et/notice/event/RequestResultEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequest()Lcom/shanlitech/et/ETStatusCode$Request;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$Request;->x:Lcom/shanlitech/et/ETStatusCode$Request;

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequestResultCode()Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    move-result-object p1

    sget-object v0, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->b:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    if-ne p1, v0, :cond_0

    const p1, 0x7f110059

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f110058

    .line 4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequest()Lcom/shanlitech/et/ETStatusCode$Request;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$Request;->z:Lcom/shanlitech/et/ETStatusCode$Request;

    if-ne v0, v1, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequestResultCode()Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    move-result-object p1

    sget-object v0, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->b:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    if-ne p1, v0, :cond_2

    const p1, 0x7f110111

    .line 7
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/t1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/t1;-><init>(Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/base/k;->f3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V

    goto :goto_0

    :cond_2
    const p1, 0x7f110110

    .line 8
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public T(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7f110174

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f110173

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    :goto_0
    return-void
.end method

.method public Z(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/talk/SessionTalkActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->k()Lcom/ifengyu/talk/f/g0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/g0;->addListener(Lcom/ifengyu/talk/h/g;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->j()Lcom/ifengyu/talk/f/f0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/f0;->addListener(Lcom/ifengyu/talk/h/f;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->g3()V

    return-object v0
.end method

.method public synthetic j3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->i3(Landroid/view/View;)V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public synthetic l3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->k3(Landroid/view/View;)V

    return-void
.end method

.method public m0(Lcom/shanlitech/et/notice/event/InviteGroupAckEvent;)V
    .locals 0

    return-void
.end method

.method public n0(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V
    .locals 0

    return-void
.end method

.method public synthetic n3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->m3(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->k()Lcom/ifengyu/talk/f/g0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/g0;->removeListener(Lcom/ifengyu/talk/h/g;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->j()Lcom/ifengyu/talk/f/f0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/f0;->removeListener(Lcom/ifengyu/talk/h/f;)V

    return-void
.end method

.method public synthetic p3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->o3(Landroid/view/View;)V

    return-void
.end method

.method public r1(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V
    .locals 0

    return-void
.end method

.method public synthetic r3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->q3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic t3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->s3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic w3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->v3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public x(Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;)V
    .locals 0

    return-void
.end method
