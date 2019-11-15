.class public Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "MyFeedBackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;,
        Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/bean/FeedBackBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View;

.field private q:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const-string v0, "MyFeedBackActivity"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->s:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0900c8

    const v1, 0x7f020128

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->a(ZZII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/FeedBackBean;

    iget v0, v0, Lcom/ifengyu/intercom/bean/FeedBackBean;->feedbackId:I

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;I)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/a/a;->a(ILcom/ifengyu/intercom/a/b/b;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    return-object v0
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->q:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b(I)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->q:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;

    return-object v0
.end method

.method private d()V
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->r:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->s:I

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/a/a;->b(IILcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->r:I

    return v0
.end method

.method private e()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->q:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->q:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setLoadMoreListener(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->s:I

    return v0
.end method

.method private f()V
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$4;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$4;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->f()V

    return-void
.end method

.method private q()V
    .locals 2

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09010d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f100105

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    const v0, 0x7f100106

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->d()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1000c3
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04002f

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->q()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->c:Ljava/util/List;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->e()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->r:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->s:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->d()V

    return-void
.end method
