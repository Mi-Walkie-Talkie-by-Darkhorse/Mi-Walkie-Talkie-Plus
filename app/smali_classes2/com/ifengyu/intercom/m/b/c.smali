.class public Lcom/ifengyu/intercom/m/b/c;
.super Lcom/ifengyu/intercom/m/a/a;
.source "ChannelDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/m/b/c$d;,
        Lcom/ifengyu/intercom/m/b/c$b;,
        Lcom/ifengyu/intercom/m/b/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/m/a/a<",
        "Lcom/ifengyu/intercom/m/b/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final B:[Ljava/lang/String;

.field private static final C:[I


# instance fields
.field private A:Lcom/ifengyu/intercom/m/b/c$c;

.field private u:Lcom/ifengyu/intercom/m/b/c$b;

.field private v:[Landroid/widget/TextView;

.field private w:[I

.field private x:[I

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "3"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "4"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "7"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    aput-object v3, v1, v2

    const v2, 0x7f1100cd

    .line 1
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sput-object v1, Lcom/ifengyu/intercom/m/b/c;->B:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ifengyu/intercom/m/b/c;->C:[I

    return-void

    nop

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
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/m/a/a;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/m/b/c;->z:I

    const/4 v0, 0x7

    new-array v1, v0, [Landroid/widget/TextView;

    .line 3
    iput-object v1, p0, Lcom/ifengyu/intercom/m/b/c;->v:[Landroid/widget/TextView;

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/m/b/c;->w:[I

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/m/b/c;->w:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 6
    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic E(Lcom/ifengyu/intercom/m/b/c;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/m/b/c;->J(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic F(Lcom/ifengyu/intercom/m/b/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/m/b/c;->z:I

    return p0
.end method

.method static synthetic G(Lcom/ifengyu/intercom/m/b/c;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/m/b/c;->w:[I

    return-object p0
.end method

.method private J(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 1
    iget p1, p0, Lcom/ifengyu/intercom/m/b/c;->z:I

    iget-object p2, p0, Lcom/ifengyu/intercom/m/b/c;->v:[Landroid/widget/TextView;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    if-lt p1, p2, :cond_3

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/m/b/c;->A:Lcom/ifengyu/intercom/m/b/c$c;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 3
    :goto_0
    iget-object p3, p0, Lcom/ifengyu/intercom/m/b/c;->w:[I

    array-length p4, p3

    if-ge p1, p4, :cond_0

    int-to-double p4, p2

    .line 4
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

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/m/b/c;->A:Lcom/ifengyu/intercom/m/b/c$c;

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-interface {p1, p3, p2}, Lcom/ifengyu/intercom/m/b/c$c;->a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    goto :goto_1

    :cond_1
    const/16 p1, 0x9

    const/4 p2, -0x1

    if-ne p3, p1, :cond_2

    .line 6
    iget p1, p0, Lcom/ifengyu/intercom/m/b/c;->z:I

    if-ltz p1, :cond_3

    iget-object p4, p0, Lcom/ifengyu/intercom/m/b/c;->v:[Landroid/widget/TextView;

    array-length p5, p4

    if-ge p1, p5, :cond_3

    .line 7
    aget-object p1, p4, p1

    const-string p4, ""

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/m/b/c;->w:[I

    iget p4, p0, Lcom/ifengyu/intercom/m/b/c;->z:I

    aput p2, p1, p4

    add-int/lit8 p4, p4, -0x1

    .line 9
    iput p4, p0, Lcom/ifengyu/intercom/m/b/c;->z:I

    .line 10
    invoke-virtual {p0, p4, p1, p3}, Lcom/ifengyu/intercom/m/b/c;->M(I[II)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/m/b/c;->u:Lcom/ifengyu/intercom/m/b/c$b;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 12
    :cond_2
    iget p1, p0, Lcom/ifengyu/intercom/m/b/c;->z:I

    if-lt p1, p2, :cond_3

    iget-object p2, p0, Lcom/ifengyu/intercom/m/b/c;->v:[Landroid/widget/TextView;

    array-length p4, p2

    add-int/lit8 p4, p4, -0x1

    if-ge p1, p4, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 13
    iput p1, p0, Lcom/ifengyu/intercom/m/b/c;->z:I

    .line 14
    aget-object p1, p2, p1

    sget-object p2, Lcom/ifengyu/intercom/m/b/c;->B:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/m/b/c;->w:[I

    iget p2, p0, Lcom/ifengyu/intercom/m/b/c;->z:I

    sget-object p4, Lcom/ifengyu/intercom/m/b/c;->C:[I

    aget p4, p4, p3

    aput p4, p1, p2

    .line 16
    invoke-virtual {p0, p2, p1, p3}, Lcom/ifengyu/intercom/m/b/c;->N(I[II)V

    .line 17
    iget-object p1, p0, Lcom/ifengyu/intercom/m/b/c;->u:Lcom/ifengyu/intercom/m/b/c$b;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected H()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/m/b/c;->w:[I

    iget v1, p0, Lcom/ifengyu/intercom/m/b/c;->z:I

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/m/b/c;->v:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget v0, p0, Lcom/ifengyu/intercom/m/b/c;->z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/m/b/c;->z:I

    return-void
.end method

.method protected I()I
    .locals 1

    const v0, 0x7f0c0046

    return v0
.end method

.method protected K()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/m/b/c;->y:Ljava/lang/String;

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

.method protected L(I[II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected M(I[II)V
    .locals 0

    return-void
.end method

.method protected N(I[II)V
    .locals 0

    return-void
.end method

.method public O(Lcom/ifengyu/intercom/m/b/c$c;)Lcom/ifengyu/intercom/m/b/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/m/b/c;->A:Lcom/ifengyu/intercom/m/b/c$c;

    return-object p0
.end method

.method protected P(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/m/b/c;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/m/b/c;->z:I

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/m/b/c;->w:[I

    aput p1, v1, v0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/m/b/c;->v:[Landroid/widget/TextView;

    aget-object v0, v1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Q(Ljava/lang/String;)Lcom/ifengyu/intercom/m/b/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/m/b/c;->y:Ljava/lang/String;

    return-object p0
.end method

.method protected k(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/m/b/c;->I()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/m/b/c;->v:[Landroid/widget/TextView;

    const v0, 0x7f0904e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/m/b/c;->v:[Landroid/widget/TextView;

    const v0, 0x7f0904e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v0, p2, v2

    .line 4
    iget-object p2, p0, Lcom/ifengyu/intercom/m/b/c;->v:[Landroid/widget/TextView;

    const v0, 0x7f0904e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x2

    aput-object v0, p2, v3

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/m/b/c;->v:[Landroid/widget/TextView;

    const v0, 0x7f0904ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x3

    aput-object v0, p2, v3

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/m/b/c;->v:[Landroid/widget/TextView;

    const v0, 0x7f0904eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x4

    aput-object v0, p2, v3

    .line 7
    iget-object p2, p0, Lcom/ifengyu/intercom/m/b/c;->v:[Landroid/widget/TextView;

    const v0, 0x7f0904ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x5

    aput-object v0, p2, v3

    .line 8
    iget-object p2, p0, Lcom/ifengyu/intercom/m/b/c;->v:[Landroid/widget/TextView;

    const v0, 0x7f0904ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x6

    aput-object v0, p2, v3

    const p2, 0x7f090200

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    const v0, 0x7f0904d4

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/ifengyu/intercom/m/b/c;->v:[Landroid/widget/TextView;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 12
    aget-object v3, v3, v1

    .line 13
    sget-object v4, Lcom/ifengyu/intercom/j/a;->c:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    iget-object v4, p0, Lcom/ifengyu/intercom/m/b/c;->x:[I

    if-eqz v4, :cond_0

    array-length v5, v4

    iget-object v6, p0, Lcom/ifengyu/intercom/m/b/c;->v:[Landroid/widget/TextView;

    array-length v6, v6

    if-ne v5, v6, :cond_0

    .line 15
    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v3, p0, Lcom/ifengyu/intercom/m/b/c;->w:[I

    iget-object v4, p0, Lcom/ifengyu/intercom/m/b/c;->x:[I

    aget v4, v4, v1

    aput v4, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/m/b/c;->x:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    array-length v4, v3

    if-ne v1, v4, :cond_2

    .line 18
    array-length v1, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ifengyu/intercom/m/b/c;->z:I

    :cond_2
    const v1, 0x7f090505

    .line 19
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 20
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 22
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/m/b/c;->K()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 24
    iget-object v1, p0, Lcom/ifengyu/intercom/m/b/c;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_4
    new-instance v0, Lcom/ifengyu/intercom/m/b/c$b;

    sget-object v1, Lcom/ifengyu/intercom/m/b/c;->B:[Ljava/lang/String;

    invoke-direct {v0, p0, p3, v1}, Lcom/ifengyu/intercom/m/b/c$b;-><init>(Lcom/ifengyu/intercom/m/b/c;Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/m/b/c;->u:Lcom/ifengyu/intercom/m/b/c$b;

    .line 26
    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    new-instance p3, Lcom/ifengyu/intercom/m/b/c$a;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/m/b/c$a;-><init>(Lcom/ifengyu/intercom/m/b/c;)V

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method protected q(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
