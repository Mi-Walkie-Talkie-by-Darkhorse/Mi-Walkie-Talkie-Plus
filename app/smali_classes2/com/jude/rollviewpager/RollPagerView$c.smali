.class final Lcom/jude/rollviewpager/RollPagerView$c;
.super Landroid/os/Handler;
.source "RollPagerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jude/rollviewpager/RollPagerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jude/rollviewpager/RollPagerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jude/rollviewpager/RollPagerView;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jude/rollviewpager/RollPagerView$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jude/rollviewpager/RollPagerView;

    invoke-virtual {v0}, Lcom/jude/rollviewpager/RollPagerView;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->b(Lcom/jude/rollviewpager/RollPagerView;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lcom/jude/rollviewpager/RollPagerView;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->e(Lcom/jude/rollviewpager/RollPagerView;)Lcom/jude/rollviewpager/RollPagerView$a;

    move-result-object v3

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->d(Lcom/jude/rollviewpager/RollPagerView;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jude/rollviewpager/a;

    invoke-interface {v3, v2, v1}, Lcom/jude/rollviewpager/RollPagerView$a;->a(ILcom/jude/rollviewpager/a;)V

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->b(Lcom/jude/rollviewpager/RollPagerView;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->f(Lcom/jude/rollviewpager/RollPagerView;)V

    :cond_0
    return-void

    :cond_1
    move v2, v1

    goto :goto_0
.end method
