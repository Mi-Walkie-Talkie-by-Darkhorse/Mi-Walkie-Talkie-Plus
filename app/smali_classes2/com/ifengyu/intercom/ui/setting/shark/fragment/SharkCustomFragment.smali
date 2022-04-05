.class public Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;
.super Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;

# interfaces
.implements Lcom/ifengyu/intercom/ui/adapter/o$d;


# static fields
.field private static final u:Ljava/lang/String;


# instance fields
.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

.field private m:Lcom/ifengyu/intercom/ui/adapter/o;

.field mProgressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090311
    .end annotation
.end field

.field mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09035d
    .end annotation
.end field

.field mTvEmptyView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090470
    .end annotation
.end field

.field private n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field private o:I

.field private p:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

.field private q:Lcom/ifengyu/intercom/MiTalkiApp;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lb/d/a/a/e/a;

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:I

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->b()Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->p:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->q:Lcom/ifengyu/intercom/MiTalkiApp;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->r:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->h(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->p:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

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

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lcom/ifengyu/intercom/MiTalkiApp;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->q:Lcom/ifengyu/intercom/MiTalkiApp;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lb/d/a/a/e/a;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->s:Lb/d/a/a/e/a;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lcom/ifengyu/intercom/ui/adapter/o;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->m:Lcom/ifengyu/intercom/ui/adapter/o;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object p0
.end method

.method private h(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f110096

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f1100f1

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$e;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$e;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/f;)V

    const v2, 0x7f110093

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$d;

    invoke-direct {v1, p0, v0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$d;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/f;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    const p1, 0x7f1100a0

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 1

    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->t:I

    const/4 p2, 0x3

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->e(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f110326

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    const p1, 0x7f1102b0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method protected a(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/a;->a(Z)V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFragmentVisibleChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->k()V

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->f()V

    :goto_0
    return-void
.end method

.method public b(Landroid/view/View;ILcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    iput p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:I

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->f(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    return-void
.end method

.method protected b(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 1

    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->s:Lb/d/a/a/e/a;

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRemoved(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->p:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected b(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->t:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getStateMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->m:Lcom/ifengyu/intercom/ui/adapter/o;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/adapter/o;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->s:Lb/d/a/a/e/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->m:Lcom/ifengyu/intercom/ui/adapter/o;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/adapter/o;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->s:Lb/d/a/a/e/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected c(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->w()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->s:Lb/d/a/a/e/a;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->s:Lb/d/a/a/e/a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected c(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->u:Ljava/lang/String;

    const-string v1, "onStateUpdateSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->t:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getStateMode()I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->m:Lcom/ifengyu/intercom/ui/adapter/o;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/adapter/o;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->s:Lb/d/a/a/e/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->m:Lcom/ifengyu/intercom/ui/adapter/o;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/adapter/o;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->s:Lb/d/a/a/e/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected d(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->w()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->s:Lb/d/a/a/e/a;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->s:Lb/d/a/a/e/a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected e()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/a;->e()V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->u:Ljava/lang/String;

    const-string v1, "onFragmentFirstVisible"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected e(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->r:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/h0;->a()V

    return-void
.end method

.method protected f(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->q:Lcom/ifengyu/intercom/MiTalkiApp;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/MiTalkiApp;->c(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->mTvEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->r:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->s:Lb/d/a/a/e/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->j()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->j:Z

    return-void
.end method

.method public f(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f110096

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f110112

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const v1, 0x7f110093

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;)V

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    const v2, 0x7f11006b

    invoke-static {v2, v4}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$c;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$c;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/q$c;)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->show()V

    return-void
.end method

.method protected g(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 0

    return-void
.end method

.method public g(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "seal_action_modify_channel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "seal_action_modify_channel_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0xca

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public n()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f1100e2

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->j:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->U()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f11032d

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_3

    const v0, 0x7f110345

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "seal_action_insert_channel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:Ljava/util/List;

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->b(Ljava/util/List;)I

    move-result v1

    const-string v2, "seal_action_insert_channel_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xc9

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public o()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->U()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f11032d

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/network/d/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->q:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1100ce

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f08013e

    invoke-virtual {p0, v1, v1, v0, v2}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->a(ZZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->d(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->j:Z

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$b;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)V

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->w()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->m:Lcom/ifengyu/intercom/ui/adapter/o;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/adapter/o;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "customChannel:"

    const-string v1, "result data is null..."

    const-string v2, "customChannel"

    const/16 v3, 0xc9

    if-ne p1, v3, :cond_1

    if-nez p3, :cond_0

    sget-object p1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->u:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 p1, 0x7d1

    if-ne p2, p1, :cond_5

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz p1, :cond_5

    sget-object p2, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->u:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_0

    :cond_1
    const/16 v3, 0xca

    if-ne p1, v3, :cond_5

    const/16 p1, 0x7d2

    if-ne p2, p1, :cond_3

    if-nez p3, :cond_2

    sget-object p1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->u:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz p1, :cond_5

    sget-object p2, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->u:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->c(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x7d3

    if-ne p2, p1, :cond_4

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->b(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c00aa

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    new-instance p2, Lcom/ifengyu/intercom/ui/adapter/o;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->k:Ljava/util/List;

    invoke-direct {p2, p3, v0}, Lcom/ifengyu/intercom/ui/adapter/o;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->m:Lcom/ifengyu/intercom/ui/adapter/o;

    invoke-virtual {p2, p0}, Lcom/ifengyu/intercom/ui/adapter/o;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/adapter/o$d;)V

    new-instance p2, Lb/d/a/a/e/a;

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->m:Lcom/ifengyu/intercom/ui/adapter/o;

    invoke-direct {p2, p3}, Lb/d/a/a/e/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->s:Lb/d/a/a/e/a;

    new-instance p2, Landroid/view/View;

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p3, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p3, 0x7f060178

    invoke-static {p3}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->s:Lb/d/a/a/e/a;

    invoke-virtual {p3, p2}, Lb/d/a/a/e/a;->a(Landroid/view/View;)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setFootOrHeaderNum(I)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->s:Lb/d/a/a/e/a;

    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->onDestroyView()V

    return-void
.end method

.method public receiveChannelInfoOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->u:Ljava/lang/String;

    const-string v1, "receiveChannelInfoOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->x()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V

    :cond_2
    return-void
.end method

.method public receiveChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->u:Ljava/lang/String;

    const-string v1, "receiveChannelStateOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->x()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->l:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->b(Z)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    :cond_2
    return-void
.end method
