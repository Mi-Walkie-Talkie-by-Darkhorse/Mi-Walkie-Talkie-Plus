.class public abstract Lcom/ifengyu/library/widget/recyclerview/f/a;
.super Ljava/lang/Object;
.source "LoadMoreView.java"


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/library/widget/recyclerview/f/a;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/f/a;->b:Z

    return-void
.end method

.method private a(Lcom/ifengyu/library/widget/recyclerview/d/a;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/f/a;->d()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/ifengyu/library/widget/recyclerview/d/a;->a(IZ)Lcom/ifengyu/library/widget/recyclerview/d/a;

    return-void
.end method

.method private b(Lcom/ifengyu/library/widget/recyclerview/d/a;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/f/a;->e()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/ifengyu/library/widget/recyclerview/d/a;->a(IZ)Lcom/ifengyu/library/widget/recyclerview/d/a;

    return-void
.end method

.method private c(Lcom/ifengyu/library/widget/recyclerview/d/a;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/f/a;->f()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0, p2}, Lcom/ifengyu/library/widget/recyclerview/d/a;->a(IZ)Lcom/ifengyu/library/widget/recyclerview/d/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/f/a;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/library/widget/recyclerview/f/a;->a:I

    return-void
.end method

.method public a(Lcom/ifengyu/library/widget/recyclerview/d/a;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/f/a;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1, v2}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(Lcom/ifengyu/library/widget/recyclerview/d/a;Z)V

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->b(Lcom/ifengyu/library/widget/recyclerview/d/a;Z)V

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->c(Lcom/ifengyu/library/widget/recyclerview/d/a;Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(Lcom/ifengyu/library/widget/recyclerview/d/a;Z)V

    invoke-direct {p0, p1, v2}, Lcom/ifengyu/library/widget/recyclerview/f/a;->b(Lcom/ifengyu/library/widget/recyclerview/d/a;Z)V

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->c(Lcom/ifengyu/library/widget/recyclerview/d/a;Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->a(Lcom/ifengyu/library/widget/recyclerview/d/a;Z)V

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/library/widget/recyclerview/f/a;->b(Lcom/ifengyu/library/widget/recyclerview/d/a;Z)V

    invoke-direct {p0, p1, v2}, Lcom/ifengyu/library/widget/recyclerview/f/a;->c(Lcom/ifengyu/library/widget/recyclerview/d/a;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/recyclerview/f/a;->b:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/recyclerview/f/a;->f()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/f/a;->b:Z

    goto :goto_0
.end method

.method public abstract c()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method protected abstract d()I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end method

.method protected abstract e()I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end method

.method protected abstract f()I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end method
