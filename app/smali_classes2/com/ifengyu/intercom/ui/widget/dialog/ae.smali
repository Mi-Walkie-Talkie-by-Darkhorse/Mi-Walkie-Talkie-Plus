.class public Lcom/ifengyu/intercom/ui/widget/dialog/ae;
.super Ljava/lang/Object;
.source "ViewHolder.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/m;


# instance fields
.field private final a:I

.field private b:I

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/View;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View$OnKeyListener;

.field private h:Landroid/view/View;

.field private i:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->a:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->b:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->i:I

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->i:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/ae;)Landroid/view/View$OnKeyListener;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->g:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->i:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->h:Landroid/view/View;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->h:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->h:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v0, 0x7f040075

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->b:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const v0, 0x7f1001e3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->b:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    const v0, 0x7f1001e6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/ae$1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/ae$1;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/ae;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    const v0, 0x7f1001e5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->c:Landroid/view/ViewGroup;

    const v0, 0x7f1001e7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->e:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->b:I

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->d:Landroid/view/View;

    goto :goto_0
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->f:Landroid/view/View;

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->f:Landroid/view/View;

    goto :goto_0
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;->g:Landroid/view/View$OnKeyListener;

    return-void
.end method
