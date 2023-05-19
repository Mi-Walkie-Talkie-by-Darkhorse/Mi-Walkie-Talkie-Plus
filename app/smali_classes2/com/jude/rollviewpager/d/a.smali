.class public abstract Lcom/jude/rollviewpager/d/a;
.super Landroidx/viewpager/widget/a;
.source "LoopPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jude/rollviewpager/d/a$b;
    }
.end annotation


# instance fields
.field private a:Lcom/jude/rollviewpager/RollPagerView;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jude/rollviewpager/RollPagerView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jude/rollviewpager/d/a;->b:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Lcom/jude/rollviewpager/d/a;->a:Lcom/jude/rollviewpager/RollPagerView;

    .line 4
    new-instance v0, Lcom/jude/rollviewpager/d/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jude/rollviewpager/d/a$b;-><init>(Lcom/jude/rollviewpager/d/a;Lcom/jude/rollviewpager/d/a$a;)V

    invoke-virtual {p1, v0}, Lcom/jude/rollviewpager/RollPagerView;->setHintViewDelegate(Lcom/jude/rollviewpager/RollPagerView$e;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jude/rollviewpager/d/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/jude/rollviewpager/d/a;->c(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p0, Lcom/jude/rollviewpager/d/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jude/rollviewpager/d/a;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-virtual {v0}, Lcom/jude/rollviewpager/RollPagerView;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jude/rollviewpager/d/a;->b()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x3fffffff    # 1.9999999f

    .line 2
    invoke-virtual {p0}, Lcom/jude/rollviewpager/d/a;->b()I

    move-result v1

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    .line 3
    invoke-direct {p0, v0}, Lcom/jude/rollviewpager/d/a;->e(I)V

    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    iget-object v1, p0, Lcom/jude/rollviewpager/d/a;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-virtual {v1}, Lcom/jude/rollviewpager/RollPagerView;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract b()I
.end method

.method public abstract c(Landroid/view/ViewGroup;I)Landroid/view/View;
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jude/rollviewpager/d/a;->b()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/jude/rollviewpager/d/a;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jude/rollviewpager/d/a;->b()I

    move-result v0

    rem-int/2addr p2, v0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/jude/rollviewpager/d/a;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jude/rollviewpager/d/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-direct {p0}, Lcom/jude/rollviewpager/d/a;->d()V

    .line 3
    invoke-super {p0}, Landroidx/viewpager/widget/a;->notifyDataSetChanged()V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2
    invoke-direct {p0}, Lcom/jude/rollviewpager/d/a;->d()V

    return-void
.end method
