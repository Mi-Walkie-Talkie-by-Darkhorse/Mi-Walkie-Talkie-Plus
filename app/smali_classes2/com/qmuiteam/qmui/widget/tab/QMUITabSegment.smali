.class public Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;
.super Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;
.source "QMUITabSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$b;,
        Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$c;,
        Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;,
        Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$e;,
        Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$d;
    }
.end annotation


# instance fields
.field private q:I

.field private r:Landroidx/viewpager/widget/ViewPager;

.field private s:Landroidx/viewpager/widget/a;

.field private t:Landroid/database/DataSetObserver;

.field private u:Landroidx/viewpager/widget/ViewPager$h;

.field private v:Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$b;

.field private w:Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->q:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->q:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->q:I

    return-void
.end method

.method static synthetic F(Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->setViewPagerScrollState(I)V

    return-void
.end method

.method static synthetic G(Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->r:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private setViewPagerScrollState(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->q:I

    if-nez p1, :cond_0

    .line 2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->d:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->l:Landroid/animation/Animator;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v2}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->D(IZZ)V

    .line 4
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->d:I

    :cond_0
    return-void
.end method


# virtual methods
.method H(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->s:Landroidx/viewpager/widget/a;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->C()V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->C()V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_2

    .line 5
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->j:Lcom/qmuiteam/qmui/widget/tab/b;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->s:Landroidx/viewpager/widget/a;

    invoke-virtual {v3, p1}, Landroidx/viewpager/widget/a;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/tab/b;->d(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/tab/b;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/tab/b;->a(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->o(Lcom/qmuiteam/qmui/widget/tab/QMUITab;)Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-super {p0}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->z()V

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->r:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_4

    if-lez v0, :cond_4

    .line 8
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, v0, v1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->D(IZZ)V

    :cond_4
    return-void
.end method

.method I(Landroidx/viewpager/widget/a;ZZ)V
    .locals 2
    .param p1    # Landroidx/viewpager/widget/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->s:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->t:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/a;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->s:Landroidx/viewpager/widget/a;

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    .line 4
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->t:Landroid/database/DataSetObserver;

    if-nez p3, :cond_1

    .line 5
    new-instance p3, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$c;

    invoke-direct {p3, p0, p2}, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$c;-><init>(Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;Z)V

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->t:Landroid/database/DataSetObserver;

    .line 6
    :cond_1
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->t:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 7
    :cond_2
    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->H(Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .locals 2
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->r:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->u:Landroidx/viewpager/widget/ViewPager$h;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$h;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->w:Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->r:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$g;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->v:Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->removeOnTabSelectedListener(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;)V

    .line 10
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->v:Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$b;

    :cond_2
    if-eqz p1, :cond_6

    .line 11
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->r:Landroidx/viewpager/widget/ViewPager;

    .line 12
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->u:Landroidx/viewpager/widget/ViewPager$h;

    if-nez v0, :cond_3

    .line 13
    new-instance v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$d;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$d;-><init>(Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->u:Landroidx/viewpager/widget/ViewPager$h;

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->u:Landroidx/viewpager/widget/ViewPager$h;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$h;)V

    .line 15
    new-instance v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$e;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$e;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->v:Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$b;

    .line 16
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->addOnTabSelectedListener(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;)V

    .line 17
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p0, v0, p2, p3}, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->I(Landroidx/viewpager/widget/a;ZZ)V

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->w:Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;

    if-nez v0, :cond_5

    .line 20
    new-instance v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;

    invoke-direct {v0, p0, p2}, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;-><init>(Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;Z)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->w:Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;

    .line 21
    :cond_5
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->w:Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;

    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;->a(Z)V

    .line 22
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->w:Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$g;)V

    goto :goto_0

    .line 23
    :cond_6
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->r:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, v1, p1, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->I(Landroidx/viewpager/widget/a;ZZ)V

    :goto_0
    return-void
.end method

.method protected y()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->q:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
