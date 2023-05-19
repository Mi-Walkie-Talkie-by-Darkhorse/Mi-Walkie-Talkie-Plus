.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;
.super Lcom/ifengyu/intercom/ui/base/l;
.source "DeviceGroupDetailFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/mi3gw/d/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/l<",
        "Lcom/ifengyu/intercom/device/mi3gw/d/a;",
        "Lcom/ifengyu/intercom/device/mi3gw/b/a;",
        ">;",
        "Lcom/ifengyu/intercom/device/mi3gw/d/a;"
    }
.end annotation


# instance fields
.field private A:Lcom/ifengyu/intercom/device/mi3gw/a/c;

.field private B:J

.field private C:Lcom/ifengyu/talk/http/entity/TempGroup;

.field private D:Ljava/lang/String;

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

.method private synthetic A3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
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

    const p1, 0x7f11030b

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

    iget-wide p3, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->B:J

    invoke-virtual {p2, p3, p4, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->E0(JLjava/lang/String;)V

    return-void
.end method

.method public static C3(J)Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_group_gid"

    .line 3
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private D3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->C:Lcom/ifengyu/talk/http/entity/TempGroup;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->itemSetGroupName:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-static {v0}, Lcom/ifengyu/talk/d;->d(Lcom/ifengyu/talk/http/entity/TempGroup;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->itemGroupId:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->C:Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-virtual {v1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->itemSetGroupName:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getAccessoryImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->itemSetGroupAvatar:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getAccessoryImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->itemSetGroupAvatar:Lcom/ifengyu/library/widget/view/ItemView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->C:Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->o()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/ifengyu/talk/d;->n(Lcom/ifengyu/talk/http/entity/TempGroup;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->itemChangeGroupOwner:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->itemChangeGroupOwner:Lcom/ifengyu/library/widget/view/ItemView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private E3()V
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

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/r;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/r;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;->K(Lcom/ifengyu/intercom/dialog/list/d$c;)Lcom/ifengyu/intercom/dialog/list/d;

    const v1, 0x7f120100

    .line 6
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private F3()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110209

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/o;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/o;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/n;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/n;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;)V

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

.method private G3()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    iget-wide v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->B:J

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->l(J)Lcom/ifengyu/talk/http/entity/TempGroup;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/m/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/m/b/e;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {v0}, Lcom/ifengyu/talk/d;->d(Lcom/ifengyu/talk/http/entity/TempGroup;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f1101e4

    .line 4
    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v2, v1

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v3, 0x7f11030a

    .line 5
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->J(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    .line 6
    invoke-virtual {v2, v0}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->H(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->I(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    sget-object v4, Lcom/ifengyu/intercom/device/mi3gw/fragment/q;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/q;

    const/4 v5, 0x0

    const v6, 0x7f1100bd

    const/4 v7, 0x2

    .line 8
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    new-instance v4, Lcom/ifengyu/intercom/device/mi3gw/fragment/u;

    invoke-direct {v4, p0, v1, v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/u;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;)V

    const v6, 0x7f1100c6

    .line 9
    invoke-virtual {v2, v5, v6, v5, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->v(F)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v4, 0x7f120100

    .line 11
    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v2

    .line 12
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->G()Landroid/widget/EditText;

    move-result-object v1

    new-array v3, v3, [Landroid/text/InputFilter;

    .line 13
    new-instance v4, Lcom/ifengyu/intercom/p/e0;

    invoke-direct {v4}, Lcom/ifengyu/intercom/p/e0;-><init>()V

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 15
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 16
    invoke-static {v1}, Lcom/ifengyu/library/utils/d;->d(Landroid/view/View;)V

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
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->itemSetMyGroupNameIn:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/view/ItemView;->getValueText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110131

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

    sget-object v4, Lcom/ifengyu/intercom/device/mi3gw/fragment/m;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/m;

    const/4 v5, 0x0

    const v6, 0x7f1100bd

    const/4 v7, 0x2

    .line 7
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    new-instance v4, Lcom/ifengyu/intercom/device/mi3gw/fragment/s;

    invoke-direct {v4, p0, v0, v1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/s;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;)V

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

.method private i3(Landroid/content/Intent;)V
    .locals 4

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

    iget-wide v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->B:J

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->R0(JLjava/io/File;)V

    return-void
.end method

.method private j3()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->A:Lcom/ifengyu/intercom/device/mi3gw/a/c;

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/p;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/p;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    return-void
.end method

.method private l3()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    iget-wide v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->B:J

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->l(J)Lcom/ifengyu/talk/http/entity/TempGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->C:Lcom/ifengyu/talk/http/entity/TempGroup;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1101dc

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/v;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/v;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->itemSetMyGroupNameIn:Lcom/ifengyu/library/widget/view/ItemView;

    const v1, 0x7f110131

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setTitleText(Ljava/lang/CharSequence;)V

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/a/c;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/device/mi3gw/b/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/mi3gw/b/a;->w()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/device/mi3gw/a/c;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->A:Lcom/ifengyu/intercom/device/mi3gw/a/c;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->rvTopList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->rvTopList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->A:Lcom/ifengyu/intercom/device/mi3gw/a/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->D3()V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->btnExitGroup:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->j3()V

    return-void
.end method

.method private synthetic m3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p1, Lcom/ifengyu/intercom/device/mi3gw/b/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3gw/b/a;->w()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;->getType()I

    move-result p1

    const/16 p2, 0x3ea

    if-eq p1, p2, :cond_1

    const/16 p2, 0x3eb

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->B:J

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->P3(J)Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 4
    :cond_1
    iget-wide p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->B:J

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/fragment/q2;->O3(J)Lcom/ifengyu/intercom/device/mi3gw/fragment/q2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    :goto_0
    return-void
.end method

.method private synthetic o3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method public static synthetic q3(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic r3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
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

.method static synthetic t3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic u3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [J

    iget-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->B:J

    const/4 v2, 0x0

    aput-wide v0, p2, v2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->f([J)V

    return-void
.end method

.method static synthetic w3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic x3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
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

    const p1, 0x7f11030a

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

    iget-wide p3, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->B:J

    invoke-virtual {p2, p3, p4, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->F0(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic z3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method


# virtual methods
.method public synthetic B3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->A3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method protected D2(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "key_group_gid"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->B:J

    :cond_0
    return-void
.end method

.method protected E2()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    iget-wide v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->B:J

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->B0(J)V

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

    iput-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->D:Ljava/lang/String;

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

.method public S0()V
    .locals 1

    const v0, 0x7f1102ac

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    return-void
.end method

.method public e()V
    .locals 1

    const v0, 0x7f1101b3

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method public e0(Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->C:Lcom/ifengyu/talk/http/entity/TempGroup;

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->A:Lcom/ifengyu/intercom/device/mi3gw/a/c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->lookAllMember:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->A:Lcom/ifengyu/intercom/device/mi3gw/a/c;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->D3()V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    iget-wide v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->B:J

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->l(J)Lcom/ifengyu/talk/http/entity/TempGroup;

    move-result-object v0

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
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->l3()V

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->k3()Lcom/ifengyu/intercom/device/mi3gw/b/a;

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

.method public h3(Landroid/net/Uri;)V
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

.method protected k3()Lcom/ifengyu/intercom/device/mi3gw/b/a;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/b/a;

    iget-wide v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->B:J

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/device/mi3gw/b/a;-><init>(J)V

    return-object v0
.end method

.method public n()V
    .locals 2

    const v0, 0x7f1101b4

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/t;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/t;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/base/k;->f3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V

    return-void
.end method

.method public synthetic n3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->m3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public o1(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->itemSetMyGroupNameIn:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

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
    invoke-direct {p0, p3}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->i3(Landroid/content/Intent;)V

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

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->h3(Landroid/net/Uri;)V

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
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->D:Ljava/lang/String;

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

    iget-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->D:Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->h3(Landroid/net/Uri;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
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
    iget-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->B:J

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupAllMemberFragment;->m3(J)Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupAllMemberFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 3
    :sswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->H3()V

    goto :goto_0

    .line 4
    :sswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->G3()V

    goto :goto_0

    .line 5
    :sswitch_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->E3()V

    goto :goto_0

    .line 6
    :sswitch_4
    iget-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->B:J

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/r2;->v3(J)Lcom/ifengyu/intercom/device/mi3gw/fragment/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 7
    :sswitch_5
    iget-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->B:J

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupOwnerChangeFragment;->S3(J)Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupOwnerChangeFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 8
    :sswitch_6
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->F3()V

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

.method public synthetic p3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->o3(Landroid/view/View;)V

    return-void
.end method

.method public q1()V
    .locals 1

    const v0, 0x7f1102aa

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method public synthetic s3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->r3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V

    return-void
.end method

.method public synthetic v3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->u3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic y3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->x3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
