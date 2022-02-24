.class public Lcom/ifengyu/intercom/lite/c/b/b;
.super Lcom/ifengyu/intercom/lite/c/a/a;
.source "ChannelDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/lite/c/b/b$d;,
        Lcom/ifengyu/intercom/lite/c/b/b$b;,
        Lcom/ifengyu/intercom/lite/c/b/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/lite/c/a/a<",
        "Lcom/ifengyu/intercom/lite/c/b/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:[Ljava/lang/String;

.field private static final B:[I


# instance fields
.field private t:Lcom/ifengyu/intercom/lite/c/b/b$b;

.field private u:[Landroid/widget/TextView;

.field private v:[I

.field private w:[I

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Lcom/ifengyu/intercom/lite/c/b/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "1"

    const-string v1, "2"

    const-string v2, "3"

    const-string v3, "4"

    const-string v4, "5"

    const-string v5, "6"

    const-string v6, "7"

    const-string v7, "8"

    const-string v8, "9"

    const-string v9, "0"

    const-string v10, "0"

    const-string v11, "\u786e\u5b9a"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/lite/c/b/b;->A:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ifengyu/intercom/lite/c/b/b;->B:[I

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
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/c/a/a;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->y:I

    const/4 v0, 0x7

    new-array v1, v0, [Landroid/widget/TextView;

    .line 3
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->u:[Landroid/widget/TextView;

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/b;->v:[I

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->v:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 6
    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/c/b/b;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/ifengyu/intercom/lite/c/b/b;->y:I

    return p0
.end method

.method private a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 p1, 0xb

    if-ne p3, p1, :cond_1

    .line 31
    iget p1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->y:I

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/b;->u:[Landroid/widget/TextView;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    if-lt p1, p2, :cond_3

    .line 32
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->z:Lcom/ifengyu/intercom/lite/c/b/b$c;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 33
    :goto_0
    iget-object p3, p0, Lcom/ifengyu/intercom/lite/c/b/b;->v:[I

    array-length p4, p3

    if-ge p1, p4, :cond_0

    int-to-double p4, p2

    .line 34
    aget p2, p3, p1

    int-to-double v0, p2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    array-length p2, p3

    add-int/lit8 p2, p2, -0x1

    sub-int/2addr p2, p1

    int-to-double p2, p2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    mul-double v0, v0, p2

    add-double/2addr p4, v0

    double-to-int p2, p4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x64

    .line 35
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->z:Lcom/ifengyu/intercom/lite/c/b/b$c;

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-interface {p1, p3, p2}, Lcom/ifengyu/intercom/lite/c/b/b$c;->a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    goto :goto_1

    :cond_1
    const/16 p1, 0x9

    const/4 p2, -0x1

    if-ne p3, p1, :cond_2

    .line 36
    iget p1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->y:I

    if-ltz p1, :cond_3

    iget-object p4, p0, Lcom/ifengyu/intercom/lite/c/b/b;->u:[Landroid/widget/TextView;

    array-length p5, p4

    if-ge p1, p5, :cond_3

    .line 37
    aget-object p1, p4, p1

    const-string p4, ""

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->v:[I

    iget p4, p0, Lcom/ifengyu/intercom/lite/c/b/b;->y:I

    aput p2, p1, p4

    add-int/lit8 p4, p4, -0x1

    .line 39
    iput p4, p0, Lcom/ifengyu/intercom/lite/c/b/b;->y:I

    .line 40
    invoke-virtual {p0, p4, p1, p3}, Lcom/ifengyu/intercom/lite/c/b/b;->b(I[II)V

    .line 41
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->t:Lcom/ifengyu/intercom/lite/c/b/b$b;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 42
    :cond_2
    iget p1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->y:I

    if-lt p1, p2, :cond_3

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/b;->u:[Landroid/widget/TextView;

    array-length p4, p2

    add-int/lit8 p4, p4, -0x1

    if-ge p1, p4, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 43
    iput p1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->y:I

    .line 44
    aget-object p1, p2, p1

    sget-object p2, Lcom/ifengyu/intercom/lite/c/b/b;->A:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->v:[I

    iget p2, p0, Lcom/ifengyu/intercom/lite/c/b/b;->y:I

    sget-object p4, Lcom/ifengyu/intercom/lite/c/b/b;->B:[I

    aget p4, p4, p3

    aput p4, p1, p2

    .line 46
    invoke-virtual {p0, p2, p1, p3}, Lcom/ifengyu/intercom/lite/c/b/b;->c(I[II)V

    .line 47
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->t:Lcom/ifengyu/intercom/lite/c/b/b$b;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/c/b/b;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/lite/c/b/b;->a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/c/b/b;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/lite/c/b/b;->v:[I

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0060

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/b;->u:[Landroid/widget/TextView;

    const v0, 0x7f09047b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/b;->u:[Landroid/widget/TextView;

    const v0, 0x7f09047c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v0, p2, v2

    .line 7
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/b;->u:[Landroid/widget/TextView;

    const v0, 0x7f09047d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x2

    aput-object v0, p2, v3

    .line 8
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/b;->u:[Landroid/widget/TextView;

    const v0, 0x7f09047e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x3

    aput-object v0, p2, v3

    .line 9
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/b;->u:[Landroid/widget/TextView;

    const v0, 0x7f09047f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x4

    aput-object v0, p2, v3

    .line 10
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/b;->u:[Landroid/widget/TextView;

    const v0, 0x7f090480

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x5

    aput-object v0, p2, v3

    .line 11
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/b;->u:[Landroid/widget/TextView;

    const v0, 0x7f090481

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x6

    aput-object v0, p2, v3

    const p2, 0x7f0901b8

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    const v0, 0x7f090471

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/ifengyu/intercom/lite/c/b/b;->u:[Landroid/widget/TextView;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 15
    aget-object v3, v3, v1

    .line 16
    sget-object v4, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    iget-object v4, p0, Lcom/ifengyu/intercom/lite/c/b/b;->w:[I

    if-eqz v4, :cond_0

    array-length v5, v4

    iget-object v6, p0, Lcom/ifengyu/intercom/lite/c/b/b;->u:[Landroid/widget/TextView;

    array-length v6, v6

    if-ne v5, v6, :cond_0

    .line 18
    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v3, p0, Lcom/ifengyu/intercom/lite/c/b/b;->v:[I

    iget-object v4, p0, Lcom/ifengyu/intercom/lite/c/b/b;->w:[I

    aget v4, v4, v1

    aput v4, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->w:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    array-length v4, v3

    if-ne v1, v4, :cond_2

    .line 21
    array-length v1, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->y:I

    :cond_2
    const v1, 0x7f090499

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 23
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 25
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/c/b/b;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 27
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_4
    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/b$b;

    sget-object v1, Lcom/ifengyu/intercom/lite/c/b/b;->A:[Ljava/lang/String;

    invoke-direct {v0, p0, p3, v1}, Lcom/ifengyu/intercom/lite/c/b/b$b;-><init>(Lcom/ifengyu/intercom/lite/c/b/b;Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/b;->t:Lcom/ifengyu/intercom/lite/c/b/b$b;

    .line 29
    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 30
    new-instance p3, Lcom/ifengyu/intercom/lite/c/b/b$a;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/lite/c/b/b$a;-><init>(Lcom/ifengyu/intercom/lite/c/b/b;)V

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method public a(Lcom/ifengyu/intercom/lite/c/b/b$c;)Lcom/ifengyu/intercom/lite/c/b/b;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->z:Lcom/ifengyu/intercom/lite/c/b/b$c;

    return-object p0
.end method

.method protected a(I[II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/c/b/b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->x:Ljava/lang/String;

    return-object p0
.end method

.method protected b(I[II)V
    .locals 0

    return-void
.end method

.method protected c(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected c(I[II)V
    .locals 0

    return-void
.end method

.method public d(I)Lcom/ifengyu/intercom/lite/c/b/b;
    .locals 5

    .line 1
    div-int/lit8 p1, p1, 0x64

    .line 2
    invoke-static {p1}, Lcom/qmuiteam/qmui/util/g;->a(I)I

    move-result v0

    if-lez p1, :cond_1

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-array v0, v1, [I

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/b;->w:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/ifengyu/intercom/lite/c/b/b;->w:[I

    rsub-int/lit8 v3, v0, 0x6

    rem-int/lit8 v4, p1, 0xa

    aput v4, v2, v3

    .line 5
    div-int/lit8 p1, p1, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method e()V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/b;->v:[I

    iget v1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->y:I

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/b;->u:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget v0, p0, Lcom/ifengyu/intercom/lite/c/b/b;->y:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/lite/c/b/b;->y:I

    return-void
.end method

.method e(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/lite/c/b/b;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/lite/c/b/b;->y:I

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->v:[I

    aput p1, v1, v0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/c/b/b;->u:[Landroid/widget/TextView;

    aget-object v0, v1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/b;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
