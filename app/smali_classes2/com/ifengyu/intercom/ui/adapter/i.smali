.class public abstract Lcom/ifengyu/intercom/ui/adapter/i;
.super Lcom/zhy/a/a/a;
.source "MyCommonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/zhy/a/a/a",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zhy/a/a/a;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/adapter/i;)Lcom/zhy/a/a/b$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/i;->i:Lcom/zhy/a/a/b$a;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/adapter/i;)Lcom/zhy/a/a/b$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/i;->i:Lcom/zhy/a/a/b$a;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/adapter/i;)Lcom/zhy/a/a/b$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/i;->i:Lcom/zhy/a/a/b$a;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/adapter/i;)Lcom/zhy/a/a/b$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/i;->i:Lcom/zhy/a/a/b$a;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;Lcom/zhy/a/a/a/c;I)V
    .locals 2

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/ui/adapter/i;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/zhy/a/a/a/c;->a()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/i$1;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/ui/adapter/i$1;-><init>(Lcom/ifengyu/intercom/ui/adapter/i;Lcom/zhy/a/a/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/zhy/a/a/a/c;->a()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/i$2;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/ui/adapter/i$2;-><init>(Lcom/ifengyu/intercom/ui/adapter/i;Lcom/zhy/a/a/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method
