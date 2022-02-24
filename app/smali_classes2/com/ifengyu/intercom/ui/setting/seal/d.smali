.class public Lcom/ifengyu/intercom/ui/setting/seal/d;
.super Lcom/ifengyu/intercom/ui/widget/dialog/d;
.source "SealInsertChannelDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/setting/seal/d$i;,
        Lcom/ifengyu/intercom/ui/setting/seal/d$j;,
        Lcom/ifengyu/intercom/ui/setting/seal/d$k;
    }
.end annotation


# static fields
.field private static final o:[Ljava/lang/String;

.field private static final p:[Ljava/lang/String;

.field private static final q:[Ljava/lang/String;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/ifengyu/intercom/ui/setting/seal/d$k;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Lcom/ifengyu/intercom/ui/setting/seal/d$i;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Landroid/view/LayoutInflater;

.field private n:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "7"

    const-string v1, "8"

    const-string v2, "9"

    const-string v3, "4"

    const-string v4, "5"

    const-string v5, "6"

    const-string v6, "1"

    const-string v7, "2"

    const-string v8, "3"

    const-string v9, "0"

    const-string v10, "0"

    const-string v11, "OK"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/seal/d;->o:[Ljava/lang/String;

    const-string v1, "0"

    const-string v2, "2"

    const-string v3, "5"

    const-string v4, "7"

    const-string v5, ""

    const-string v6, "0"

    const-string v7, "2"

    const-string v8, "5"

    const-string v9, "7"

    const-string v10, ""

    .line 2
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/seal/d;->p:[Ljava/lang/String;

    const-string v1, "0"

    const-string v2, ""

    const-string v3, "5"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "0"

    const-string v7, ""

    const-string v8, "5"

    .line 3
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/seal/d;->q:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/d$h;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/d$h;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/d;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->n:Landroid/text/TextWatcher;

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->a:Landroid/app/Activity;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->m:Landroid/view/LayoutInflater;

    .line 5
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->k:Ljava/lang/String;

    .line 6
    iput p3, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->l:I

    .line 7
    sget-object p1, Lcom/ifengyu/intercom/ui/setting/seal/d;->o:[Ljava/lang/String;

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->a:Landroid/app/Activity;

    const v0, 0x7f1100a0

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/d;)Lcom/ifengyu/intercom/ui/setting/seal/d$i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->j:Lcom/ifengyu/intercom/ui/setting/seal/d$i;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/seal/d;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->h:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/seal/d;)Landroid/view/LayoutInflater;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->m:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic c()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/d;->o:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/seal/d;)Landroid/widget/EditText;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->f:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic d()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/d;->q:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/seal/d;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->g:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/setting/seal/d;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->e:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/setting/seal/d;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->d:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/setting/seal/d;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->c:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/setting/seal/d;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->i:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/setting/seal/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/setting/seal/d;)Lcom/ifengyu/intercom/ui/setting/seal/d$k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->b:Lcom/ifengyu/intercom/ui/setting/seal/d$k;

    return-object p0
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(I)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/setting/seal/d$k;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->b:Lcom/ifengyu/intercom/ui/setting/seal/d$k;

    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 4

    const v0, 0x7f09046d

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->l:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f11029b

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f110116

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v0, 0x7f0901b7

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 7
    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/d$i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/d$i;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/d;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->j:Lcom/ifengyu/intercom/ui/setting/seal/d$i;

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/d$j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/d$j;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f090168

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->c:Landroid/widget/EditText;

    const v0, 0x7f090169

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->d:Landroid/widget/EditText;

    const v0, 0x7f09016a

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->e:Landroid/widget/EditText;

    const v0, 0x7f09016b

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->f:Landroid/widget/EditText;

    const v0, 0x7f09016c

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->g:Landroid/widget/EditText;

    const v0, 0x7f09016d

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->h:Landroid/widget/EditText;

    const v0, 0x7f09016e

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->i:Landroid/widget/EditText;

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->c:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 26
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 27
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 28
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 29
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 30
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 31
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 32
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 33
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 34
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 35
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 36
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 37
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 38
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 39
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 40
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->n:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 41
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->n:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 42
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->n:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 43
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->n:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 44
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->n:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->n:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 46
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/d$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/d$a;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 47
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/d$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/d$b;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 48
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/d$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/d$c;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 49
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/d$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/d$d;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 50
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/d$e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/d$e;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 51
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/d$f;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/d$f;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 52
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/d$g;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/d$g;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c008a

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->setContentView(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->a:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/d;->b()V

    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->k:Ljava/lang/String;

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->k:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 5
    invoke-static {v2}, Lcom/ifengyu/intercom/i/c0;->c(Ljava/lang/String;)I

    move-result v2

    const v3, 0x19a14780

    if-ge v2, v3, :cond_0

    const v3, 0x17d78400

    if-ge v2, v3, :cond_1

    :cond_0
    const v3, 0x1a39de00

    if-le v2, v3, :cond_2

    const v3, 0x1c03a180

    if-gt v2, v3, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->c:Landroid/widget/EditText;

    const/4 v3, 0x0

    aget-char v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->d:Landroid/widget/EditText;

    aget-char v3, v0, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->e:Landroid/widget/EditText;

    const/4 v3, 0x2

    aget-char v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->f:Landroid/widget/EditText;

    const/4 v3, 0x3

    aget-char v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->g:Landroid/widget/EditText;

    const/4 v3, 0x4

    aget-char v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->h:Landroid/widget/EditText;

    const/4 v3, 0x5

    aget-char v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->i:Landroid/widget/EditText;

    const/4 v3, 0x6

    aget-char v0, v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/d;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 25
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0x12

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_5
    return-void
.end method
