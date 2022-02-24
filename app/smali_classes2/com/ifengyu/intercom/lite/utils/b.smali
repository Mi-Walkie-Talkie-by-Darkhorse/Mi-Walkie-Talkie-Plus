.class public Lcom/ifengyu/intercom/lite/utils/b;
.super Ljava/lang/Object;
.source "ByteLengthFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/lite/utils/b;->a:I

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 2
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x80

    if-ge v0, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x3

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/lite/utils/b;->a:I

    invoke-direct {p0, p4}, Lcom/ifengyu/intercom/lite/utils/b;->a(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/ifengyu/intercom/lite/utils/b;->a(Ljava/lang/CharSequence;)I

    move-result p4

    sub-int/2addr v1, p4

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/ifengyu/intercom/lite/utils/b;->a(Ljava/lang/CharSequence;)I

    move-result p3

    if-lt v0, p3, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 p3, 0x0

    move p4, p2

    :goto_0
    if-ge p3, v0, :cond_3

    add-int/lit8 p5, p4, 0x1

    .line 3
    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    const/16 p6, 0x80

    if-ge p4, p6, :cond_2

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, 0x3

    :goto_1
    move p4, p5

    goto :goto_0

    :cond_3
    if-le p3, v0, :cond_4

    add-int/lit8 p4, p4, -0x1

    .line 4
    :cond_4
    invoke-interface {p1, p2, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
