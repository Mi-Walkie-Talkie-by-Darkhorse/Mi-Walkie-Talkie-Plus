.class public Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$g;,
        Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$h;
    }
.end annotation


# instance fields
.field private A:Lcom/ifengyu/intercom/lite/h/h0;

.field private B:Lcom/qmuiteam/qmui/widget/dialog/b;

.field private C:Lcom/ifengyu/intercom/ui/adapter/n$d;

.field private D:Landroid/content/ServiceConnection;

.field leftBackIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090419
    .end annotation
.end field

.field leftCancelBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090417
    .end annotation
.end field

.field mFabLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09008b
    .end annotation
.end field

.field mTvEmptyView:Lcom/ifengyu/intercom/lite/widget/EmptyView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090157
    .end annotation
.end field

.field pagerTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09041d
    .end annotation
.end field

.field private q:Lcom/ifengyu/intercom/ui/adapter/n;

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/node/ConnectionConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field rightManageBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090418
    .end annotation
.end field

.field rightManagerIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09041b
    .end annotation
.end field

.field rvSelectDevice:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09035c
    .end annotation
.end field

.field private s:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$g;

.field private t:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

.field private u:Landroid/os/Handler;

.field unbindDeviceBtn:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090254
    .end annotation
.end field

.field private v:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

.field private w:Z

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Lcom/qmuiteam/qmui/widget/dialog/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->y:Z

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$e;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->C:Lcom/ifengyu/intercom/ui/adapter/n$d;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$f;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->D:Landroid/content/ServiceConnection;

    return-void
.end method

.method private A()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rvSelectDevice:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/WrapContentLinearLayoutManager;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/adapter/WrapContentLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->t:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->a()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->r:Ljava/util/ArrayList;

    new-instance v2, Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-direct {v2, p0, v1, v0}, Lcom/ifengyu/intercom/ui/adapter/n;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rvSelectDevice:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rvSelectDevice:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->mTvEmptyView:Lcom/ifengyu/intercom/lite/widget/EmptyView;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rvSelectDevice:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Landroidx/recyclerview/widget/c;

    invoke-direct {v1}, Landroidx/recyclerview/widget/c;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->C:Lcom/ifengyu/intercom/ui/adapter/n$d;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/n;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/adapter/n$d;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->D()V

    return-void
.end method

.method private B()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/h/h0;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/event/a;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/y;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/y;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/ifengyu/intercom/lite/utils/j;->a(Ljava/lang/Object;Ljava/lang/Class;Lio/reactivex/functions/Consumer;)V

    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/event/b;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/p;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/p;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/ifengyu/intercom/lite/utils/j;->a(Ljava/lang/Object;Ljava/lang/Class;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method private C()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->pagerTitle:Landroid/widget/TextView;

    const v1, 0x7f110241

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftCancelBtn:Landroid/widget/TextView;

    const v1, 0x7f0600c3

    invoke-static {p0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private D()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/ui/activity/u;->a:Lcom/ifengyu/intercom/ui/activity/u;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/r;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/r;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/v;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/v;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private E()V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->B:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v2, 0x7f1100fd

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->y()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v2, 0x7f110093

    const/4 v3, 0x2

    new-instance v4, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$c;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v2, 0x7f110043

    new-instance v3, Lcom/ifengyu/intercom/ui/activity/t;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/activity/t;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    invoke-virtual {v0, v1, v2, v1, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->B:Lcom/qmuiteam/qmui/widget/dialog/b;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->B:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->B:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private F()V
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1102d8

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v1, Lcom/ifengyu/intercom/ui/activity/q;->a:Lcom/ifengyu/intercom/ui/activity/q;

    const/4 v2, 0x0

    const v3, 0x7f110093

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/s;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/s;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    const v3, 0x7f11035f

    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/lite/models/DeviceModel;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(I)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(I)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Z)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/lite/models/DeviceModel;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/lite/models/DeviceModel;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->t:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    return-object p1
.end method

.method static synthetic a(Landroid/content/Context;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n()Lcom/ifengyu/intercom/lite/f/e;

    move-result-object p0

    invoke-interface {p0}, Lcom/ifengyu/intercom/lite/f/e;->a()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private a(ILcom/ifengyu/intercom/node/ConnectionConfiguration;Z)V
    .locals 4

    new-instance p3, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1102d9

    invoke-virtual {p3, v0}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v0, Lcom/ifengyu/intercom/ui/activity/w;->a:Lcom/ifengyu/intercom/ui/activity/w;

    const/4 v1, 0x0

    const v2, 0x7f110093

    const/4 v3, 0x2

    invoke-virtual {p3, v1, v2, v3, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p3, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/z;

    invoke-direct {v0, p0, p2, p1}, Lcom/ifengyu/intercom/ui/activity/z;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;I)V

    const p1, 0x7f11035f

    invoke-virtual {p3, v1, p1, v1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p3, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const p1, 0x7f1200fc

    invoke-virtual {p3, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->f(I)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;ILcom/ifengyu/intercom/node/ConnectionConfiguration;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(ILcom/ifengyu/intercom/node/ConnectionConfiguration;Z)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->u:Landroid/os/Handler;

    return-object p0
.end method

.method private b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 10

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result v8

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/q/d;->c(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v3, p1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/q/d;->c(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->d(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->y:Z

    return p1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->v:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    return-object p1
.end method

.method private c(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 4

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->v:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->t:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->a()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/e/f;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->e()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p1, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Ljava/lang/Class;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->b()V

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->v()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->u:Landroid/os/Handler;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/x;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/activity/x;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->x()V

    return-void
.end method

.method static synthetic c(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/node/q/d;->b(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private d(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    return-void
.end method

.method static synthetic d(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->w:Z

    return p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->t:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    return-object p0
.end method

.method private f(I)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->z:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->z:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    const v0, 0x7f030003

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->d(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/dialog/list/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ifengyu/intercom/lite/dialog/list/d;-><init>(Landroid/content/Context;Z)V

    :goto_0
    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/lite/dialog/list/d;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Lcom/ifengyu/intercom/lite/dialog/list/d;->c(Z)Lcom/ifengyu/intercom/lite/dialog/list/d;

    invoke-virtual {v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v1, Lcom/ifengyu/intercom/lite/dialog/list/d;

    new-instance p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/lite/dialog/list/d;->a(Lcom/ifengyu/intercom/lite/dialog/list/d$c;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    const p1, 0x7f120104

    invoke-virtual {v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->z:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->y:Z

    return p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p()V

    return-void
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->E()V

    return-void
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->o()Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/lite/h/h0;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->A:Lcom/ifengyu/intercom/lite/h/h0;

    return-object p0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->w()Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->v:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    return-object p0
.end method

.method private w()Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f1100a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v1, 0x7f1100b9

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelectDeviceActivity"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private x()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->b()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->t:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->a()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/node/q/d;->b(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private y()Landroid/text/SpannableString;
    .locals 10

    const v0, 0x7f1101c3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1101c2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v9, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$d;

    const v3, 0x7f0600c3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result v5

    const v3, 0x7f0600c5

    invoke-static {v3}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$d;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;IIII)V

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Lcom/qmuiteam/qmui/span/d;->b(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x11

    invoke-virtual {v2, v9, v0, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method private z()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->z:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->z:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/ifengyu/intercom/lite/event/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/event/a;->a()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p()V

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f1100a8

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->f(I)V

    goto :goto_0

    :cond_2
    const p1, 0x7f1100bd

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->f(I)V

    goto :goto_0

    :cond_3
    const p1, 0x7f1100aa

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->f(I)V

    goto :goto_0

    :cond_4
    const p1, 0x7f1100a9

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->f(I)V

    :goto_0
    return-void
.end method

.method public synthetic a(Lcom/ifengyu/intercom/lite/event/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/event/b;->a()I

    move-result p1

    sget v0, Lcom/ifengyu/intercom/lite/event/b;->c:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->z()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/d0;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->E()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/h/h0;->d(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public synthetic a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;ILcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p3}, Landroidx/appcompat/app/d;->dismiss()V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->y:Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->v()V

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->t:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    invoke-virtual {p3}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->a()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->b()V

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/ifengyu/intercom/node/q/d;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/ifengyu/intercom/lite/e/f;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/e/f;

    move-result-object p3

    invoke-virtual {p3}, Lno/nordicsemi/android/ble/u1;->e()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/h/h0;->b()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->b()V

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/network/d/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    new-instance p4, Lcom/ifengyu/intercom/ui/activity/k0;

    invoke-direct {p4, p0, p1}, Lcom/ifengyu/intercom/ui/activity/k0;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/ifengyu/intercom/ui/activity/a0;

    invoke-direct {p1, p0, p2}, Lcom/ifengyu/intercom/ui/activity/a0;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;I)V

    const-wide/16 p2, 0x3e8

    invoke-static {p1, p2, p3}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/intercom/f/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/l0;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/d0;->a(IZ)V

    const-class p1, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic a(Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/adapter/n;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/adapter/n;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public synthetic b(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 2

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->y:Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->v()V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, p1

    :goto_0
    if-ltz p2, :cond_4

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->t:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->a()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->b()V

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/q/d;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/e/f;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->e()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->b()V

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/network/d/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/j0;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/activity/j0;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p()V

    const p1, 0x7f110361

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->d(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftCancelBtn:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftBackIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->mFabLayout:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->unbindDeviceBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public synthetic e(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p()V

    const v0, 0x7f110361

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->d(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRemoved(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f1102c0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftBackIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->mFabLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftCancelBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->unbindDeviceBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->x:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->x:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-virtual {p1, v2}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    goto/16 :goto_4

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    :sswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v1, 0x7f1102c2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->x:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    goto/16 :goto_4

    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_4

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    goto :goto_4

    :sswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftCancelBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftBackIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->mFabLayout:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->unbindDeviceBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-virtual {p1, v3}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    goto :goto_4

    :sswitch_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    const p1, 0x7f110275

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->F()V

    goto :goto_4

    :sswitch_5
    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->y:Z

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.ifengyu.intercom.FROM_DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_8
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09008b -> :sswitch_5
        0x7f090254 -> :sswitch_4
        0x7f090417 -> :sswitch_3
        0x7f090418 -> :sswitch_2
        0x7f090419 -> :sswitch_1
        0x7f09041b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c004e

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    new-instance p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$h;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$h;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->u:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->C()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->A()V

    new-instance p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$g;

    invoke-direct {p1, p0, v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$g;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->s:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$g;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->D:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->B()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->u:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->D:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->D:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/lite/utils/j;->b(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->s:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$g;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/j;->a(Lcom/ifengyu/intercom/node/h;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :goto_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->w()Z

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->s:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$g;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/j;->b(Lcom/ifengyu/intercom/node/h;)V

    return-void
.end method

.method protected v()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->v()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->o()Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method
