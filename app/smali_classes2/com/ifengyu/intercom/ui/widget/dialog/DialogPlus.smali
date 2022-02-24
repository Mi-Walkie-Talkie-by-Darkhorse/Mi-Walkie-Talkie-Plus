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

.field private final k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

.field private final l:Landroid/view/ViewGroup;

.field private final m:Landroid/view/animation/Animation;

.field private final n:Landroid/view/animation/Animation;

.field private final o:Landroid/view/View;

.field private final p:Landroid/view/View$OnTouchListener;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/h;)V
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
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->g()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->k()Lcom/ifengyu/intercom/ui/widget/dialog/m;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->q()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$k;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->f:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$k;

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->o()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$i;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->g:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$i;

    .line 9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->p()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$j;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->h:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$j;

    .line 10
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->n()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->i:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->m()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$g;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->j:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$g;

    .line 12
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->u()Z

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

    const v3, 0x7f0c0079

    const/4 v4, 0x0

    .line 14
    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->s()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    const v3, 0x7f090126

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->o:Landroid/view/View;

    .line 17
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->t()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 18
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    const v3, 0x7f090127

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->f()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->r()Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->m:Landroid/view/animation/Animation;

    .line 21
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->l()Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->n:Landroid/view/animation/Animation;

    .line 22
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->j()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->i()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->b()Landroid/widget/BaseAdapter;

    move-result-object v5

    .line 23
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->e()[I

    move-result-object v6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->d()[I

    move-result-object v7

    move-object v1, p0

    .line 24
    invoke-direct/range {v1 .. v7}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;Landroid/widget/BaseAdapter;[I[I)V

    .line 25
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->e()V

    .line 26
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->h()I

    move-result v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->f()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v0, v1, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Landroid/app/Activity;II)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    instance-of v0, v0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;

    if-eqz v0, :cond_0

    .line 25
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Landroid/view/View;)V

    .line 26
    :cond_0
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Landroid/view/View;)V

    .line 27
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-interface {v0, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->b(Landroid/view/View;)V

    .line 28
    invoke-direct {p0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Landroid/view/View;)V

    .line 29
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-interface {p2, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->a(Landroid/view/View;)V

    if-eqz p4, :cond_1

    .line 30
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    instance-of p3, p2, Lcom/ifengyu/intercom/ui/widget/dialog/n;

    if-eqz p3, :cond_1

    .line 31
    check-cast p2, Lcom/ifengyu/intercom/ui/widget/dialog/n;

    .line 32
    invoke-interface {p2, p4}, Lcom/ifengyu/intercom/ui/widget/dialog/n;->a(Landroid/widget/BaseAdapter;)V

    .line 33
    new-instance p3, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    invoke-interface {p2, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/n;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$OnHolderListener;)V

    :cond_1
    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/ifengyu/intercom/ui/widget/dialog/h;
    .locals 1

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Landroid/app/Activity;II)V
    .locals 8

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/intercom/d;->a()I

    move-result v1

    sub-int v6, v0, v1

    if-nez p2, :cond_0

    mul-int/lit8 p2, v6, 0x2

    .line 12
    div-int/lit8 p2, p2, 0x5

    :cond_0
    move v7, p2

    .line 13
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-interface {p2}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->a()Landroid/view/View;

    move-result-object p2

    .line 14
    instance-of v0, p2, Landroid/widget/AbsListView;

    if-nez v0, :cond_1

    return-void

    .line 15
    :cond_1
    move-object v3, p2

    check-cast v3, Landroid/widget/AbsListView;

    .line 16
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    move-object v2, p1

    move v5, p3

    invoke-static/range {v2 .. v7}, Lcom/ifengyu/intercom/ui/widget/dialog/j;->a(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/view/View;III)Lcom/ifengyu/intercom/ui/widget/dialog/j;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;Landroid/widget/BaseAdapter;[I[I)V
    .locals 5

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;

    move-result-object p1

    .line 18
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x0

    .line 19
    aget p4, p6, p3

    const/4 v0, 0x1

    aget v1, p6, v0

    const/4 v2, 0x2

    aget v3, p6, v2

    const/4 v4, 0x3

    aget p6, p6, v4

    invoke-virtual {p2, p4, v1, v3, p6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b()Landroid/view/View;

    move-result-object p2

    aget p3, p5, p3

    aget p4, p5, v0

    aget p6, p5, v2

    aget p5, p5, v4

    invoke-virtual {p2, p3, p4, p6, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 22
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 34
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 35
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 36
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 38
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 39
    :cond_1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->n:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    invoke-interface {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$d;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
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

.method private e()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    const v1, 0x7f090126

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->p:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
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


# virtual methods
.method public a()V
    .locals 3

    .line 3
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->m:Landroid/view/animation/Animation;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->d:Z

    .line 7
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->m:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->o:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->i:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;

    if-eqz p1, :cond_0

    .line 41
    invoke-interface {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;->a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a()V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->k:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l:Landroid/view/ViewGroup;

    const v1, 0x7f090126

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

.method public d()V
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->e:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l:Landroid/view/ViewGroup;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$a;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->m:Landroid/view/animation/Animation;

    .line 5
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x3ff199999999999aL    # 1.1

    mul-double v2, v2, v4

    double-to-long v2, v2

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->e:Z

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->o:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b(Landroid/view/View;)V

    return-void
.end method
