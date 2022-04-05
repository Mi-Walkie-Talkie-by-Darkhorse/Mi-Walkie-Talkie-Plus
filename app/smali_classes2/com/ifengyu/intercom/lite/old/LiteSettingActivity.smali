.class public Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;
.super Lcom/ifengyu/intercom/lite/base/BaseActivity;


# static fields
.field private static final q:Ljava/lang/String;


# instance fields
.field m:[Ljava/lang/String;

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

.field mItemLocation:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f0
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

.field mItemTime:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090200
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

.field private n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

.field private o:I

.field private p:Lcom/ifengyu/intercom/lite/h/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/BaseActivity;-><init>()V

    const-string v0, "1\u5206\u949f"

    const-string v1, "3\u5206\u949f"

    const-string v2, "5\u5206\u949f"

    const-string v3, "10\u5206\u949f"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->m:[Ljava/lang/String;

    return-void
.end method

.method private A()V
    .locals 2

    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/h/h0;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->p:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->g()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$a;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->p:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->i()Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$b;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->p:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->j()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$c;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->p:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->k()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$d;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->p:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->n()V

    return-void
.end method

.method private B()V
    .locals 8

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/c/b/d;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemName:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/view/ItemView;->getValueText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5bf9\u8bb2\u673a\u540d\u79f0"

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v2, v0

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const-string v3, "\u5728\u6b64\u8f93\u5165\u5bf9\u8bb2\u673a\u540d\u79f0"

    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->b(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    invoke-virtual {v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    new-instance v4, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$g;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$g;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    const/4 v5, 0x0

    const v6, 0x7f110093

    const/4 v7, 0x2

    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    new-instance v4, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$f;

    invoke-direct {v4, p0, v0}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$f;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;Lcom/ifengyu/intercom/lite/c/b/d;)V

    const v6, 0x7f11009c

    invoke-virtual {v2, v5, v6, v5, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(F)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v4, 0x7f1200fc

    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->e()Landroid/widget/EditText;

    move-result-object v0

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x12

    invoke-direct {v4, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private C()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemLocation:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->toggle()V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "channel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    :cond_0
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 7

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const v2, 0x7f110177

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mTvChannelName:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySeq()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mEmptyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mContentBoard:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mTvChannelName:Landroid/widget/TextView;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySeq()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mEmptyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mContentBoard:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mTvReceiveFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mTvSendFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySendFreq()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mTvReceiveFreq:Landroid/widget/TextView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mTvSendFreq:Landroid/widget/TextView;

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/lite/utils/h;->a(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseActivity;->v()V

    return-void
.end method

.method private a([Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/lite/dialog/list/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/lite/dialog/list/d;-><init>(Landroid/content/Context;Z)V

    const-string v1, "\u53d1\u9001\u4f4d\u7f6e\u95f4\u9694"

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v1, v0

    check-cast v1, Lcom/ifengyu/intercom/lite/dialog/list/d;

    const-string v2, "\u9009\u62e9\u65f6\u95f4\uff0c\u5728\u89c4\u5b9a\u7684\u65f6\u95f4\u5185\u53ef\u81ea\u52a8\u53d1\u9001\u4f4d\u7f6e"

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/dialog/list/d;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    new-instance v2, Lcom/ifengyu/intercom/lite/old/q;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/old/q;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/dialog/list/d;->a(Lcom/ifengyu/intercom/lite/dialog/list/d$c;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/lite/dialog/list/d;->d(I)Lcom/ifengyu/intercom/lite/dialog/list/d;

    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/lite/dialog/list/d;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x7f1200fc

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseActivity;->v()V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)Lcom/ifengyu/intercom/lite/h/h0;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->p:Lcom/ifengyu/intercom/lite/h/h0;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseActivity;->w()V

    return-void
.end method

.method static synthetic z()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->q:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    iput p3, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->o:I

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemTime:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p2, p4}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901e7,
            0x7f0901f2,
            0x7f0901ec,
            0x7f0901f0,
            0x7f090200,
            0x7f090206,
            0x7f0901e9,
            0x7f0901f1,
            0x7f090205,
            0x7f0900a5,
            0x7f09022c
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-static {p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->a(Landroid/app/Activity;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lcom/ifengyu/intercom/lite/old/LiteVoiceSettingActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/ifengyu/intercom/lite/old/LiteUpgradeActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->m:[Ljava/lang/String;

    iget v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->o:I

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->a([Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->B()V

    goto :goto_0

    :sswitch_5
    invoke-static {p0}, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->C()V

    goto :goto_0

    :sswitch_7
    invoke-static {p0}, Lcom/ifengyu/intercom/lite/old/LiteBatchConfigurationActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_8
    invoke-static {p0}, Lcom/ifengyu/intercom/lite/old/LiteConfigFileActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->finish()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900a5 -> :sswitch_9
        0x7f0901e7 -> :sswitch_8
        0x7f0901e9 -> :sswitch_7
        0x7f0901f0 -> :sswitch_6
        0x7f0901f1 -> :sswitch_5
        0x7f0901f2 -> :sswitch_4
        0x7f090200 -> :sswitch_3
        0x7f090205 -> :sswitch_2
        0x7f090206 -> :sswitch_1
        0x7f09022c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/lite/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0034

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->x()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->y()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->A()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public x()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->a(Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    return-void
.end method

.method public y()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$e;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1102ce

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->f(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemLocation:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->toggle()V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemTime:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->m:[Ljava/lang/String;

    iget v2, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->o:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    return-void
.end method
