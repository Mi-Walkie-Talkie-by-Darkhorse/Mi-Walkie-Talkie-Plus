.class Lcom/jude/rollviewpager/RollPagerView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RollPagerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jude/rollviewpager/RollPagerView;->a(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jude/rollviewpager/RollPagerView;


# direct methods
.method constructor <init>(Lcom/jude/rollviewpager/RollPagerView;)V
    .locals 0

    iput-object p1, p0, Lcom/jude/rollviewpager/RollPagerView$2;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView$2;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->a(Lcom/jude/rollviewpager/RollPagerView;)Lcom/jude/rollviewpager/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView$2;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->b(Lcom/jude/rollviewpager/RollPagerView;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView$2;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->a(Lcom/jude/rollviewpager/RollPagerView;)Lcom/jude/rollviewpager/b;

    move-result-object v1

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView$2;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->c(Lcom/jude/rollviewpager/RollPagerView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView$2;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->b(Lcom/jude/rollviewpager/RollPagerView;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;

    invoke-virtual {v0}, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->a()I

    move-result v0

    rem-int v0, v2, v0

    invoke-interface {v1, v0}, Lcom/jude/rollviewpager/b;->a(I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView$2;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->a(Lcom/jude/rollviewpager/RollPagerView;)Lcom/jude/rollviewpager/b;

    move-result-object v0

    iget-object v1, p0, Lcom/jude/rollviewpager/RollPagerView$2;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v1}, Lcom/jude/rollviewpager/RollPagerView;->c(Lcom/jude/rollviewpager/RollPagerView;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jude/rollviewpager/b;->a(I)V

    goto :goto_0
.end method
