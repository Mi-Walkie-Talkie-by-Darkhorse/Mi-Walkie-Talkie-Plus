.class public abstract Lcom/ifengyu/intercom/ui/adapter/i;
.super Lb/d/a/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb/d/a/a/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lb/d/a/a/a;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/adapter/i;)Lb/d/a/a/b$c;
    .locals 0

    iget-object p0, p0, Lb/d/a/a/b;->d:Lb/d/a/a/b$c;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/adapter/i;)Lb/d/a/a/b$c;
    .locals 0

    iget-object p0, p0, Lb/d/a/a/b;->d:Lb/d/a/a/b$c;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/adapter/i;)Lb/d/a/a/b$c;
    .locals 0

    iget-object p0, p0, Lb/d/a/a/b;->d:Lb/d/a/a/b$c;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/adapter/i;)Lb/d/a/a/b$c;
    .locals 0

    iget-object p0, p0, Lb/d/a/a/b;->d:Lb/d/a/a/b$c;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;Lb/d/a/a/c/c;I)V
    .locals 0

    invoke-virtual {p0, p3}, Lb/d/a/a/b;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lb/d/a/a/c/c;->a()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/ifengyu/intercom/ui/adapter/i$a;

    invoke-direct {p3, p0, p2}, Lcom/ifengyu/intercom/ui/adapter/i$a;-><init>(Lcom/ifengyu/intercom/ui/adapter/i;Lb/d/a/a/c/c;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lb/d/a/a/c/c;->a()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/ifengyu/intercom/ui/adapter/i$b;

    invoke-direct {p3, p0, p2}, Lcom/ifengyu/intercom/ui/adapter/i$b;-><init>(Lcom/ifengyu/intercom/ui/adapter/i;Lb/d/a/a/c/c;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
