.class public Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;
.super Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;
.source "QMUITabSegment2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2$b;,
        Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2$a;
    }
.end annotation


# instance fields
.field private q:I

.field private r:Landroidx/viewpager2/widget/ViewPager2;

.field private s:Landroidx/viewpager2/widget/ViewPager2$i;

.field private t:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;->q:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;->q:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;->q:I

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;->setViewPagerScrollState(I)V

    return-void
.end method

.method private setViewPagerScrollState(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;->q:I

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
    invoke-virtual {p0, p1, v1, v2}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a(IZZ)V

    .line 4
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->d:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;->q:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setupWithViewPager(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 2
    .param p1    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;->r:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;->s:Landroidx/viewpager2/widget/ViewPager2$i;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->b(Landroidx/viewpager2/widget/ViewPager2$i;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;->t:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->removeOnTabSelectedListener(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;)V

    .line 6
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;->t:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;

    :cond_1
    if-eqz p1, :cond_3

    .line 7
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;->r:Landroidx/viewpager2/widget/ViewPager2;

    .line 8
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;->s:Landroidx/viewpager2/widget/ViewPager2$i;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2$a;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2$a;-><init>(Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;->s:Landroidx/viewpager2/widget/ViewPager2$i;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;->s:Landroidx/viewpager2/widget/ViewPager2$i;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroidx/viewpager2/widget/ViewPager2$i;)V

    .line 11
    new-instance v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2$b;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2$b;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;->t:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;

    .line 12
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->addOnTabSelectedListener(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$e;)V

    .line 13
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;->r:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, p1, v0, v1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a(IZZ)V

    goto :goto_0

    .line 15
    :cond_3
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment2;->r:Landroidx/viewpager2/widget/ViewPager2;

    :goto_0
    return-void
.end method