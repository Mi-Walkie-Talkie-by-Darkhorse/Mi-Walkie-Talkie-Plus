.class public Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "OffMapAddressSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;

.field private q:Landroid/view/View;

.field private r:Landroid/view/inputmethod/InputMethodManager;

.field private s:Lcom/ifengyu/intercom/network/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$3;-><init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->s:Lcom/ifengyu/intercom/network/a/d;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->r:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->q:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->c_()V

    const v0, 0x7f100115

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->d:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->d:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/j;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/adapter/j;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    const v0, 0x7f100113

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->a:Landroid/widget/EditText;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->r:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f1000fb

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->q:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->q:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->q:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->d:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;

    return-object v0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Lcom/ifengyu/intercom/network/a/d;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->s:Lcom/ifengyu/intercom/network/a/d;

    return-object v0
.end method


# virtual methods
.method protected c_()V
    .locals 2

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$4;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$4;-><init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000fb -> :sswitch_1
        0x7f100115 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->c()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->b:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
