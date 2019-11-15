.class public Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SelectDeviceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;,
        Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;
    }
.end annotation


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/adapter/m;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/node/ConnectionConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

.field private d:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

.field leftBackIv:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c3
    .end annotation
.end field

.field leftCancelBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10033d
    .end annotation
.end field

.field mFabLayout:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000cc
    .end annotation
.end field

.field mTvEmptyView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10016a
    .end annotation
.end field

.field pagerTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100244
    .end annotation
.end field

.field private q:Lcom/ifengyu/intercom/ui/widget/dialog/q;

.field private r:Landroid/os/Handler;

.field rightManageBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10033c
    .end annotation
.end field

.field rightManagerIv:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10033e
    .end annotation
.end field

.field rvSelectDevice:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100169
    .end annotation
.end field

.field private s:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

.field private t:Z

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field unbindDeviceBtn:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10016b
    .end annotation
.end field

.field private v:Z

.field private w:Lcom/ifengyu/intercom/ui/adapter/m$a;

.field private x:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->v:Z

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->w:Lcom/ifengyu/intercom/ui/adapter/m$a;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$5;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$5;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->x:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->d:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    return-object p1
.end method

.method private a(ILcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f090077

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f090086

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f09006c

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->dismiss()V

    :cond_0
    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;

    invoke-direct {v2, p0, p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/q$b;)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->show()V

    return-void
.end method

.method private a(ILcom/ifengyu/intercom/node/ConnectionConfiguration;Z)V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    invoke-direct {v0, p0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;-><init>(Landroid/app/Activity;Z)V

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;ILcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->a(Lcom/ifengyu/intercom/ui/widget/dialog/ab$a;)Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->show()V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 8

    const/4 v3, 0x1

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->b()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v0}, Lcom/ifengyu/intercom/node/a/d;->b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    invoke-virtual {v7, v0}, Lcom/ifengyu/intercom/node/a/d;->b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;ILcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(ILcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;ILcom/ifengyu/intercom/node/ConnectionConfiguration;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(ILcom/ifengyu/intercom/node/ConnectionConfiguration;Z)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->b()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/node/a/d;->b(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->s:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    return-object p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a:Lcom/ifengyu/intercom/ui/adapter/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/adapter/m;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->pagerTitle:Landroid/widget/TextView;

    const v1, 0x7f09014c

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftBackIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->unbindDeviceBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->mFabLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->d:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    return-object v0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/node/a/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    :cond_0
    iget-object v0, v0, Lcom/ifengyu/intercom/node/a/d;->d:Lcom/ifengyu/intercom/node/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rvSelectDevice:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/WrapContentLinearLayoutManager;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/adapter/WrapContentLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->d:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->d:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->b()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    :cond_1
    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/m;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v0}, Lcom/ifengyu/intercom/ui/adapter/m;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a:Lcom/ifengyu/intercom/ui/adapter/m;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rvSelectDevice:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rvSelectDevice:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->mTvEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rvSelectDevice:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a:Lcom/ifengyu/intercom/ui/adapter/m;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->w:Lcom/ifengyu/intercom/ui/adapter/m$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/m;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/adapter/m$a;)V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/ui/adapter/m;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a:Lcom/ifengyu/intercom/ui/adapter/m;

    return-object v0
.end method

.method private e()Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v2, 0x7f09006c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const v2, 0x7f090079

    new-instance v3, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$6;

    invoke-direct {v3, p0, v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$6;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Landroid/bluetooth/BluetoothAdapter;)V

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "SelectDeviceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->s:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    return-object v0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->t:Z

    return v0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->v:Z

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const v5, 0x7f0901b5

    const v3, 0x7f0901b3

    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftBackIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->mFabLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->unbindDeviceBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->u:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->u:Ljava/util/ArrayList;

    :goto_1
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->u:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a:Lcom/ifengyu/intercom/ui/adapter/m;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/m;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/ui/adapter/m;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->notifyDataSetChanged()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftBackIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->mFabLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->unbindDeviceBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/m;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->notifyDataSetChanged()V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->u:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->u:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->notifyDataSetChanged()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v0, v2, 0x1

    :goto_6
    move v2, v0

    goto :goto_5

    :cond_6
    if-nez v2, :cond_7

    const v0, 0x7f090177

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;-><init>(Landroid/app/Activity;Z)V

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->a(Lcom/ifengyu/intercom/ui/widget/dialog/ab$a;)Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->show()V

    goto/16 :goto_0

    :sswitch_5
    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->v:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.FROM_DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "device_list_page"

    const-string v1, "scanNewDeviceBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_6

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f1000cc -> :sswitch_5
        0x7f10016b -> :sswitch_4
        0x7f10033c -> :sswitch_3
        0x7f10033d -> :sswitch_2
        0x7f10033e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040045

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->r:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->d()V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->x:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->r:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->x:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->x:Landroid/content/ServiceConnection;

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    const-string v0, "SelectDeviceActivity"

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/k;->a(Lcom/ifengyu/intercom/node/i$a;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->e()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStop()V

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/k;->b(Lcom/ifengyu/intercom/node/i$a;)V

    return-void
.end method
