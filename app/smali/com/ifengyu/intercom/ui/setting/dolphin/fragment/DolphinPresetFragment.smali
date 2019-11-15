.class public Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;
.super Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;
.source "DolphinPresetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final g:Ljava/lang/String;

.field private static final h:[I

.field private static final i:[I


# instance fields
.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/UserChannel;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/UserChannel;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

.field private m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

.field mBtnActiveDevice:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10026c
    .end annotation
.end field

.field mLlActiveDeviceContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10026b
    .end annotation
.end field

.field mLlLongDistanceContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100269
    .end annotation
.end field

.field mRvPublic:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10026d
    .end annotation
.end field

.field mRvRemote:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10026a
    .end annotation
.end field

.field private n:Lcom/zhy/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zhy/a/a/a",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/UserChannel;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/zhy/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zhy/a/a/a",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/UserChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->g:Ljava/lang/String;

    const v0, 0x7f0a0010

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->c(I)[I

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->h:[I

    const v0, 0x7f0a000f

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->c(I)[I

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->i:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->k:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)Lcom/ifengyu/intercom/ui/setting/UserChannel;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;)Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    return-object v0
.end method

.method public static a(ZI)Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "is_first_channel"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "version_mcu"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected a(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->a(Z)V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->g:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->n:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->n:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->o:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->o:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method protected b()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b()V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->g:Ljava/lang/String;

    const-string v1, "onFragmentFirstVisible"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected b(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->c:Z

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

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

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

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0
.end method

.method protected c(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->m:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->n:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->n:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->o:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->o:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$4;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$4;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f10026c
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->onCreate(Landroid/os/Bundle;)V

    move v0, v1

    :goto_0
    sget-object v2, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->h:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->j:Ljava/util/List;

    new-instance v3, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    const v4, 0x7f090052

    new-array v5, v7, [Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->h:[I

    aget v5, v5, v0

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(IILjava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    sget-object v2, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->i:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->k:Ljava/util/List;

    new-instance v3, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    const v4, 0x7f090056

    new-array v5, v7, [Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->i:[I

    aget v5, v5, v0

    invoke-direct {v3, v0, v7, v4, v5}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(IILjava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const v8, 0x7f0400c0

    const/16 v7, 0x8

    const/4 v6, 0x5

    const/4 v5, 0x0

    const v0, 0x7f040099

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    const v0, 0x7f10026a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$1;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->j:Ljava/util/List;

    invoke-direct {v2, p0, v3, v8, v4}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$1;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->n:Lcom/zhy/a/a/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->n:Lcom/zhy/a/a/a;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const v0, 0x7f10026d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$2;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->k:Ljava/util/List;

    invoke-direct {v2, p0, v3, v8, v4}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$2;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->o:Lcom/zhy/a/a/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->o:Lcom/zhy/a/a/a;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->mLlActiveDeviceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->mLlLongDistanceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->mBtnActiveDevice:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->mLlActiveDeviceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->mLlLongDistanceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
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

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->g:Ljava/lang/String;

    const-string v1, "receiveChannelResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->c()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    goto :goto_0
.end method

.method public receiveParamResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$3;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    return-void
.end method
