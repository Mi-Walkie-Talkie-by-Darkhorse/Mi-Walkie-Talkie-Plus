.class public Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;
.super Ljava/lang/Object;
.source "QMUIQQFaceCompiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;,
        Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;,
        Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/qmuiteam/qmui/qqface/a;",
            "Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/qmuiteam/qmui/qqface/a;


# instance fields
.field private a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/CharSequence;",
            "Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/qmuiteam/qmui/qqface/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->c:Ljava/util/Map;

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/qqface/b;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/qqface/b;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->d:Lcom/qmuiteam/qmui/qqface/a;

    return-void
.end method

.method private constructor <init>(Lcom/qmuiteam/qmui/qqface/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->a:Landroid/util/LruCache;

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->b:Lcom/qmuiteam/qmui/qqface/a;

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;Ljava/lang/CharSequence;IIZ)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->d(Ljava/lang/CharSequence;IIZ)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/CharSequence;IIZ)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/qmuiteam/qmui/util/g;->f(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p2, :cond_7

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_7

    if-le p3, p2, :cond_6

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p3, v0, :cond_1

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, p3

    :goto_0
    const/4 p3, 0x0

    if-nez p4, :cond_4

    .line 4
    instance-of p4, p1, Landroid/text/Spannable;

    if-eqz p4, :cond_4

    .line 5
    move-object p4, p1

    check-cast p4, Landroid/text/Spannable;

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const-class v3, Lcom/qmuiteam/qmui/span/d;

    .line 7
    invoke-interface {p4, p3, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qmuiteam/qmui/span/d;

    .line 8
    new-instance v3, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$a;

    invoke-direct {v3, p0, p4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$a;-><init>(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;Landroid/text/Spannable;)V

    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 9
    array-length v3, v0

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 10
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 11
    :goto_2
    array-length v4, v0

    if-ge p3, v4, :cond_3

    mul-int/lit8 v4, p3, 0x2

    .line 12
    aget-object v6, v0, p3

    invoke-interface {p4, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    aput v6, v1, v4

    add-int/2addr v4, v2

    .line 13
    aget-object v6, v0, p3

    invoke-interface {p4, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    aput v6, v1, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    move-object v6, v0

    move-object v7, v1

    move p3, v3

    goto :goto_3

    :cond_4
    move-object v6, v1

    move-object v7, v6

    .line 14
    :goto_3
    iget-object p4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->a:Landroid/util/LruCache;

    invoke-virtual {p4, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    if-nez p3, :cond_5

    if-eqz p4, :cond_5

    .line 15
    invoke-virtual {p4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->f()I

    move-result p3

    if-ne p2, p3, :cond_5

    invoke-virtual {p4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->c()I

    move-result p3

    if-ne v5, p3, :cond_5

    return-object p4

    :cond_5
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    .line 16
    invoke-direct/range {v2 .. v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->h(Ljava/lang/CharSequence;II[Lcom/qmuiteam/qmui/span/d;[I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    move-result-object p2

    .line 17
    iget-object p3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->a:Landroid/util/LruCache;

    invoke-virtual {p3, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 18
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end must > start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start must >= 0 and < text.length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static e()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->d:Lcom/qmuiteam/qmui/qqface/a;

    invoke-static {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->f(Lcom/qmuiteam/qmui/qqface/a;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lcom/qmuiteam/qmui/qqface/a;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;-><init>(Lcom/qmuiteam/qmui/qqface/a;)V

    .line 3
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private h(Ljava/lang/CharSequence;II[Lcom/qmuiteam/qmui/span/d;[I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    .line 2
    array-length v9, v4

    if-lez v9, :cond_0

    .line 3
    aget v9, p5, v7

    .line 4
    aget v10, p5, v8

    move v11, v10

    move v10, v9

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    const/4 v9, -0x1

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    .line 5
    :goto_0
    new-instance v12, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    invoke-direct {v12, v2, v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;-><init>(II)V

    if-lez v2, :cond_1

    .line 6
    invoke-interface {v1, v7, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v13}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->d(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;)V

    :cond_1
    move v14, v2

    move v15, v14

    move-object v13, v4

    :goto_1
    const/16 v16, 0x0

    :goto_2
    if-ge v14, v3, :cond_18

    if-ne v14, v10, :cond_5

    sub-int v17, v14, v15

    if-lez v17, :cond_3

    if-eqz v16, :cond_2

    add-int/lit8 v15, v15, -0x1

    const/16 v16, 0x0

    .line 7
    :cond_2
    invoke-interface {v1, v15, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->d(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;)V

    .line 8
    :cond_3
    invoke-interface {v1, v10, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    aget-object v14, v13, v9

    .line 9
    invoke-static {v10, v14, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->e(Ljava/lang/CharSequence;Lcom/qmuiteam/qmui/span/d;Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;)V

    add-int/lit8 v9, v9, 0x1

    .line 10
    array-length v10, v13

    if-lt v9, v10, :cond_4

    move v14, v11

    move v15, v14

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    goto :goto_2

    :cond_4
    mul-int/lit8 v10, v9, 0x2

    .line 11
    aget v14, p5, v10

    add-int/2addr v10, v8

    .line 12
    aget v10, p5, v10

    move v15, v11

    move v11, v10

    move v10, v14

    move v14, v15

    goto :goto_2

    .line 13
    :cond_5
    invoke-interface {v1, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_7

    sub-int v6, v14, v15

    if-lez v6, :cond_6

    .line 14
    invoke-interface {v1, v15, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->d(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;)V

    :cond_6
    add-int/lit8 v6, v14, 0x1

    move v15, v14

    const/4 v7, 0x0

    const/16 v16, 0x1

    move v14, v6

    goto :goto_2

    :cond_7
    const/16 v7, 0x5d

    if-ne v6, v7, :cond_a

    if-eqz v16, :cond_a

    add-int/lit8 v14, v14, 0x1

    sub-int v6, v14, v15

    if-lez v6, :cond_9

    .line 15
    invoke-interface {v1, v15, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 16
    iget-object v7, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->b:Lcom/qmuiteam/qmui/qqface/a;

    invoke-interface {v7, v6}, Lcom/qmuiteam/qmui/qqface/a;->c(Ljava/lang/CharSequence;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 17
    invoke-static {v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->c(Landroid/graphics/drawable/Drawable;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;)V

    goto :goto_3

    .line 18
    :cond_8
    iget-object v7, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->b:Lcom/qmuiteam/qmui/qqface/a;

    invoke-interface {v7, v6}, Lcom/qmuiteam/qmui/qqface/a;->e(Ljava/lang/CharSequence;)I

    move-result v6

    if-eqz v6, :cond_9

    .line 19
    invoke-static {v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->a(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;)V

    :goto_3
    move v15, v14

    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_a
    const/16 v7, 0xa

    if-ne v6, v7, :cond_d

    if-eqz v16, :cond_b

    const/16 v16, 0x0

    :cond_b
    sub-int v6, v14, v15

    if-lez v6, :cond_c

    .line 20
    invoke-interface {v1, v15, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->d(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;)V

    .line 21
    :cond_c
    invoke-static {}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->b()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;)V

    add-int/lit8 v15, v14, 0x1

    move v14, v15

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_d
    if-eqz v16, :cond_f

    sub-int v7, v14, v15

    const/16 v8, 0x8

    if-le v7, v8, :cond_e

    const/16 v16, 0x0

    goto :goto_4

    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_9

    .line 22
    :cond_f
    :goto_4
    iget-object v7, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->b:Lcom/qmuiteam/qmui/qqface/a;

    invoke-interface {v7, v6}, Lcom/qmuiteam/qmui/qqface/a;->h(C)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 23
    iget-object v7, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->b:Lcom/qmuiteam/qmui/qqface/a;

    invoke-interface {v7, v6}, Lcom/qmuiteam/qmui/qqface/a;->d(C)I

    move-result v6

    if-nez v6, :cond_10

    goto :goto_5

    :cond_10
    const/4 v7, 0x1

    goto :goto_6

    :cond_11
    const/4 v6, 0x0

    :goto_5
    const/4 v7, 0x0

    :goto_6
    if-nez v6, :cond_15

    .line 24
    invoke-static {v1, v14}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 25
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    .line 26
    iget-object v13, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->b:Lcom/qmuiteam/qmui/qqface/a;

    invoke-interface {v13, v7}, Lcom/qmuiteam/qmui/qqface/a;->g(I)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 27
    iget-object v6, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->b:Lcom/qmuiteam/qmui/qqface/a;

    invoke-interface {v6, v7}, Lcom/qmuiteam/qmui/qqface/a;->a(I)I

    move-result v6

    :cond_12
    if-nez v6, :cond_14

    add-int v13, v2, v8

    if-ge v13, v3, :cond_14

    .line 28
    invoke-static {v1, v13}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 29
    iget-object v13, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->b:Lcom/qmuiteam/qmui/qqface/a;

    invoke-interface {v13, v7, v6}, Lcom/qmuiteam/qmui/qqface/a;->b(II)I

    move-result v7

    if-eqz v7, :cond_13

    .line 30
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v6, v8

    move/from16 v18, v7

    move v7, v6

    move/from16 v6, v18

    goto :goto_7

    :cond_13
    move v6, v7

    :cond_14
    move v7, v8

    :cond_15
    :goto_7
    if-eqz v6, :cond_17

    if-eq v15, v14, :cond_16

    .line 31
    invoke-interface {v1, v15, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->d(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;)V

    .line 32
    :cond_16
    invoke-static {v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->a(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;)V

    add-int v15, v14, v7

    move v6, v15

    goto :goto_8

    :cond_17
    add-int/lit8 v6, v14, 0x1

    move/from16 v18, v15

    move v15, v6

    move/from16 v6, v18

    :goto_8
    move-object v13, v4

    move v14, v15

    move v15, v6

    :goto_9
    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_18
    if-ge v15, v3, :cond_19

    .line 33
    invoke-interface {v1, v15, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->d(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;)V

    :cond_19
    return-object v12
.end method


# virtual methods
.method public b(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/qmuiteam/qmui/util/g;->f(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->c(Ljava/lang/CharSequence;II)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/CharSequence;II)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->d(Ljava/lang/CharSequence;IIZ)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    move-result-object p1

    return-object p1
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->b:Lcom/qmuiteam/qmui/qqface/a;

    invoke-interface {v0}, Lcom/qmuiteam/qmui/qqface/a;->f()I

    move-result v0

    return v0
.end method
