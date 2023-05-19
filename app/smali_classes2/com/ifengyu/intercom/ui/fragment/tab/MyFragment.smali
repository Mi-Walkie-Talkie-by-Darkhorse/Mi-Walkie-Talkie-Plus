.class public Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "MyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Lcom/ifengyu/intercom/ui/MainActivity;

.field mCivPortrait:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09041d
    .end annotation
.end field

.field titleBar:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048b
    .end annotation
.end field

.field userName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09041c
    .end annotation
.end field

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method static synthetic A3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lcom/ifengyu/intercom/p/d0;->r0(Z)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->F()V

    return-void
.end method

.method private synthetic B3(ILcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/p/j0;->a()V

    const-string p2, "app"

    .line 3
    invoke-static {p2, p1}, Lcom/ifengyu/intercom/p/d0;->B0(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->h3()V

    return-void
.end method

.method public static D3()Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;
    .locals 2

    const-string v0, "MyFragment"

    const-string v1, "newInstance"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;-><init>()V

    return-object v0
.end method

.method private E3()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/ifengyu/intercom/n/a;->r()Lio/reactivex/Observable;

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

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/r;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/r;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;)V

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment$c;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment$c;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;)V

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private F3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110188

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/ui/fragment/tab/s;->a:Lcom/ifengyu/intercom/ui/fragment/tab/s;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/z;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/z;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    const p1, 0x7f1103c2

    .line 4
    invoke-virtual {v0, v2, p1, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f120100

    .line 5
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private G3(I)V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v2, 0x7f110439

    .line 4
    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->j3()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->F(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v2, Lcom/ifengyu/intercom/ui/fragment/tab/u;->a:Lcom/ifengyu/intercom/ui/fragment/tab/u;

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 6
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/tab/w;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/w;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;I)V

    const p1, 0x7f110049

    .line 7
    invoke-virtual {v0, v1, p1, v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f120100

    .line 8
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private H3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/service/b/a;->c()Lcom/ifengyu/intercom/service/b/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getMd5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/service/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->h3()V

    return-void
.end method

.method private h3()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/service/b/a;->c()Lcom/ifengyu/intercom/service/b/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ifengyu/intercom/service/b/a;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1103ee

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->p()I

    move-result v0

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "en_us"

    goto :goto_0

    :cond_1
    const-string v3, "zh_cn"

    :goto_0
    const-string v4, "android"

    invoke-interface {v1, v4, v0, v2, v3}, Lcom/ifengyu/intercom/n/a;->T(Ljava/lang/String;IILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 7
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/y;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/y;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;)V

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment$b;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;)V

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private i3()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    const-string v1, "app"

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

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/t;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/t;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;)V

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment$a;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;)V

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private j3()Landroid/text/SpannableString;
    .locals 14

    const v0, 0x7f110436

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f11031d

    .line 2
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f11031c

    .line 3
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f11043a

    .line 4
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v3, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment$d;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment$d;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;IIII)V

    const v11, 0x7f0600d5

    .line 8
    invoke-static {v11}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/qmuiteam/qmui/span/d;->k(I)V

    const v12, 0x7f0600d7

    .line 9
    invoke-static {v12}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/qmuiteam/qmui/span/d;->l(I)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/16 v13, 0x11

    invoke-virtual {v10, v3, v5, v4, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 11
    new-instance v3, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment$e;

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment$e;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;IIII)V

    .line 12
    invoke-static {v11}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/qmuiteam/qmui/span/d;->k(I)V

    .line 13
    invoke-static {v12}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/qmuiteam/qmui/span/d;->l(I)V

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v10, v3, v4, v0, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v10
.end method

.method private k3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getMode()I

    move-result v0

    const v1, 0x7f120100

    const v2, 0x7f11041c

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v4, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/m/b/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/ifengyu/intercom/m/b/b;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/m/b/b;->F(Lcom/ifengyu/intercom/http/entity/VersionInfo;)Lcom/ifengyu/intercom/m/b/b;

    .line 4
    invoke-virtual {v0, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/m/b/b;

    .line 5
    invoke-virtual {v0, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/m/b/b;

    const v4, 0x7f110184

    sget-object v6, Lcom/ifengyu/intercom/ui/fragment/tab/v;->a:Lcom/ifengyu/intercom/ui/fragment/tab/v;

    .line 6
    invoke-virtual {v0, v5, v4, v3, v6}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/m/b/b;

    new-instance v3, Lcom/ifengyu/intercom/ui/fragment/tab/q;

    invoke-direct {v3, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/q;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    .line 7
    invoke-virtual {v0, v5, v2, v5, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/m/b/b;

    .line 8
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 10
    new-instance v0, Lcom/ifengyu/intercom/m/b/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ifengyu/intercom/m/b/b;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/m/b/b;->F(Lcom/ifengyu/intercom/http/entity/VersionInfo;)Lcom/ifengyu/intercom/m/b/b;

    .line 12
    invoke-virtual {v0, v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/m/b/b;

    .line 13
    invoke-virtual {v0, v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/m/b/b;

    new-instance v3, Lcom/ifengyu/intercom/ui/fragment/tab/x;

    invoke-direct {v3, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/x;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    .line 14
    invoke-virtual {v0, v5, v2, v5, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/m/b/b;

    .line 15
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private l3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->titleBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qmuiteam/qmui/util/k;->f(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/p/r;->a(Landroid/app/Activity;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qmuiteam/qmui/util/k;->f(Landroid/content/Context;)I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->userName:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->getUserInfo()Lcom/ifengyu/library/account/UserInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/ifengyu/library/account/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->mCivPortrait:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->getUserInfo()Lcom/ifengyu/library/account/UserInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/ifengyu/library/account/UserInfo;->avatar:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/ifengyu/library/c/a;->f(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->z:Landroid/view/View;

    const v1, 0x7f09041b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->z:Landroid/view/View;

    const v1, 0x7f090179

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->z:Landroid/view/View;

    const v1, 0x7f09039b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->z:Landroid/view/View;

    const v1, 0x7f090416

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->z:Landroid/view/View;

    const v1, 0x7f090419

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->z:Landroid/view/View;

    const v1, 0x7f09041a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->z:Landroid/view/View;

    const v1, 0x7f090418

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->z:Landroid/view/View;

    const v1, 0x7f090417

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->z:Landroid/view/View;

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->E3()V

    return-void
.end method

.method private synthetic m3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check App Version Info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyFragment"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->isHasNewVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->k3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    :cond_0
    return-void
.end method

.method private synthetic o3(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPrivacyInfo success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyFragment"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "app"

    .line 3
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->t(Ljava/lang/String;)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->G3(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->h3()V

    :goto_0
    return-void
.end method

.method static synthetic q3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic r3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ifengyu/intercom/p/b0;->C(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->F3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    return-void

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->H3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    return-void
.end method

.method private synthetic t3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->H3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    return-void
.end method

.method private synthetic v3(Lcom/ifengyu/library/account/UserInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "MyFragment"

    const-string v1, "querySelfInfo success"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->T()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcom/ifengyu/library/account/UserInfo;->nickname:Ljava/lang/String;

    const-string v2, "nickname"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget-object v1, p1, Lcom/ifengyu/library/account/UserInfo;->avatar:Ljava/lang/String;

    const-string v2, "avatar"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    iget-object v1, p1, Lcom/ifengyu/library/account/UserInfo;->phone:Ljava/lang/String;

    const-string v2, "phone"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    iget-object v1, p1, Lcom/ifengyu/library/account/UserInfo;->email:Ljava/lang/String;

    const-string v2, "email"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget v1, p1, Lcom/ifengyu/library/account/UserInfo;->gender:I

    const-string v2, "gender"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->getUserInfo()Lcom/ifengyu/library/account/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p1, Lcom/ifengyu/library/account/UserInfo;->avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/ifengyu/library/account/UserInfo;->avatar:Ljava/lang/String;

    .line 12
    iget-object v1, p1, Lcom/ifengyu/library/account/UserInfo;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/ifengyu/library/account/UserInfo;->email:Ljava/lang/String;

    .line 13
    iget v1, p1, Lcom/ifengyu/library/account/UserInfo;->gender:I

    iput v1, v0, Lcom/ifengyu/library/account/UserInfo;->gender:I

    .line 14
    iget-object v1, p1, Lcom/ifengyu/library/account/UserInfo;->nickname:Ljava/lang/String;

    iput-object v1, v0, Lcom/ifengyu/library/account/UserInfo;->nickname:Ljava/lang/String;

    .line 15
    iget-object v1, p1, Lcom/ifengyu/library/account/UserInfo;->phone:Ljava/lang/String;

    iput-object v1, v0, Lcom/ifengyu/library/account/UserInfo;->phone:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/ifengyu/library/account/UserCache;->saveUserInfo(Lcom/ifengyu/library/account/UserInfo;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->userName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/ifengyu/library/account/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->mCivPortrait:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    iget-object p1, p1, Lcom/ifengyu/library/account/UserInfo;->avatar:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/ifengyu/library/c/a;->f(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic x3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic y3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->H3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    return-void
.end method


# virtual methods
.method public synthetic C3(ILcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->B3(ILcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method protected E2()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->i3()V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->z:Landroid/view/View;

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->l3()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->z:Landroid/view/View;

    return-object v0
.end method

.method public synthetic n3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->m3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

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

    const-string p2, "setting_had_modify_portrait"

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-string v1, "setting_had_modify_name"

    .line 3
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->mCivPortrait:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    invoke-static {p3}, Lcom/ifengyu/library/utils/s;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->userName:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    const-string v0, "MyFragment"

    const-string v1, "onAttach"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->onAttach(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/MainActivity;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->A:Lcom/ifengyu/intercom/ui/MainActivity;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090066

    if-eq p1, v0, :cond_3

    const v0, 0x7f090179

    if-eq p1, v0, :cond_2

    const v0, 0x7f09039b

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 2
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->A:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->R()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setting_my_name"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x5

    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 6
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->A:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.ifengyu.intercom.action.USE_HELP"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11039d

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://m.ifengyu.com/resourcesDev/resources/en/productList.html"

    goto :goto_0

    :cond_0
    const-string v1, "https://m.ifengyu.com/resourcesDev/resources/productList.html"

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/device/lite/WebActivity;->N(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->A:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 11
    :pswitch_4
    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->z3()Lcom/ifengyu/intercom/ui/fragment/AboutFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/RadioExamFragment;->j3()Lcom/ifengyu/intercom/ui/fragment/RadioExamFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->A:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/DiscoveryActivity;->start(Landroid/content/Context;)V

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/AppSettingFragment;->w3()Lcom/ifengyu/intercom/ui/fragment/AppSettingFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090417
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "MyFragment"

    const-string v0, "onCreate"

    .line 2
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    return-void
.end method

.method public synthetic p3(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->o3(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V

    return-void
.end method

.method public synthetic s3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->r3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic u3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->t3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic w3(Lcom/ifengyu/library/account/UserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->v3(Lcom/ifengyu/library/account/UserInfo;)V

    return-void
.end method

.method public synthetic z3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->y3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
