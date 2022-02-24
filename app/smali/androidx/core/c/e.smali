.class public final Landroidx/core/c/e;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/c/e$f;,
        Landroidx/core/c/e$a;,
        Landroidx/core/c/e$b;,
        Landroidx/core/c/e$c;,
        Landroidx/core/c/e$e;,
        Landroidx/core/c/e$d;
    }
.end annotation


# static fields
.field public static final a:Landroidx/core/c/d;

.field public static final b:Landroidx/core/c/d;

.field public static final c:Landroidx/core/c/d;

.field public static final d:Landroidx/core/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/core/c/e$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/core/c/e$e;-><init>(Landroidx/core/c/e$c;Z)V

    sput-object v0, Landroidx/core/c/e;->a:Landroidx/core/c/d;

    .line 2
    new-instance v0, Landroidx/core/c/e$e;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/core/c/e$e;-><init>(Landroidx/core/c/e$c;Z)V

    sput-object v0, Landroidx/core/c/e;->b:Landroidx/core/c/d;

    .line 3
    new-instance v0, Landroidx/core/c/e$e;

    sget-object v1, Landroidx/core/c/e$b;->a:Landroidx/core/c/e$b;

    invoke-direct {v0, v1, v2}, Landroidx/core/c/e$e;-><init>(Landroidx/core/c/e$c;Z)V

    sput-object v0, Landroidx/core/c/e;->c:Landroidx/core/c/d;

    .line 4
    new-instance v0, Landroidx/core/c/e$e;

    sget-object v1, Landroidx/core/c/e$b;->a:Landroidx/core/c/e$b;

    invoke-direct {v0, v1, v3}, Landroidx/core/c/e$e;-><init>(Landroidx/core/c/e$c;Z)V

    sput-object v0, Landroidx/core/c/e;->d:Landroidx/core/c/d;

    .line 5
    new-instance v0, Landroidx/core/c/e$e;

    sget-object v1, Landroidx/core/c/e$a;->b:Landroidx/core/c/e$a;

    invoke-direct {v0, v1, v2}, Landroidx/core/c/e$e;-><init>(Landroidx/core/c/e$c;Z)V

    .line 6
    sget-object v0, Landroidx/core/c/e$f;->b:Landroidx/core/c/e$f;

    return-void
.end method

.method static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method static b(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
