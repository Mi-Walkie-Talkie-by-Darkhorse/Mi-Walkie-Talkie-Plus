.class public Lcom/ifengyu/intercom/ui/setting/shark/a;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "SharkInsertChannelDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/setting/shark/a$a;,
        Lcom/ifengyu/intercom/ui/setting/shark/a$b;,
        Lcom/ifengyu/intercom/ui/setting/shark/a$c;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private d:Landroid/app/Activity;

.field private e:Lcom/ifengyu/intercom/ui/setting/shark/a$c;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Lcom/ifengyu/intercom/ui/setting/shark/a$a;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Landroid/view/LayoutInflater;

.field private q:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "7"

    aput-object v1, v0, v3

    const-string v1, "8"

    aput-object v1, v0, v4

    const-string v1, "9"

    aput-object v1, v0, v5

    const-string v1, "4"

    aput-object v1, v0, v6

    const-string v1, "5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "OK"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/shark/a;->a:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "2"

    aput-object v1, v0, v4

    const-string v1, "5"

    aput-object v1, v0, v5

    const-string v1, "7"

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/shark/a;->b:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "5"

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/shark/a;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/a$8;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/a$8;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/a;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->q:Landroid/text/TextWatcher;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->d:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->p:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->n:Ljava/lang/String;

    iput p3, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->o:I

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/a;->a:[Ljava/lang/String;

    sget-object v1, Lcom/ifengyu/intercom/ui/setting/shark/a;->a:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->d:Landroid/app/Activity;

    const v3, 0x7f090079

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/a;)Lcom/ifengyu/intercom/ui/setting/shark/a$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->m:Lcom/ifengyu/intercom/ui/setting/shark/a$a;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/a;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/a;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/setting/shark/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/setting/shark/a;)Lcom/ifengyu/intercom/ui/setting/shark/a$c;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->e:Lcom/ifengyu/intercom/ui/setting/shark/a$c;

    return-object v0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/setting/shark/a;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->p:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f1001e8

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->o:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    const v0, 0x7f1001f0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/a$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/a$a;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/a;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->m:Lcom/ifengyu/intercom/ui/setting/shark/a$a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->m:Lcom/ifengyu/intercom/ui/setting/shark/a$a;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/a$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/a$b;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f1001e9

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->f:Landroid/widget/EditText;

    const v0, 0x7f1001ea

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->g:Landroid/widget/EditText;

    const v0, 0x7f1001eb

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->h:Landroid/widget/EditText;

    const v0, 0x7f1001ec

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->i:Landroid/widget/EditText;

    const v0, 0x7f1001ed

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->j:Landroid/widget/EditText;

    const v0, 0x7f1001ee

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->k:Landroid/widget/EditText;

    const v0, 0x7f1001ef

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->l:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->q:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->q:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->q:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->q:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->q:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->q:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/a$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/a$1;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/a$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/a$2;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/a$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/a$3;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/a$4;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/a$4;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/a$5;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/a$5;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/a$6;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/a$6;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/a$7;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/a$7;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void

    :pswitch_0
    const v1, 0x7f090198

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_1
    const v1, 0x7f0900e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->a(I)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/setting/shark/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->e:Lcom/ifengyu/intercom/ui/setting/shark/a$c;

    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040085

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->d:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->a(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->a()V

    return-void
.end method

.method public show()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->show()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->n:Ljava/lang/String;

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->n:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/String;)I

    move-result v1

    const v2, 0x19a14780

    if-ge v1, v2, :cond_0

    const v2, 0x17d78400

    if-ge v1, v2, :cond_1

    :cond_0
    const v2, 0x1a39de00

    if-le v1, v2, :cond_2

    const v2, 0x1c03a180

    if-gt v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->f:Landroid/widget/EditText;

    const/4 v2, 0x0

    aget-char v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->g:Landroid/widget/EditText;

    aget-char v2, v0, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->h:Landroid/widget/EditText;

    const/4 v2, 0x2

    aget-char v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->i:Landroid/widget/EditText;

    const/4 v2, 0x3

    aget-char v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->j:Landroid/widget/EditText;

    const/4 v2, 0x4

    aget-char v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->k:Landroid/widget/EditText;

    const/4 v2, 0x5

    aget-char v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->l:Landroid/widget/EditText;

    const/4 v2, 0x6

    aget-char v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method
