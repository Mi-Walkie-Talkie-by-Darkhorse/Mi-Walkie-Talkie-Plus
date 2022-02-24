.class public Lcom/ifengyu/intercom/ui/widget/dialog/c0;
.super Ljava/lang/Object;
.source "ViewHolder.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/m;


# instance fields
.field private a:I

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/View;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View$OnKeyListener;

.field private g:Landroid/view/View;

.field private h:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->a:I

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->h:I

    .line 4
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->h:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/c0;)Landroid/view/View$OnKeyListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->f:Landroid/view/View$OnKeyListener;

    return-object p0
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 2

    .line 14
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->g:Landroid/view/View;

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 17
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->g:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->g:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->g:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0c007b

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 6
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const v1, 0x7f090128

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 8
    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->a:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    const v1, 0x7f090134

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 10
    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/c0$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/c0$a;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/c0;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 11
    invoke-direct {p0, p1, p2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    const p1, 0x7f09012a

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->b:Landroid/view/ViewGroup;

    const p1, 0x7f090129

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->a:I

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->e:Landroid/view/View;

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->e:Landroid/view/View;

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->c:Landroid/view/View;

    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;->f:Landroid/view/View$OnKeyListener;

    return-void
.end method
