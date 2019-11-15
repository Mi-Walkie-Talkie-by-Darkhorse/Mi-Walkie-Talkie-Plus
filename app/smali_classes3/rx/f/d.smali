.class public final Lrx/f/d;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/f/d$1;,
        Lrx/f/d$a;
    }
.end annotation


# static fields
.field private static final a:Lrx/f/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrx/f/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/f/d$a;-><init>(Lrx/f/d$1;)V

    sput-object v0, Lrx/f/d;->a:Lrx/f/d$a;

    return-void
.end method

.method public static a()Lrx/f;
    .locals 1

    invoke-static {}, Lrx/f/a;->a()Lrx/f/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/b/a;)Lrx/f;
    .locals 1

    invoke-static {p0}, Lrx/f/a;->a(Lrx/b/a;)Lrx/f/a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lrx/f;
    .locals 1

    sget-object v0, Lrx/f/d;->a:Lrx/f/d$a;

    return-object v0
.end method
