.class public Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;
.super Ljava/lang/Object;
.source "DialogPlus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;,
        Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$OnHolderListener;,
        Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$d;,
        Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;,
        Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;,
        Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/view/ViewGroup;

.field private final c:Z

.field private d:Z

.field private e:Z

.field private final f:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;

.field private final g:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;

.field private final h:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$d;

.field private final i:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;

.field private final j:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$a;

.field private final k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

.field private final l:Landroid/view/ViewGroup;

.field private final m:Landroid/view/animation/Animation;

.field private final n:Landroid/view/animation/Animation;

.field private final o:Landroid/view/View;

.field private final p:Landroid/view/View$OnTouchListener;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/g;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->e:Z

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$6;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$6;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->p:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->e()Landroid/content/Context;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->d()Lcom/ifengyu/intercom/ui/widget/dialog/m;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->m()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->f:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->n()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->g:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->o()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$d;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->h:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$d;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->p()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->i:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->q()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->j:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c:Z

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l:Landroid/view/ViewGroup;

    const v0, 0x7f040073

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->k()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    const v2, 0x7f1001e1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->o:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->o:Landroid/view/View;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->u()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    const v2, 0x7f1001e2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->i()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->h()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->m:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->g()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->n:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->b()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->f()Landroid/widget/BaseAdapter;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->s()[I

    move-result-object v5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->r()[I

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;Landroid/widget/BaseAdapter;[I[I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->e()V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->t()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->i()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v7, v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Landroid/app/Activity;II)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    instance-of v0, v0, Lcom/ifengyu/intercom/ui/widget/dialog/ae;

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-interface {v0, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->a(Landroid/view/View;)V

    invoke-direct {p0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-interface {v0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->b(Landroid/view/View;)V

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    instance-of v0, v0, Lcom/ifengyu/intercom/ui/widget/dialog/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/dialog/n;

    invoke-interface {v0, p4}, Lcom/ifengyu/intercom/ui/widget/dialog/n;->a(Landroid/widget/BaseAdapter;)V

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$3;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$3;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    invoke-interface {v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/n;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$OnHolderListener;)V

    :cond_1
    return-object v1
.end method

.method public static a(Landroid/content/Context;)Lcom/ifengyu/intercom/ui/widget/dialog/g;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Landroid/app/Activity;II)V
    .locals 7

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/intercom/a;->a()I

    move-result v1

    sub-int v4, v0, v1

    if-nez p2, :cond_1

    mul-int/lit8 v0, v4, 0x2

    div-int/lit8 v5, v0, 0x5

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->a()Landroid/view/View;

    move-result-object v6

    instance-of v0, v6, Landroid/widget/AbsListView;

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    move-object v1, v6

    check-cast v1, Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    move-object v0, p1

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/view/View;III)Lcom/ifengyu/intercom/ui/widget/dialog/i;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_1
    move v5, p2

    goto :goto_0
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;Landroid/widget/BaseAdapter;[I[I)V
    .locals 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    aget v2, p6, v2

    const/4 v3, 0x1

    aget v3, p6, v3

    const/4 v4, 0x2

    aget v4, p6, v4

    const/4 v5, 0x3

    aget v5, p6, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->d()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p5, v2

    const/4 v3, 0x1

    aget v3, p5, v3

    const/4 v4, 0x2

    aget v4, p5, v4

    const/4 v5, 0x3

    aget v5, p5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$4;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$4;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->n:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$5;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$5;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$d;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->h:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$d;

    return-object v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->f:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    const v1, 0x7f1001e1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->p:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->g:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;

    return-object v0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->j:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$a;

    return-object v0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c:Z

    return v0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->i:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l:Landroid/view/ViewGroup;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$1;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->m:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->e:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->o:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->i:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->i:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;

    invoke-interface {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;->a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c()V

    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l:Landroid/view/ViewGroup;

    const v1, 0x7f1001e1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 4

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->m:Landroid/view/animation/Animation;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->d:Z

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->m:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->o:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
