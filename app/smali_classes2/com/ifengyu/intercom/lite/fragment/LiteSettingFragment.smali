.class public Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;
.super Lcom/ifengyu/intercom/lite/base/e;
.source "LiteSettingFragment.java"


# static fields
.field private static final A:Ljava/lang/String;


# instance fields
.field mBtnUnbind:Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a5
    .end annotation
.end field

.field mContentBoard:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900eb
    .end annotation
.end field

.field mEmptyBoard:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090158
    .end annotation
.end field

.field mItemConfig:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901e7
    .end annotation
.end field

.field mItemDeploy:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901e9
    .end annotation
.end field

.field mItemId:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ec
    .end annotation
.end field

.field mItemMore:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f1
    .end annotation
.end field

.field mItemName:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f2
    .end annotation
.end field

.field mItemUpdate:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090205
    .end annotation
.end field

.field mItemVoice:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090206
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090426
    .end annotation
.end field

.field mTvChannelName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09045f
    .end annotation
.end field

.field mTvReceiveFreq:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090486
    .end annotation
.end field

.field mTvSendFreq:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090493
    .end annotation
.end field

.field private z:Lcom/ifengyu/intercom/lite/h/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/e;-><init>()V

    return-void
.end method

.method private C()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/h/h0;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->g()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/a1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/a1;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->i()Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/b1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/b1;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->j()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/c1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/c1;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->h()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$a;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->m()V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->n()V

    .line 8
    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/g/t;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/g/t;

    .line 9
    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/g/t;->e()Landroidx/lifecycle/p;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$b;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 10
    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/g/t;->b()V

    .line 11
    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/event/LiteEvent;

    new-instance v2, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$c;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$c;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/ifengyu/intercom/lite/utils/j;->a(Ljava/lang/Object;Ljava/lang/Class;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method private D()V
    .locals 8

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/d;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemName:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/view/ItemView;->getValueText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110098

    .line 3
    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v2, v0

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v3, 0x7f110279

    .line 4
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->e(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    .line 5
    invoke-virtual {v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    new-instance v4, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$g;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$g;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const v7, 0x7f110093

    .line 7
    invoke-virtual {v2, v6, v7, v5, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    new-instance v4, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$f;

    invoke-direct {v4, p0, v0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$f;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;Lcom/ifengyu/intercom/lite/c/b/d;)V

    const v7, 0x7f11009c

    .line 8
    invoke-virtual {v2, v6, v7, v6, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(F)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v4, 0x7f1200fc

    .line 10
    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->e()Landroid/widget/EditText;

    move-result-object v0

    new-array v4, v5, [Landroid/text/InputFilter;

    .line 12
    new-instance v5, Lcom/ifengyu/intercom/lite/utils/c;

    invoke-direct {v5}, Lcom/ifengyu/intercom/lite/utils/c;-><init>()V

    aput-object v5, v4, v6

    new-instance v5, Lcom/ifengyu/intercom/lite/utils/b;

    const/16 v6, 0xf

    invoke-direct {v5, v6}, Lcom/ifengyu/intercom/lite/utils/b;-><init>(I)V

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 14
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private E()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1102d8

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$e;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    const/4 v2, 0x0

    const v3, 0x7f110093

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$d;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    const v3, 0x7f11009c

    .line 4
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private F()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/e/f;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/e/f;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->e()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n()Lcom/ifengyu/intercom/lite/f/e;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/network/d/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/ifengyu/intercom/lite/fragment/z0;

    invoke-direct {v3, v1, v0}, Lcom/ifengyu/intercom/lite/fragment/z0;-><init>(Lcom/ifengyu/intercom/lite/f/e;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->b()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/f/e;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 15
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ifengyu/intercom/lite/f/e;->a(Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->F()V

    return-void
.end method

.method public static synthetic a(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->a(Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const v2, 0x7f110177

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mTvChannelName:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySeq()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mEmptyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mContentBoard:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mTvChannelName:Landroid/widget/TextView;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySeq()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mEmptyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mContentBoard:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mTvReceiveFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mTvSendFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySendFreq()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    sget-object p1, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mTvReceiveFreq:Landroid/widget/TextView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mTvSendFreq:Landroid/widget/TextView;

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/lite/utils/h;->a(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->t()V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)Lcom/ifengyu/intercom/lite/h/h0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "channel"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/h/h0;->g()Landroidx/lifecycle/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/p;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/d1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/d1;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1102ce

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->f(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    return-void
.end method

.method public synthetic a(Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemName:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemId:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->getDeviceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->t()V

    return-void
.end method

.method public synthetic b(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->y()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901e7,
            0x7f0901f2,
            0x7f0901ec,
            0x7f090206,
            0x7f0901e9,
            0x7f0901f1,
            0x7f090205,
            0x7f0900a5,
            0x7f09022c,
            0x7f0901e3
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->g()Landroidx/lifecycle/p;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/lite/LiteChannelActivity;->a(Landroid/content/Context;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    goto :goto_0

    .line 3
    :sswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->newInstance()Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->a(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    :sswitch_2
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->b(Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;)Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->a(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 5
    :sswitch_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->D()V

    goto :goto_0

    .line 6
    :sswitch_4
    invoke-static {}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->newInstance()Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->a(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 7
    :sswitch_5
    invoke-static {}, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->newInstance()Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->a(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 8
    :sswitch_6
    invoke-static {}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->newInstance()Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->a(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 9
    :sswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x8f03

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 10
    :sswitch_8
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->E()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900a5 -> :sswitch_8
        0x7f0901e3 -> :sswitch_7
        0x7f0901e7 -> :sswitch_6
        0x7f0901e9 -> :sswitch_5
        0x7f0901f1 -> :sswitch_4
        0x7f0901f2 -> :sswitch_3
        0x7f090205 -> :sswitch_2
        0x7f090206 -> :sswitch_1
        0x7f09022c -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/lite/utils/j;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->l()V

    return-void
.end method

.method protected p()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->B()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->C()V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->A()V

    return-object v0
.end method
