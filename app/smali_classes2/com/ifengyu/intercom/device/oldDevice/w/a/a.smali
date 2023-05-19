.class public abstract Lcom/ifengyu/intercom/device/oldDevice/w/a/a;
.super Lb/f/a/a/a;
.source "DolphinCustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb/f/a/a/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lb/f/a/a/a;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method static synthetic n(Lcom/ifengyu/intercom/device/oldDevice/w/a/a;)Lb/f/a/a/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/f/a/a/b;->d:Lb/f/a/a/b$c;

    return-object p0
.end method

.method static synthetic o(Lcom/ifengyu/intercom/device/oldDevice/w/a/a;)Lb/f/a/a/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/f/a/a/b;->d:Lb/f/a/a/b$c;

    return-object p0
.end method

.method static synthetic p(Lcom/ifengyu/intercom/device/oldDevice/w/a/a;)Lb/f/a/a/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/f/a/a/b;->d:Lb/f/a/a/b$c;

    return-object p0
.end method

.method static synthetic q(Lcom/ifengyu/intercom/device/oldDevice/w/a/a;)Lb/f/a/a/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/f/a/a/b;->d:Lb/f/a/a/b$c;

    return-object p0
.end method


# virtual methods
.method protected k(Landroid/view/ViewGroup;Lb/f/a/a/c/c;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lb/f/a/a/b;->g(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lb/f/a/a/c/c;->c()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/ifengyu/intercom/device/oldDevice/w/a/a$a;

    invoke-direct {p3, p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/w/a/a$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/w/a/a;Lb/f/a/a/c/c;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p2}, Lb/f/a/a/c/c;->c()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/ifengyu/intercom/device/oldDevice/w/a/a$b;

    invoke-direct {p3, p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/w/a/a$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/w/a/a;Lb/f/a/a/c/c;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
