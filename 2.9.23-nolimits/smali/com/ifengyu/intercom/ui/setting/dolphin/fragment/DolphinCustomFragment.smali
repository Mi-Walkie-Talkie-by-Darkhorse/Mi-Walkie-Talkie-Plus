.class public Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;
.super Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;
.source "DolphinCustomFragment.java"


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

.field private i:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

.field private j:Lcom/ifengyu/intercom/MiTalkiApp;

.field private k:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

.field private l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

.field private m:I

.field mProgressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100237
    .end annotation
.end field

.field mRvCustom:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100236
    .end annotation
.end field

.field mTvEmptyView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10016a
    .end annotation
.end field

.field private n:I

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/UserChannel;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/zhy/a/a/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->h:Ljava/util/List;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->g()Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->i:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->j:Lcom/ifengyu/intercom/MiTalkiApp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->m:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->n:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->o:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->m:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)Lcom/ifengyu/intercom/ui/setting/UserChannel;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    return-object p1
.end method

.method public static a(ZI)Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "is_first_channel"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "version_mcu"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->i:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->g(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/MiTalkiApp;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->j:Lcom/ifengyu/intercom/MiTalkiApp;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->h(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Lcom/zhy/a/a/c/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->p:Lcom/zhy/a/a/c/a;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->i(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->k:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/ui/setting/UserChannel;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    return-object v0
.end method

.method private g(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 10

    const/4 v7, 0x1

    new-instance v5, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f040078

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a()Landroid/view/View;

    move-result-object v4

    const v0, 0x7f1001f0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1001f1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1001f3

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1001f4

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f1001f2

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f09004f

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v9

    invoke-static {v9}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$9;

    invoke-direct {v0, p0, v5, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$9;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$10;

    invoke-direct {v0, p0, v5, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$10;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$11;

    invoke-direct {v0, p0, v5, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$11;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$12;

    invoke-direct {v0, p0, v5}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$12;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    return-void
.end method

.method private h(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 6

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const v2, 0x7f0900c4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const v1, 0x7f09006b

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$2;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const v2, 0x7f090078

    new-instance v3, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$13;

    invoke-direct {v3, p0, v0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$13;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    return-void
.end method

.method private i(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/p;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    move-object v0, v1

    :goto_1
    new-instance v1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$4;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->a(Lcom/ifengyu/intercom/ui/widget/dialog/p$c;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->show()V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-direct {v1, v0, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/p;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/o;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    move-object v0, v1

    :goto_2
    new-instance v1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->a(Lcom/ifengyu/intercom/ui/widget/dialog/o$c;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->show()V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-direct {v1, v0, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/o;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 8

    const-wide/16 v6, 0x1f40

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ah()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f090206

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/network/a/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$1;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->j:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iput v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->n:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->n:I

    const-string v2, ""

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(IILjava/lang/String;I)V

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->n:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->n:I

    const-string v3, ""

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->f:Z

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$6;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$6;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)V

    invoke-static {v0, v6, v7}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->d:I

    const v1, 0x1030001

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iput v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->n:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->n:I

    const-string v2, ""

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(IILjava/lang/String;I)V

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->n:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->n:I

    const-string v3, ""

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->f:Z

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$7;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$7;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)V

    invoke-static {v0, v6, v7}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method

.method protected a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->j:Lcom/ifengyu/intercom/MiTalkiApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->mRvCustom:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->mTvEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->p:Lcom/zhy/a/a/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->p:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/c/a;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->f:Z

    return-void
.end method

.method protected a(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->a(Z)V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->g:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b()V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->g:Ljava/lang/String;

    const-string v1, "onFragmentFirstVisible"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected b(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->c:Z

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

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->k:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->k:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

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

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->k:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->k:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0
.end method

.method protected c(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->k:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->k:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->p:Lcom/zhy/a/a/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->p:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/c/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected d(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->g:Ljava/lang/String;

    const-string v1, "onQueryChannelSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->o:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->o:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->n:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->j:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->mRvCustom:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->mTvEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->p:Lcom/zhy/a/a/c/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->p:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/c/a;->notifyDataSetChanged()V

    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->f:Z

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->n:I

    const-string v2, ""

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(IILjava/lang/String;I)V

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->n:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->n:I

    const-string v3, ""

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0
.end method

.method protected e(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 3

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->g:Ljava/lang/String;

    const-string v1, "onModifyChannelSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->k:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->d()Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->k:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->p:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0, v1}, Lcom/zhy/a/a/c/a;->notifyItemChanged(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->i:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_1
    return-void
.end method

.method public f()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0900b6

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ah()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f090206

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    const v0, 0x7f09021e

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->i(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0
.end method

.method protected f(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->g:Ljava/lang/String;

    const-string v1, "onDeleteChannelSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->h:Ljava/util/List;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->m:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->p:Lcom/zhy/a/a/c/a;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->m:I

    invoke-virtual {v0, v1}, Lcom/zhy/a/a/c/a;->notifyItemRemoved(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->i:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->delete(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public f(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/x;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/x;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$3;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/x;->a(Lcom/ifengyu/intercom/ui/widget/dialog/x$a;)Lcom/ifengyu/intercom/ui/widget/dialog/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/x;->show()V

    return-void
.end method

.method protected g(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 4

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->g:Ljava/lang/String;

    const-string v1, "onInsertChannelSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->USERDEFINE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c(I)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->p:Lcom/zhy/a/a/c/a;

    invoke-virtual {v1, v2}, Lcom/zhy/a/a/c/a;->notifyItemChanged(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->k:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->d()Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->k:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->k:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->p:Lcom/zhy/a/a/c/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/zhy/a/a/c/a;->notifyItemInserted(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->p:Lcom/zhy/a/a/c/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/zhy/a/a/c/a;->notifyItemInserted(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->i:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->k:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v0, 0x7f040092

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->mRvCustom:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    new-instance v2, Lcom/ifengyu/intercom/ui/adapter/WrapContentLinearLayoutManager;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ifengyu/intercom/ui/adapter/WrapContentLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$8;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0400bf

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->h:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$8;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Landroid/content/Context;ILjava/util/List;)V

    new-instance v2, Lcom/zhy/a/a/c/a;

    invoke-direct {v2, v1}, Lcom/zhy/a/a/c/a;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->p:Lcom/zhy/a/a/c/a;

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

    const v2, 0x7f0f00b5

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->p:Lcom/zhy/a/a/c/a;

    invoke-virtual {v2, v1}, Lcom/zhy/a/a/c/a;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->mRvCustom:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setFootOrHeaderNum(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->mRvCustom:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->p:Lcom/zhy/a/a/c/a;

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->k:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->k:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->c()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->g:Ljava/lang/String;

    const-string v1, "custom fragment receiveChannelResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    goto :goto_0
.end method
