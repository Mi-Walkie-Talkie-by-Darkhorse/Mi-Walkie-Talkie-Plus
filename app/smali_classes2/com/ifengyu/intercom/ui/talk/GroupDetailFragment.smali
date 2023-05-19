.class public Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;
.super Lcom/ifengyu/intercom/ui/base/l;
.source "GroupDetailFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/talk/d3/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/l<",
        "Lcom/ifengyu/intercom/ui/talk/d3/c;",
        "Lcom/ifengyu/intercom/ui/talk/c3/e0;",
        ">;",
        "Lcom/ifengyu/intercom/ui/talk/d3/c;"
    }
.end annotation


# instance fields
.field private A:Lcom/ifengyu/intercom/ui/talk/b3/h;

.field private B:Lcom/shanlitech/et/model/Group;

.field private C:Ljava/lang/String;

.field btnExitGroup:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a9
    .end annotation
.end field

.field itemChangeGroupOwner:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090240
    .end annotation
.end field

.field itemGroupId:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090244
    .end annotation
.end field

.field itemSetGroupAvatar:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090256
    .end annotation
.end field

.field itemSetGroupName:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090257
    .end annotation
.end field

.field itemSetMyGroupNameIn:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090258
    .end annotation
.end field

.field lookAllMember:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c4
    .end annotation
.end field

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field rvTopList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903d1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/l;-><init>()V

    return-void
.end method

.method static synthetic B3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic C3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public static D3(Lcom/shanlitech/et/model/Group;)Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_group"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private E3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getAllMemberCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1101dd

    invoke-static {v2, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemSetGroupName:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-static {v1}, Lcom/ifengyu/talk/d;->e(Lcom/shanlitech/et/model/Group;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemGroupId:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemSetGroupName:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getAccessoryImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemSetGroupAvatar:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getAccessoryImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemSetGroupAvatar:Lcom/ifengyu/library/widget/view/ItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-static {v0}, Lcom/ifengyu/talk/d;->m(Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemChangeGroupOwner:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemChangeGroupOwner:Lcom/ifengyu/library/widget/view/ItemView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private F3()V
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

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/h0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/h0;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;->K(Lcom/ifengyu/intercom/dialog/list/d$c;)Lcom/ifengyu/intercom/dialog/list/d;

    const v1, 0x7f120100

    .line 6
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private G3()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110209

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/ui/talk/f0;->a:Lcom/ifengyu/intercom/ui/talk/f0;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/g0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/g0;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)V

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

.method private H3()V
    .locals 8

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/e;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-static {v1}, Lcom/ifengyu/talk/d;->e(Lcom/shanlitech/et/model/Group;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1101e4

    .line 3
    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v2, v0

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v3, 0x7f11030a

    .line 4
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->J(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    .line 5
    invoke-virtual {v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->H(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->I(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    sget-object v4, Lcom/ifengyu/intercom/ui/talk/d0;->a:Lcom/ifengyu/intercom/ui/talk/d0;

    const/4 v5, 0x0

    const v6, 0x7f1100bd

    const/4 v7, 0x2

    .line 7
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    new-instance v4, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment$a;

    invoke-direct {v4, p0, v0, v1}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment$a;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;)V

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

    invoke-direct {v4}, Lcom/ifengyu/intercom/p/e0;-><init>()V

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

.method private I3()V
    .locals 8

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/e;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemSetMyGroupNameIn:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/view/ItemView;->getValueText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1101e3

    .line 3
    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v2, v0

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v3, 0x7f11030b

    .line 4
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->J(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    .line 5
    invoke-virtual {v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->H(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->I(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    sget-object v4, Lcom/ifengyu/intercom/ui/talk/e0;->a:Lcom/ifengyu/intercom/ui/talk/e0;

    const/4 v5, 0x0

    const v6, 0x7f1100bd

    const/4 v7, 0x2

    .line 7
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    new-instance v4, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment$b;

    invoke-direct {v4, p0, v0, v1}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment$b;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;)V

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

    invoke-direct {v4}, Lcom/ifengyu/intercom/p/e0;-><init>()V

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 14
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 15
    invoke-static {v0}, Lcom/ifengyu/library/utils/d;->d(Landroid/view/View;)V

    return-void
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    return-void
.end method

.method static synthetic i3(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)Lcom/ifengyu/intercom/ui/base/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    return-object p0
.end method

.method static synthetic j3(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    return-void
.end method

.method static synthetic k3(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)Lcom/ifengyu/intercom/ui/base/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    return-object p0
.end method

.method private m3(Landroid/content/Intent;)V
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
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/e0;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/talk/c3/e0;->R(Ljava/io/File;)V

    return-void
.end method

.method private n3()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->A:Lcom/ifengyu/intercom/ui/talk/b3/h;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/b0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/b0;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    return-void
.end method

.method private p3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/c0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/c0;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/h;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/c3/e0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/c3/e0;->A()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/talk/b3/h;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->A:Lcom/ifengyu/intercom/ui/talk/b3/h;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->rvTopList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->rvTopList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->A:Lcom/ifengyu/intercom/ui/talk/b3/h;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->E3()V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->btnExitGroup:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 8
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->n3()V

    return-void
.end method

.method private synthetic q3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/c3/e0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/c3/e0;->A()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getType()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->M3(Lcom/shanlitech/et/model/Group;)Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/y2;->T3(Lcom/shanlitech/et/model/Group;)Lcom/ifengyu/intercom/ui/talk/y2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getMember()Lcom/shanlitech/et/model/Member;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object p1

    const/4 p3, 0x3

    invoke-static {p2, p1, p3}, Lcom/ifengyu/intercom/ui/activity/UserInfoActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/model/User;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic s3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic u3()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->start(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic w3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
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

.method static synthetic y3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic z3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/c3/e0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/c3/e0;->O()V

    return-void
.end method


# virtual methods
.method public synthetic A3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->z3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method protected D2(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_group"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/model/Group;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->B:Lcom/shanlitech/et/model/Group;

    :cond_0
    return-void
.end method

.method protected E2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/e0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/c3/e0;->Q()V

    return-void
.end method

.method public F0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemSetMyGroupNameIn:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public J0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/talk/TalkActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/model/Group;)V

    return-void
.end method

.method public O()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->A:Lcom/ifengyu/intercom/ui/talk/b3/h;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->lookAllMember:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->A:Lcom/ifengyu/intercom/ui/talk/b3/h;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1101dd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v4}, Lcom/shanlitech/et/model/Group;->getAllMemberCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

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

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->C:Ljava/lang/String;

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

.method public c(Lcom/shanlitech/et/model/Group;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->B:Lcom/shanlitech/et/model/Group;

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->E3()V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->E2()V

    return-void
.end method

.method public e()V
    .locals 1

    const v0, 0x7f1101b3

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->B:Lcom/shanlitech/et/model/Group;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c009a

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->p3()V

    return-object v0
.end method

.method public g()V
    .locals 1

    const v0, 0x7f1102aa

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method protected bridge synthetic g3()Lcom/ifengyu/intercom/ui/base/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->o3()Lcom/ifengyu/intercom/ui/talk/c3/e0;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    const v0, 0x7f11008b

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method public i()V
    .locals 1

    const v0, 0x7f11008c

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    return-void
.end method

.method public j()V
    .locals 1

    const v0, 0x7f1102ac

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    return-void
.end method

.method public l3(Landroid/net/Uri;)V
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

.method public n()V
    .locals 2

    const v0, 0x7f1101b4

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/a0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/a0;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/base/k;->f3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V

    return-void
.end method

.method protected o3()Lcom/ifengyu/intercom/ui/talk/c3/e0;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c3/e0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/talk/c3/e0;-><init>(Landroid/content/Context;Lcom/shanlitech/et/model/Group;)V

    return-object v0
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
    invoke-direct {p0, p3}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->m3(Landroid/content/Intent;)V

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

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->l3(Landroid/net/Uri;)V

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
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->C:Ljava/lang/String;

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

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->C:Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->l3(Landroid/net/Uri;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902c4,
            0x7f090257,
            0x7f090256,
            0x7f090245,
            0x7f090258,
            0x7f090240,
            0x7f0900a9
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->I3(Lcom/shanlitech/et/model/Group;)Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 3
    :sswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->I3()V

    goto :goto_0

    .line 4
    :sswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->H3()V

    goto :goto_0

    .line 5
    :sswitch_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->F3()V

    goto :goto_0

    .line 6
    :sswitch_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/a3;->v3(Lcom/shanlitech/et/model/Group;)Lcom/ifengyu/intercom/ui/talk/a3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 7
    :sswitch_5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/GroupOwnerChangeFragment;->U3(Lcom/shanlitech/et/model/Group;)Lcom/ifengyu/intercom/ui/talk/GroupOwnerChangeFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 8
    :sswitch_6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->G3()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900a9 -> :sswitch_6
        0x7f090240 -> :sswitch_5
        0x7f090245 -> :sswitch_4
        0x7f090256 -> :sswitch_3
        0x7f090257 -> :sswitch_2
        0x7f090258 -> :sswitch_1
        0x7f0902c4 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic r3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->q3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic t3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->s3(Landroid/view/View;)V

    return-void
.end method

.method public v()V
    .locals 1

    const v0, 0x7f1102aa

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method public synthetic v3()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->u3()V

    return-void
.end method

.method public x0()V
    .locals 1

    const v0, 0x7f1102ac

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    return-void
.end method

.method public synthetic x3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->w3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V

    return-void
.end method
