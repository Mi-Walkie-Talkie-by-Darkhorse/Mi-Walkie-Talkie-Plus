.class public Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;
.super Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;
.source "SharkCustomFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/adapter/n$b;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

.field private i:Lcom/ifengyu/intercom/ui/adapter/n;

.field private j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field private k:I

.field private l:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

.field private m:Lcom/ifengyu/intercom/MiTalkiApp;

.field mProgressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100239
    .end annotation
.end field

.field mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100272
    .end annotation
.end field

.field mTvEmptyView:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10016a
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/zhy/a/a/c/a;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:I

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->f()Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->m:Lcom/ifengyu/intercom/MiTalkiApp;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object p1
.end method

.method public static b(Z)Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "shark_arg_is_major_channel"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lcom/ifengyu/intercom/MiTalkiApp;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->m:Lcom/ifengyu/intercom/MiTalkiApp;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lcom/zhy/a/a/c/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    return-object v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lcom/ifengyu/intercom/ui/adapter/n;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->i:Lcom/ifengyu/intercom/ui/adapter/n;

    return-object v0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object v0
.end method

.method private h(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 6

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f09006f

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const v2, 0x7f0900c4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const v1, 0x7f09006c

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$5;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const v2, 0x7f090079

    new-instance v3, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$4;

    invoke-direct {v3, p0, v0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$4;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->p:I

    packed-switch v0, :pswitch_data_0

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f090205

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0901a4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->a(Z)V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->f:Ljava/lang/String;

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

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->f()V

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->d()V

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->b()V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->f:Ljava/lang/String;

    const-string v1, "onFragmentFirstVisible"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Landroid/view/View;ILcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    iput p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:I

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    return-void
.end method

.method protected b(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->d()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0, v1}, Lcom/zhy/a/a/c/a;->notifyItemChanged(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/c/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected b(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->p:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->p:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getStateMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->i:Lcom/ifengyu/intercom/ui/adapter/n;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/c/a;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->i:Lcom/ifengyu/intercom/ui/adapter/n;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/c/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected c(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g:Ljava/util/List;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:I

    invoke-virtual {v0, v1}, Lcom/zhy/a/a/c/a;->notifyItemRemoved(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;->delete(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected c(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->f:Ljava/lang/String;

    const-string v1, "onStateUpdateSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->p:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->p:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->p:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getStateMode()I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->i:Lcom/ifengyu/intercom/ui/adapter/n;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/c/a;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->i:Lcom/ifengyu/intercom/ui/adapter/n;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/c/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected d(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->d()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0, v1}, Lcom/zhy/a/a/c/a;->notifyItemChanged(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b()I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/c/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected e(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->m:Lcom/ifengyu/intercom/MiTalkiApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->mTvEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/c/a;->notifyDataSetChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->e:Z

    return-void
.end method

.method protected f(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/b/ab;->e()V

    return-void
.end method

.method public f(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "seal_action_modify_channel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "seal_action_modify_channel_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0xca

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public g()V
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f09020a

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/network/a/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$1;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->m:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0900a6

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f020128

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->a(ZZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->e(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->e:Z

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$2;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)V

    const-wide/16 v2, 0x2710

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method protected g(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 0

    return-void
.end method

.method public g(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
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

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;)V

    const v2, 0x7f09004b

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

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

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$3;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/q$b;)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->show()V

    return-void
.end method

.method public h()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0900b7

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f09020a

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    const v0, 0x7f090222

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "seal_action_insert_channel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "seal_action_insert_channel_index"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g:Ljava/util/List;

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->b(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xc9

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->d()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->i:Lcom/ifengyu/intercom/ui/adapter/n;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->f:Ljava/lang/String;

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

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_2

    if-nez p3, :cond_1

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->f:Ljava/lang/String;

    const-string v1, "result data is null..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x7d1

    if-ne p2, v0, :cond_0

    const-string v0, "customChannel"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customChannel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xca

    if-ne p1, v0, :cond_0

    const/16 v0, 0x7d2

    if-ne p2, v0, :cond_4

    if-nez p3, :cond_3

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->f:Ljava/lang/String;

    const-string v1, "result data is null..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "customChannel"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customChannel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->d(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x7d3

    if-ne p2, v0, :cond_5

    const-string v0, "customChannel"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->j:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->c(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->b(Z)V

    goto/16 :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x1

    const v0, 0x7f0400a0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/ifengyu/intercom/ui/adapter/n;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->i:Lcom/ifengyu/intercom/ui/adapter/n;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->i:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/ui/adapter/n;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/adapter/n$b;)V

    new-instance v1, Lcom/zhy/a/a/c/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->i:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-direct {v1, v2}, Lcom/zhy/a/a/c/a;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    new-instance v1, Landroid/view/View;

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0f0098

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    invoke-virtual {v2, v1}, Lcom/zhy/a/a/c/a;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    invoke-virtual {v1, v4}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setFootOrHeaderNum(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:Lcom/zhy/a/a/c/a;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->onDestroyView()V

    return-void
.end method

.method public receiveChannelInfoOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->f:Ljava/lang/String;

    const-string v1, "receiveChannelInfoOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V

    goto :goto_0
.end method

.method public receiveChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->f:Ljava/lang/String;

    const-string v1, "receiveChannelStateOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->b(Z)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    goto :goto_0
.end method
