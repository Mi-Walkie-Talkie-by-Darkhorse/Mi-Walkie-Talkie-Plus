.class public Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;
.super Landroid/widget/LinearLayout;
.source "ChannelKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;,
        Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$c;,
        Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$b;
    }
.end annotation


# static fields
.field private static final j:I

.field private static final k:I

.field private static final l:[Ljava/lang/String;

.field private static final m:[I


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;

.field private b:[Landroid/widget/TextView;

.field private c:[I

.field private d:[I

.field private e:I

.field private f:Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$b;

.field private g:Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$c;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "#333333"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->j:I

    const-string v0, "#DDDDDD"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->k:I

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "\u5220\u9664"

    const-string v11, "0"

    const-string v12, "\u786e\u5b9a"

    .line 3
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->l:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->m:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0x0
        0xb
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->e:I

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->i()V

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->h(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->e:I

    return p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->c:[I

    return-object p0
.end method

.method static synthetic c()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->m:[I

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .line 1
    sget v0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->j:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .line 1
    sget v0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->k:I

    return v0
.end method

.method private f(Landroid/view/View;)[Landroid/widget/TextView;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/TextView;

    const v1, 0x7f0904e7

    .line 1
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0904e8

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f0904e9

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x7f0904ea

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x7f0904eb

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, 0x7f0904ec

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const v1, 0x7f0904ed

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v1, 0x6

    aput-object p1, v0, v1

    return-object v0
.end method

.method private g(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 p1, 0x9

    const/16 p2, 0xb

    if-ne p3, p2, :cond_1

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->f:Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$b;

    if-eqz p2, :cond_3

    .line 2
    iget p2, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->e:I

    add-int/lit8 p2, p2, 0x1

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    if-ge p4, p2, :cond_0

    int-to-double v2, p5

    .line 3
    iget-object p5, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->c:[I

    aget p5, p5, p4

    int-to-double v4, p5

    add-int/lit8 p5, p2, -0x1

    sub-int/2addr p5, p4

    int-to-double v6, p5

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v4, v4, v0

    add-double/2addr v2, v4

    double-to-int p5, v2

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p5}, Lcom/qmuiteam/qmui/util/g;->e(I)I

    move-result p2

    sub-int/2addr p1, p2

    int-to-double p4, p5

    int-to-double p1, p1

    .line 5
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    mul-double p4, p4, p1

    double-to-int p1, p4

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->f:Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$b;

    invoke-interface {p2, p0, p1}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$b;->a(Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;I)V

    goto :goto_1

    :cond_1
    const/4 p2, -0x1

    if-ne p3, p1, :cond_2

    .line 7
    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->e:I

    if-ltz p1, :cond_3

    iget-object p4, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->b:[Landroid/widget/TextView;

    array-length p5, p4

    if-ge p1, p5, :cond_3

    .line 8
    aget-object p1, p4, p1

    const-string p4, ""

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->c:[I

    iget p4, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->e:I

    aput p2, p1, p4

    add-int/lit8 p4, p4, -0x1

    .line 10
    iput p4, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->e:I

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->a:Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 12
    :cond_2
    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->e:I

    if-lt p1, p2, :cond_3

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->b:[Landroid/widget/TextView;

    array-length p4, p2

    add-int/lit8 p4, p4, -0x1

    if-ge p1, p4, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 13
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->e:I

    .line 14
    aget-object p1, p2, p1

    sget-object p2, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->l:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->c:[I

    iget p2, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->e:I

    sget-object p4, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->m:[I

    aget p4, p4, p3

    aput p4, p1, p2

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->a:Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 17
    :cond_3
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->e:I

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->c:[I

    sget-object p4, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->m:[I

    aget p3, p4, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->l(I[II)V

    return-void
.end method

.method private h(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c0048

    invoke-virtual {p3, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p3, 0x7f090505

    .line 3
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->h:Landroid/widget/TextView;

    const p3, 0x7f0904d4

    .line 4
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->i:Landroid/widget/TextView;

    .line 5
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->h:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    invoke-direct {p0, p0}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->f(Landroid/view/View;)[Landroid/widget/TextView;

    move-result-object p3

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->b:[Landroid/widget/TextView;

    const p3, 0x7f090200

    .line 7
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/GridView;

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->b:[Landroid/widget/TextView;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 9
    aget-object v1, v1, v0

    .line 10
    sget-object v2, Lcom/ifengyu/intercom/j/a;->c:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->d:[I

    if-eqz v2, :cond_0

    array-length v3, v2

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->b:[Landroid/widget/TextView;

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 12
    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->c:[I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->d:[I

    aget v2, v2, v0

    aput v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->d:[I

    if-eqz v0, :cond_2

    array-length v0, v0

    array-length v2, v1

    if-ne v0, v2, :cond_2

    .line 15
    array-length v0, v1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->e:I

    .line 16
    :cond_2
    new-instance p2, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->l:[Ljava/lang/String;

    invoke-direct {p2, p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;-><init>(Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;Landroid/content/Context;[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->a:Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;

    .line 17
    invoke-virtual {p3, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 18
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/frequency/a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/frequency/a;-><init>(Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;)V

    invoke-virtual {p3, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private i()V
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 1
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->c:[I

    const/4 v1, -0x1

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public static synthetic k(Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->g(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method


# virtual methods
.method protected j(I[II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->g:Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$c;->b(I[II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected l(I[II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->g:Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$c;->a(I[II)V

    :cond_0
    return-void
.end method

.method public m(Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$b;)Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->f:Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$b;

    return-object p0
.end method

.method public n(Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$c;)Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->g:Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$c;

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
