.class public Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;
.super Ljava/lang/Object;
.source "DialogPlus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$k;,
        Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$OnHolderListener;,
        Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$j;,
        Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$i;,
        Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;,
        Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$g;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/view/ViewGroup;

.field private final c:Z

.field private d:Z

.field private e:Z

.field private final f:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$k;

.field private final g:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$i;

.field private final h:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$j;

.field private final i:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;

.field private final j:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$g;

.field private final k:Lcom/ifengyu/intercom/ui/widget/dialog/k;

.field private final l:Landroid/view/ViewGroup;

.field private final m:Landroid/view/animation/Animation;

.field private final n:Landroid/view/animation/Animation;

.field private final o:Landroid/view/View;

.field private final p:Landroid/view/View$OnTouchListener;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/f;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->e:Z

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$f;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->p:Landroid/view/View$OnTouchListener;

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->g()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->k()Lcom/ifengyu/intercom/ui/widget/dialog/k;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/k;

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->r()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$k;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->f:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$k;

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->p()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$i;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->g:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$i;

    .line 9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->q()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$j;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->h:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$j;

    .line 10
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->o()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->i:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->n()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$g;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->j:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$g;

    .line 12
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c:Z

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v3, 0x1020002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l:Landroid/view/ViewGroup;

    const v3, 0x7f0c0063

    const/4 v4, 0x0

    .line 14
    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->t()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f090162

    .line 16
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->o:Landroid/view/View;

    .line 17
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->u()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const v3, 0x7f090163

    .line 18
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->f()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->s()Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->m:Landroid/view/animation/Animation;

    .line 21
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->l()Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->n:Landroid/view/animation/Animation;

    .line 22
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->j()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->i()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b()Landroid/widget/BaseAdapter;

    move-result-object v5

    .line 23
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->e()[I

    move-result-object v6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()[I

    move-result-object v7

    move-object v1, p0

    .line 24
    invoke-direct/range {v1 .. v7}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->o(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;Landroid/widget/BaseAdapter;[I[I)V

    .line 25
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->n()V

    .line 26
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->h()I

    move-result v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->f()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v0, v1, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->p(Landroid/app/Activity;II)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->d:Z

    return p1
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->h:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$j;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->f:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$k;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->g:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$i;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->j:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$g;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c:Z

    return p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->i:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;

    return-object p0
.end method

.method private j(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->j(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->u(Landroid/view/View;)V

    return-void
.end method

.method private k(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/k;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/k;

    instance-of v0, v0, Lcom/ifengyu/intercom/ui/widget/dialog/x;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->j(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->j(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/k;

    invoke-interface {v0, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->f(Landroid/view/View;)V

    .line 6
    invoke-direct {p0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->j(Landroid/view/View;)V

    .line 7
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/k;

    invoke-interface {p2, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->d(Landroid/view/View;)V

    if-eqz p4, :cond_1

    .line 8
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/k;

    instance-of p3, p2, Lcom/ifengyu/intercom/ui/widget/dialog/l;

    if-eqz p3, :cond_1

    .line 9
    check-cast p2, Lcom/ifengyu/intercom/ui/widget/dialog/l;

    .line 10
    invoke-interface {p2, p4}, Lcom/ifengyu/intercom/ui/widget/dialog/l;->b(Landroid/widget/BaseAdapter;)V

    .line 11
    new-instance p3, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    invoke-interface {p2, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/l;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$OnHolderListener;)V

    :cond_1
    return-object p1
.end method

.method private n()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->p:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private o(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;Landroid/widget/BaseAdapter;[I[I)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x0

    .line 3
    aget p4, p6, p3

    const/4 v0, 0x1

    aget v1, p6, v0

    const/4 v2, 0x2

    aget v3, p6, v2

    const/4 v4, 0x3

    aget p6, p6, v4

    invoke-virtual {p2, p4, v1, v3, p6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->m()Landroid/view/View;

    move-result-object p2

    aget p3, p5, p3

    aget p4, p5, v0

    aget p6, p5, v2

    aget p5, p5, v4

    invoke-virtual {p2, p3, p4, p6, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private p(Landroid/app/Activity;II)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/intercom/g;->a()I

    move-result v1

    sub-int v6, v0, v1

    if-nez p2, :cond_0

    mul-int/lit8 p2, v6, 0x2

    .line 3
    div-int/lit8 p2, p2, 0x5

    :cond_0
    move v7, p2

    .line 4
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/k;

    invoke-interface {p2}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->a()Landroid/view/View;

    move-result-object p2

    .line 5
    instance-of v0, p2, Landroid/widget/AbsListView;

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    move-object v3, p2

    check-cast v3, Landroid/widget/AbsListView;

    .line 7
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    move-object v2, p1

    move v5, p3

    invoke-static/range {v2 .. v7}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->c(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/view/View;III)Lcom/ifengyu/intercom/ui/widget/dialog/h;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static r(Landroid/content/Context;)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private s(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->n:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/k;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    invoke-interface {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private u(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$d;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->m:Landroid/view/animation/Animation;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->d:Z

    .line 5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->m:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->o:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public m()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/k;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l:Landroid/view/ViewGroup;

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->i:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;->a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l()V

    return-void
.end method

.method public v()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->e:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l:Landroid/view/ViewGroup;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$a;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->m:Landroid/view/animation/Animation;

    .line 4
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x3ff199999999999aL    # 1.1

    mul-double v2, v2, v4

    double-to-long v2, v2

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->e:Z

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->o:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->s(Landroid/view/View;)V

    return-void
.end method
