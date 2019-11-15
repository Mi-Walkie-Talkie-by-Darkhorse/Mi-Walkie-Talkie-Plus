.class public abstract Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "LoopPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jude/rollviewpager/adapter/LoopPagerAdapter$a;
    }
.end annotation


# instance fields
.field private a:Lcom/jude/rollviewpager/RollPagerView;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jude/rollviewpager/RollPagerView;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->a:Lcom/jude/rollviewpager/RollPagerView;

    new-instance v0, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter$a;-><init>(Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;Lcom/jude/rollviewpager/adapter/LoopPagerAdapter$1;)V

    invoke-virtual {p1, v0}, Lcom/jude/rollviewpager/RollPagerView;->setHintViewDelegate(Lcom/jude/rollviewpager/RollPagerView$a;)V

    return-void
.end method

.method private a(I)V
    .locals 3

    :try_start_0
    const-class v0, Landroid/support/v4/view/ViewPager;

    const-string v1, "mCurItem"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-virtual {v1}, Lcom/jude/rollviewpager/RollPagerView;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-virtual {v0}, Lcom/jude/rollviewpager/RollPagerView;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->a()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x3fffffff    # 1.9999999f

    invoke-virtual {p0}, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->a()I

    move-result v1

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Landroid/view/View;
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->a()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->a()I

    move-result v0

    rem-int v0, p2, v0

    invoke-direct {p0, p1, v0}, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->b()V

    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-direct {p0}, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->b()V

    return-void
.end method
