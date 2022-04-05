.class public Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$f;,
        Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$e;
    }
.end annotation


# instance fields
.field private final q:Ljava/lang/String;

.field private r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/bean/FeedBackBean;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/view/View;

.field private u:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$e;

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const-string v0, "MyFeedBackActivity"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->w:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->s:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->f(I)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->t:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->e(I)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$e;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->u:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$e;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->v:I

    return p0
.end method

.method private e(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->u:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$e;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->t:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->w:I

    return p0
.end method

.method private f(I)V
    .locals 3

    invoke-static {p0}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const p1, 0x7f110248

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_0
    const v0, 0x7f1100f5

    const v2, 0x7f08013e

    invoke-virtual {p0, v1, v1, v0, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/FeedBackBean;

    iget v0, v0, Lcom/ifengyu/intercom/bean/FeedBackBean;->feedbackId:I

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;I)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/g/a;->a(ILcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->w()V

    return-void
.end method

.method private w()V
    .locals 4

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$d;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private x()V
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->v:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->w:I

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/g/a;->b(IILcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method private y()V
    .locals 2

    const v0, 0x7f090419

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09041d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f11015a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0902cc

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    const v0, 0x7f09040f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->t:Landroid/view/View;

    return-void
.end method

.method private z()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$e;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->u:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$e;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->r:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setLoadMoreListener(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->x()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090419

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0039

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->y()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->s:Ljava/util/List;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->z()V

    const/16 p1, 0xa

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->v:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->w:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->x()V

    return-void
.end method
