.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "Mi3GWDetailFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/mi3gw/c/e0;
.implements Lcom/ifengyu/talk/h/b;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Lcom/ifengyu/intercom/device/mi3gw/a/b;

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090457
    .end annotation
.end field

.field rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ca
    .end annotation
.end field

.field private z:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method static synthetic B3(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->n()Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lcom/ifengyu/intercom/p/j0;->x(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic C3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->m()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/talk/http/entity/TempGroup;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;->C3(J)Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupDetailFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method private synthetic E3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->d2()V

    return-void
.end method

.method private synthetic G3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;->s3()Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method private synthetic I3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic K3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->o()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/p/j0;->c(J)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->m3()V

    return-void
.end method

.method private synthetic M3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic O3(ILcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->o()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/p/j0;->c(J)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->n()Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p0, p1}, Lcom/ifengyu/intercom/p/j0;->x(ILjava/lang/String;)V

    return-void
.end method

.method private P3()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->A0()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->z0()V

    return-void
.end method

.method private Q3()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v2, 0x7f11018a

    .line 5
    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const-string v2, "mipoc"

    .line 6
    invoke-static {v2}, Lcom/ifengyu/intercom/p/j0;->m(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->F(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v2, 0x7f1100bd

    const/4 v3, 0x2

    new-instance v4, Lcom/ifengyu/intercom/device/mi3gw/fragment/h2;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/h2;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;)V

    .line 7
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v2, 0x7f110049

    new-instance v3, Lcom/ifengyu/intercom/device/mi3gw/fragment/b2;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/b2;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;)V

    .line 8
    invoke-virtual {v0, v1, v2, v1, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 9
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private R3(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v2, 0x7f110439

    .line 5
    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const-string v2, "mipoc"

    .line 6
    invoke-static {v2}, Lcom/ifengyu/intercom/p/j0;->n(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->F(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v2, 0x7f1100bd

    const/4 v3, 0x2

    new-instance v4, Lcom/ifengyu/intercom/device/mi3gw/fragment/a2;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/a2;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;)V

    .line 7
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v2, 0x7f110049

    new-instance v3, Lcom/ifengyu/intercom/device/mi3gw/fragment/l2;

    invoke-direct {v3, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/l2;-><init>(I)V

    .line 8
    invoke-virtual {v0, v1, v2, v1, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f120100

    .line 9
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private g3([Lcom/ifengyu/talk/models/OperatorMsgUser;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    .line 3
    invoke-virtual {v4}, Lcom/ifengyu/talk/models/OperatorMsgUser;->getErrCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4
    sget-object v6, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->n:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    invoke-virtual {v6}, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->a()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 5
    invoke-virtual {v4}, Lcom/ifengyu/talk/models/OperatorMsgUser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v6

    invoke-virtual {v4}, Lcom/ifengyu/talk/models/OperatorMsgUser;->getAcc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ifengyu/talk/f/a0;->g(Ljava/lang/String;)Lcom/shanlitech/et/model/User;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 8
    invoke-virtual {v6}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object v5

    .line 9
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    invoke-virtual {v4}, Lcom/ifengyu/talk/models/OperatorMsgUser;->getAcc()Ljava/lang/String;

    move-result-object v5

    .line 11
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 12
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u3001"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private h3()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->n()Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/z1;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/z1;

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 5
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/d2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/d2;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;)V

    sget-object v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/m2;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/m2;

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private i3(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    const-string v1, "mipoc"

    .line 2
    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/n/a;->K(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 4
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/x1;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/x1;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;I)V

    new-instance p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment$b;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment$b;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;)V

    .line 5
    invoke-interface {v0, v1, p1}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private j3()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c0080

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900a1

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 4
    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/c2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/c2;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private k3()Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0085

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09004f

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const/high16 v2, 0x41800000    # 16.0f

    .line 3
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v3

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->setRadiusAndShadow(IIIF)V

    .line 4
    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/j2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/j2;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private l3()Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00cf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0904a0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->z:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const v1, 0x7f090126

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->A:Landroid/widget/LinearLayout;

    const v1, 0x7f090292

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->B:Landroid/widget/LinearLayout;

    const v1, 0x7f090127

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->C:Landroid/widget/TextView;

    const v1, 0x7f090293

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->D:Landroid/widget/TextView;

    const v1, 0x7f09005f

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->E:Landroid/widget/TextView;

    const v1, 0x7f0901f9

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 9
    iget-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->z:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v4

    const v5, 0x3e19999a    # 0.15f

    invoke-virtual {v2, v3, v4, v5}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->setRadiusAndShadow(IIF)V

    .line 10
    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/g2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/g2;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private m3()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    const-string v1, "mipoc"

    .line 2
    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/n/a;->K(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 4
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    sget-object v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/i2;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/i2;

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment$a;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;)V

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private n3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->F:Lcom/ifengyu/intercom/device/mi3gw/a/b;

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/f2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/f2;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    return-void
.end method

.method private o3()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->n()Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->q()Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->q()Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->n()Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v2, 0x7f080151

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/k2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/k2;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v2, 0x7f0800fe

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->n(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/e2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/e2;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/a/b;

    const v2, 0x7f0c00dd

    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->m()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/ifengyu/intercom/device/mi3gw/a/b;-><init>(Landroidx/fragment/app/Fragment;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->F:Lcom/ifengyu/intercom/device/mi3gw/a/b;

    .line 9
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->j3()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/i;->i0(Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->F:Lcom/ifengyu/intercom/device/mi3gw/a/b;

    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->l3()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/i;->l(Landroid/view/View;)I

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->F:Lcom/ifengyu/intercom/device/mi3gw/a/b;

    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->k3()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/i;->i(Landroid/view/View;)I

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->F:Lcom/ifengyu/intercom/device/mi3gw/a/b;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/16 v2, 0x64

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/16 v2, 0xb4

    invoke-virtual {v0, v3, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressViewEndTarget(ZI)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setDistanceToTriggerSync(I)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-array v2, v3, [I

    const v3, 0x7f060065

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/y1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/y1;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    .line 19
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->n3()V

    return-void
.end method

.method public static synthetic p3(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->P3()V

    return-void
.end method

.method static synthetic q3(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->G(Landroid/content/Context;)Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v0

    .line 2
    invoke-interface {v0, p0}, Lcom/ifengyu/intercom/database/a/e;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p0

    return-object p0
.end method

.method private synthetic r3(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getAgreedProtocolVersion()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->Q3()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->i3(I)V

    :goto_0
    return-void
.end method

.method private synthetic t3(ILcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-le p2, p1, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->R3(I)V

    :cond_0
    return-void
.end method

.method private synthetic v3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->w3()Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method private synthetic x3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->w3()Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method private synthetic z3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment;->y3()Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method


# virtual methods
.method public synthetic A3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->z3(Landroid/view/View;)V

    return-void
.end method

.method public D0(J)V
    .locals 0

    return-void
.end method

.method public synthetic D3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->C3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public E(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected E2()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->h3()V

    return-void
.end method

.method public varargs F([J)V
    .locals 0

    return-void
.end method

.method public synthetic F3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->E3(Landroid/view/View;)V

    return-void
.end method

.method public G0()V
    .locals 0

    return-void
.end method

.method public H(Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 0

    return-void
.end method

.method public synthetic H3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->G3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic J3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->I3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public K(Lcom/ifengyu/talk/models/OperatorMsgModel;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getOprName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MODE_ONE_ADD_GROUPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f1101d8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getAcc()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v4, 0x7f110118

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getFailList()[Lcom/ifengyu/talk/models/OperatorMsgUser;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const p1, 0x7f110119

    .line 4
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    goto/16 :goto_4

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getFailList()[Lcom/ifengyu/talk/models/OperatorMsgUser;

    move-result-object p1

    array-length v5, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, p1, v6

    .line 7
    invoke-virtual {v7}, Lcom/ifengyu/talk/models/OperatorMsgUser;->getAcc()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 8
    invoke-virtual {v7}, Lcom/ifengyu/talk/models/OperatorMsgUser;->getErrCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 9
    sget-object v9, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->n:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    invoke-virtual {v9}, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->a()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 10
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->y(I)V

    goto :goto_1

    .line 11
    :cond_1
    sget-object v9, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->o:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    invoke-virtual {v9}, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->a()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 12
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ifengyu/talk/f/c0;->d()Lcom/shanlitech/et/model/GroupList;

    move-result-object v8

    .line 13
    invoke-virtual {v7}, Lcom/ifengyu/talk/models/OperatorMsgUser;->getGid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/shanlitech/et/model/GroupList;->getGroup(J)Lcom/shanlitech/et/model/Group;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 14
    invoke-static {v7}, Lcom/ifengyu/talk/d;->e(Lcom/shanlitech/et/model/Group;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u3001"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 15
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-static {v4}, Lcom/ifengyu/library/utils/s;->y(I)V

    goto/16 :goto_4

    .line 18
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1103b5

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 19
    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 20
    :cond_5
    invoke-static {v4}, Lcom/ifengyu/library/utils/s;->y(I)V

    goto/16 :goto_4

    .line 21
    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getOprName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MODE_CREATE_GROUP_ACK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v4, 0x7f1101e2

    if-eqz v0, :cond_b

    .line 22
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getErrCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 23
    sget-object v5, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->h:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    invoke-virtual {v5}, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->a()I

    move-result v5

    if-eq v0, v5, :cond_a

    sget-object v5, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->n:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    invoke-virtual {v5}, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->a()I

    move-result v5

    if-ne v0, v5, :cond_7

    goto :goto_2

    .line 24
    :cond_7
    sget-object v1, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->b:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    invoke-virtual {v1}, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->a()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 25
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getFailList()[Lcom/ifengyu/talk/models/OperatorMsgUser;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->g3([Lcom/ifengyu/talk/models/OperatorMsgUser;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const p1, 0x7f11014e

    .line 27
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_8
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 28
    invoke-static {v4, v0}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 29
    :cond_9
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getFailList()[Lcom/ifengyu/talk/models/OperatorMsgUser;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->g3([Lcom/ifengyu/talk/models/OperatorMsgUser;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 31
    invoke-static {v4, v0}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 32
    :cond_a
    :goto_2
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->y(I)V

    goto/16 :goto_4

    .line 33
    :cond_b
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getOprName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MODE_ENTER_GROUP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 34
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getErrCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 35
    sget-object v1, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->h:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    invoke-virtual {v1}, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->a()I

    move-result v1

    if-eq v0, v1, :cond_10

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->o:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    invoke-virtual {v1}, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->a()I

    move-result v1

    if-ne v0, v1, :cond_c

    goto :goto_3

    .line 36
    :cond_c
    sget-object v1, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->b:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    invoke-virtual {v1}, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->a()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 37
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getFailList()[Lcom/ifengyu/talk/models/OperatorMsgUser;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->g3([Lcom/ifengyu/talk/models/OperatorMsgUser;)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const p1, 0x7f110030

    .line 39
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_d
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 40
    invoke-static {v4, v0}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 41
    :cond_e
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getFailList()[Lcom/ifengyu/talk/models/OperatorMsgUser;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->g3([Lcom/ifengyu/talk/models/OperatorMsgUser;)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f1103df

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 43
    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_f
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 44
    invoke-static {v4, v0}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_10
    :goto_3
    const p1, 0x7f1101e0

    .line 45
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    :cond_11
    :goto_4
    return-void
.end method

.method public L(Lcom/ifengyu/intercom/models/NetDeviceModel;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    :cond_0
    return-void
.end method

.method public L0()V
    .locals 0

    return-void
.end method

.method public synthetic L3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->K3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public M0(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->E:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->F:Lcom/ifengyu/intercom/device/mi3gw/a/b;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const v0, 0x7f11011c

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->F:Lcom/ifengyu/intercom/device/mi3gw/a/b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic N3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->M3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public O0()V
    .locals 0

    return-void
.end method

.method public P(J)V
    .locals 0

    return-void
.end method

.method public R0(J)V
    .locals 0

    return-void
.end method

.method public S()V
    .locals 0

    return-void
.end method

.method public X0(J)V
    .locals 0

    return-void
.end method

.method public Y(J)V
    .locals 0

    return-void
.end method

.method public a1(J)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public d0(Lcom/ifengyu/talk/http/entity/TempGroup;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->z:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->z:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 4
    iget-object v3, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v3, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->C:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/ifengyu/talk/d;->d(Lcom/ifengyu/talk/http/entity/TempGroup;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->A:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->C:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 9
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/talk/http/entity/TempGroup;

    .line 10
    iget-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->B:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->D:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/ifengyu/talk/d;->d(Lcom/ifengyu/talk/http/entity/TempGroup;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->B:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->D:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method protected d2()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->start(Landroid/content/Context;)V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->addListener(Lcom/ifengyu/intercom/device/mi3gw/c/e0;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->b()Lcom/ifengyu/talk/f/b0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/b0;->addListener(Lcom/ifengyu/talk/h/b;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->o3()V

    return-object v0
.end method

.method public varargs h1([J)V
    .locals 0

    return-void
.end method

.method public i0(J)V
    .locals 0

    return-void
.end method

.method public varargs k0([J)V
    .locals 0

    return-void
.end method

.method public k1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const v0, 0x7f1102dd

    .line 2
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method public l0(J)V
    .locals 0

    return-void
.end method

.method public o0()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->removeListener(Lcom/ifengyu/intercom/device/mi3gw/c/e0;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->b()Lcom/ifengyu/talk/f/b0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/b0;->removeListener(Lcom/ifengyu/talk/h/b;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/k;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->P3()V

    return-void
.end method

.method public p(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public r(J)V
    .locals 0

    return-void
.end method

.method public synthetic s3(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->r3(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method

.method public t(Lcom/ifengyu/talk/models/HistoryMsgModel;)V
    .locals 0

    return-void
.end method

.method public varargs t0([J)V
    .locals 0

    return-void
.end method

.method public t1(J)V
    .locals 0

    return-void
.end method

.method public synthetic u3(ILcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->t3(ILcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V

    return-void
.end method

.method public w0()V
    .locals 0

    return-void
.end method

.method public synthetic w3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->v3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic y3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->x3(Landroid/view/View;)V

    return-void
.end method
