.class public Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;
.super Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;
.source "DolphinRelayFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/adapter/d$a;


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/UserChannel;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

.field private k:Lcom/ifengyu/intercom/ui/adapter/d;

.field private l:I

.field private m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

.field mProgressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100239
    .end annotation
.end field

.field mRvRelay:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100238
    .end annotation
.end field

.field mTvEmptyView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10016a
    .end annotation
.end field

.field private n:I

.field private o:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

.field private p:Lcom/ifengyu/intercom/MiTalkiApp;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/UserChannel;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/zhy/a/a/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->n:I

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->g()Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->o:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/MiTalkiApp;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->q:Ljava/util/List;

    return-void
.end method

.method public static a(ZI)Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "is_first_channel"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "version_mcu"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->g(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->o:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)Lcom/ifengyu/intercom/ui/setting/UserChannel;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    return-object p1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Lcom/ifengyu/intercom/MiTalkiApp;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/MiTalkiApp;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Lcom/zhy/a/a/c/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->r:Lcom/zhy/a/a/c/a;

    return-object v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->j:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Lcom/ifengyu/intercom/ui/adapter/d;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->k:Lcom/ifengyu/intercom/ui/adapter/d;

    return-object v0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Lcom/ifengyu/intercom/ui/setting/UserChannel;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    return-object v0
.end method

.method private g(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 6

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f09006f

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const v2, 0x7f0900c6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const v1, 0x7f09006c

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$6;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const v2, 0x7f090079

    new-instance v3, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$5;

    invoke-direct {v3, p0, v0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$5;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const-wide/16 v6, 0x2710

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f09020a

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->d:I

    const/high16 v1, 0x1030000

    if-ge v0, v1, :cond_2

    const v0, 0x7f09021f

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/network/a/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iput v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->l:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->l:I

    const-string v2, ""

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->e(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->f:Z

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$2;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)V

    invoke-static {v0, v6, v7}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->d:I

    const v1, 0x1030001

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iput v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->l:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->l:I

    const-string v2, ""

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->e(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->f:Z

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$3;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)V

    invoke-static {v0, v6, v7}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 4

    sget v0, Lcom/ifengyu/intercom/b/w;->a:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const v0, 0x7f09021e

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    iput-object p3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {p3}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/Long;)V

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->a(Z)V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFragmentVisibleChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->d()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b()V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->g:Ljava/lang/String;

    const-string v1, "onFragmentFirstVisible"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Landroid/view/View;ILcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 4

    iput p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->n:I

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {p3}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/Long;)V

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->f(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method

.method protected b(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/ifengyu/intercom/b/w;->a:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->j:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->j:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/ifengyu/intercom/b/w;->a:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->j:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->j:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0
.end method

.method protected c(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->j:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->j:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->k:Lcom/ifengyu/intercom/ui/adapter/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/d;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->r:Lcom/zhy/a/a/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->r:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/c/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected d(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->q:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->l:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->mRvRelay:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->mTvEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->r:Lcom/zhy/a/a/c/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->r:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/c/a;->notifyDataSetChanged()V

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->f:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->q:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->l:I

    const-string v2, ""

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->e(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0
.end method

.method protected e(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->j:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->d()Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->j:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->r:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0, v1}, Lcom/zhy/a/a/c/a;->notifyItemChanged(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->o:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_1
    return-void
.end method

.method public f()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0900b7

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->d:I

    const/high16 v1, 0x1030000

    if-ge v0, v1, :cond_2

    const v0, 0x7f09021f

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f09020a

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    const v0, 0x7f090222

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.action.RELAY_INSERT_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "channelNum"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected f(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->n:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->r:Lcom/zhy/a/a/c/a;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->n:I

    invoke-virtual {v0, v1}, Lcom/zhy/a/a/c/a;->notifyItemRemoved(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->o:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->delete(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public f(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 7

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f09006f

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0900e4

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f09006c

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;)V

    const v2, 0x7f0900d6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$4;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/q$b;)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->show()V

    return-void
.end method

.method protected g(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    sget v1, Lcom/ifengyu/intercom/b/w;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c(I)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e(I)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d(I)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->r:Lcom/zhy/a/a/c/a;

    invoke-virtual {v1, v2}, Lcom/zhy/a/a/c/a;->notifyItemChanged(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->j:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->d()Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->j:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->j:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/ifengyu/intercom/b/w;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->r:Lcom/zhy/a/a/c/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/zhy/a/a/c/a;->notifyItemInserted(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->r:Lcom/zhy/a/a/c/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/zhy/a/a/c/a;->notifyItemInserted(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->o:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->insertOrReplace(Ljava/lang/Object;)J

    goto/16 :goto_0

    :cond_5
    move-object v1, v0

    goto/16 :goto_1
.end method

.method protected h(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->l:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->mRvRelay:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->mTvEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->r:Lcom/zhy/a/a/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->r:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/c/a;->notifyDataSetChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->f:Z

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->l:I

    const-string v2, ""

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->e(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->j:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->k:Lcom/ifengyu/intercom/ui/adapter/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->j:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->d()Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/d;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x1

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    if-nez p3, :cond_1

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->g:Ljava/lang/String;

    const-string v1, "result data is null..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    const-string v0, "relayInfo"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    sget-object v1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->g:Ljava/lang/String;

    const-string v2, "send relay insert...."

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/util/List;)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->b(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_0

    if-ne p2, v3, :cond_4

    if-nez p3, :cond_3

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->g:Ljava/lang/String;

    const-string v1, "result data is null..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "relayInfo"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->g:Ljava/lang/String;

    const-string v2, "send relay modify...."

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->c(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const-string v0, "relayInfo"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->d(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto/16 :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "section_number"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->i:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v0, 0x7f04009b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->mRvRelay:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    new-instance v2, Lcom/ifengyu/intercom/ui/adapter/WrapContentLinearLayoutManager;

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ifengyu/intercom/ui/adapter/WrapContentLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->h:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/ifengyu/intercom/ui/adapter/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->k:Lcom/ifengyu/intercom/ui/adapter/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->k:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/ui/adapter/d;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/adapter/d$a;)V

    new-instance v1, Lcom/zhy/a/a/c/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->k:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-direct {v1, v2}, Lcom/zhy/a/a/c/a;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->r:Lcom/zhy/a/a/c/a;

    new-instance v1, Landroid/view/View;

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-static {v4}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0f00b7

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->r:Lcom/zhy/a/a/c/a;

    invoke-virtual {v2, v1}, Lcom/zhy/a/a/c/a;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->mRvRelay:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setFootOrHeaderNum(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->mRvRelay:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->r:Lcom/zhy/a/a/c/a;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->onDestroyView()V

    return-void
.end method

.method public receiveChannelResponse(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->j:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->j:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->c()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->g:Ljava/lang/String;

    const-string v1, "relay fragment receiveChannelResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    goto :goto_0
.end method
