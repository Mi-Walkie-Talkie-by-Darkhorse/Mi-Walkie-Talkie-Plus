.class public Landroidx/core/graphics/f;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/f$a;
    }
.end annotation


# static fields
.field private static final a:Landroidx/core/graphics/l;

.field private static final b:La/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/e<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroidx/core/graphics/k;

    invoke-direct {v0}, Landroidx/core/graphics/k;-><init>()V

    sput-object v0, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/l;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v0, Landroidx/core/graphics/j;

    invoke-direct {v0}, Landroidx/core/graphics/j;-><init>()V

    sput-object v0, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/l;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 4
    new-instance v0, Landroidx/core/graphics/i;

    invoke-direct {v0}, Landroidx/core/graphics/i;-><init>()V

    sput-object v0, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/l;

    goto :goto_0

    :cond_2
    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    .line 5
    invoke-static {}, Landroidx/core/graphics/h;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    new-instance v0, Landroidx/core/graphics/h;

    invoke-direct {v0}, Landroidx/core/graphics/h;-><init>()V

    sput-object v0, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/l;

    goto :goto_0

    .line 7
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 8
    new-instance v0, Landroidx/core/graphics/g;

    invoke-direct {v0}, Landroidx/core/graphics/g;-><init>()V

    sput-object v0, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/l;

    goto :goto_0

    .line 9
    :cond_4
    new-instance v0, Landroidx/core/graphics/l;

    invoke-direct {v0}, Landroidx/core/graphics/l;-><init>()V

    sput-object v0, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/l;

    .line 10
    :goto_0
    new-instance v0, La/b/e;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, La/b/e;-><init>(I)V

    sput-object v0, Landroidx/core/graphics/f;->b:La/b/e;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->c:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 20
    sget-object v0, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/l;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/core/graphics/l;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 21
    invoke-static {p1, p2, p4}, Landroidx/core/graphics/f;->a(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    .line 22
    sget-object p2, Landroidx/core/graphics/f;->b:La/b/e;

    invoke-virtual {p2, p1, p0}, La/b/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_1

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 25
    invoke-static {p0, p1, p2}, Landroidx/core/graphics/f;->b(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 26
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$b;I)Landroid/graphics/Typeface;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Landroidx/core/provider/FontsContractCompat$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->c:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 23
    sget-object v0, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/l;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/core/graphics/l;->a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$b;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$a;Landroid/content/res/Resources;IILandroidx/core/content/res/e$a;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 13
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/content/res/FontResourcesParserCompat$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/core/content/res/e$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->c:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 6
    instance-of v3, v0, Landroidx/core/content/res/FontResourcesParserCompat$d;

    if-eqz v3, :cond_5

    .line 7
    check-cast v0, Landroidx/core/content/res/FontResourcesParserCompat$d;

    .line 8
    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$d;->c()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3}, Landroidx/core/graphics/f;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1, v3, v2}, Landroidx/core/content/res/e$a;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    :cond_0
    return-object v3

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p7, :cond_2

    .line 11
    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$d;->a()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    :goto_0
    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eqz p7, :cond_4

    .line 12
    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$d;->d()I

    move-result v3

    move v10, v3

    goto :goto_2

    :cond_4
    const/4 v3, -0x1

    const/4 v10, -0x1

    .line 13
    :goto_2
    invoke-static/range {p6 .. p6}, Landroidx/core/content/res/e$a;->getHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v11

    .line 14
    new-instance v12, Landroidx/core/graphics/f$a;

    invoke-direct {v12, v1}, Landroidx/core/graphics/f$a;-><init>(Landroidx/core/content/res/e$a;)V

    .line 15
    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$d;->b()Landroidx/core/provider/d;

    move-result-object v7

    move-object v6, p0

    move/from16 v8, p4

    invoke-static/range {v6 .. v12}, Landroidx/core/provider/FontsContractCompat;->a(Landroid/content/Context;Landroidx/core/provider/d;IZILandroid/os/Handler;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;)Landroid/graphics/Typeface;

    move-result-object v0

    move-object v5, p2

    move/from16 v6, p4

    goto :goto_3

    .line 16
    :cond_5
    sget-object v3, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/l;

    check-cast v0, Landroidx/core/content/res/FontResourcesParserCompat$b;

    move-object v4, p0

    move-object v5, p2

    move/from16 v6, p4

    invoke-virtual {v3, p0, v0, p2, v6}, Landroidx/core/graphics/l;->a(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v1, v0, v2}, Landroidx/core/content/res/e$a;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_3

    :cond_6
    const/4 v3, -0x3

    .line 18
    invoke-virtual {v1, v3, v2}, Landroidx/core/content/res/e$a;->callbackFailAsync(ILandroid/os/Handler;)V

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 19
    sget-object v1, Landroidx/core/graphics/f;->b:La/b/e;

    invoke-static/range {p2 .. p4}, Landroidx/core/graphics/f;->a(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, La/b/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 4
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static a(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    sget-object v0, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/l;

    invoke-virtual {v0, p1}, Landroidx/core/graphics/l;->a(Landroid/graphics/Typeface;)Landroidx/core/content/res/FontResourcesParserCompat$b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/l;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p0, p1, v1, p2}, Landroidx/core/graphics/l;->a(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 1
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->c:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/core/graphics/f;->b:La/b/e;

    invoke-static {p0, p1, p2}, Landroidx/core/graphics/f;->a(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, La/b/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0
.end method
