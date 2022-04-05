.class public Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;
    }
.end annotation


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;

.field private b:Z

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/animation/Animation;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b:Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b:Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b:Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b:Z

    return p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->f:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method private d()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00ca

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c:Landroid/view/View;

    const v1, 0x7f090238

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c:Landroid/view/View;

    const v1, 0x7f09023c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->e:Landroid/widget/TextView;

    const v1, 0x7f1101c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010036

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->f:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c:Landroid/view/View;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;-><init>(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->g:I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c:Landroid/view/View;

    neg-int v0, v0

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->e:Landroid/widget/TextView;

    const v1, 0x7f1101c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b:Z

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c:Landroid/view/View;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->g:I

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b:Z

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b:Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->d:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->d:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->f:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->e:Landroid/widget/TextView;

    const p2, 0x7f1101ca

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;->e()V

    :cond_0
    return-void
.end method

.method public setLoadMoreListener(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;

    return-void
.end method
