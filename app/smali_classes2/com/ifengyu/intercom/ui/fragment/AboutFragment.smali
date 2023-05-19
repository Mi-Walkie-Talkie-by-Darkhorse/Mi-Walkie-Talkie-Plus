.class public Lcom/ifengyu/intercom/ui/fragment/AboutFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "AboutFragment.java"


# instance fields
.field aboutIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090013
    .end annotation
.end field

.field appVersionName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090012
    .end annotation
.end field

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private A3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110188

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/ui/fragment/e;->a:Lcom/ifengyu/intercom/ui/fragment/e;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/c;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/c;-><init>(Lcom/ifengyu/intercom/ui/fragment/AboutFragment;Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

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

.method private B3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
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

.method static synthetic g3(Lcom/ifengyu/intercom/ui/fragment/AboutFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/ui/fragment/AboutFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    return-void
.end method

.method private i3()V
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

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/g;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/g;-><init>(Lcom/ifengyu/intercom/ui/fragment/AboutFragment;)V

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 8
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/d;-><init>(Lcom/ifengyu/intercom/ui/fragment/AboutFragment;)V

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/AboutFragment$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment$b;-><init>(Lcom/ifengyu/intercom/ui/fragment/AboutFragment;)V

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private j3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
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

    sget-object v6, Lcom/ifengyu/intercom/ui/fragment/h;->a:Lcom/ifengyu/intercom/ui/fragment/h;

    .line 6
    invoke-virtual {v0, v5, v4, v3, v6}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/m/b/b;

    new-instance v3, Lcom/ifengyu/intercom/ui/fragment/f;

    invoke-direct {v3, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/f;-><init>(Lcom/ifengyu/intercom/ui/fragment/AboutFragment;Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

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

    new-instance v3, Lcom/ifengyu/intercom/ui/fragment/b;

    invoke-direct {v3, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/b;-><init>(Lcom/ifengyu/intercom/ui/fragment/AboutFragment;Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

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

.method private synthetic l3(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    return-void
.end method

.method private synthetic n3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check App Version Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->isHasNewVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->j3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f110385

    .line 5
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    :goto_0
    return-void
.end method

.method static synthetic p3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic q3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
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
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->A3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    return-void

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->B3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    return-void
.end method

.method private synthetic s3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->B3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    return-void
.end method

.method private synthetic u3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method static synthetic w3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic x3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->B3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    return-void
.end method

.method public static z3()Lcom/ifengyu/intercom/ui/fragment/AboutFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->k3()V

    return-object v0
.end method

.method protected k3()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v2, 0x7f11001b

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    const v3, 0x7f080151

    invoke-virtual {v0, v3, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/a;-><init>(Lcom/ifengyu/intercom/ui/fragment/AboutFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/library/utils/s;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->appVersionName:Landroid/widget/TextView;

    const v3, 0x7f11001c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->appVersionName:Landroid/widget/TextView;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/AboutFragment$a;

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x5

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment$a;-><init>(Lcom/ifengyu/intercom/ui/fragment/AboutFragment;JI)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic m3(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->l3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic o3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->n3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900ef,
            0x7f09052a,
            0x7f090528,
            0x7f090529
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900ef

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->N(Landroid/content/Context;)V

    goto :goto_0

    .line 3
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.ifengyu.intercom.action.ACTION_USER_POWER_CENTER"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->i3()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090528
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic r3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->q3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic t3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->s3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic v3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->u3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic y3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->x3(Lcom/ifengyu/intercom/http/entity/VersionInfo;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
