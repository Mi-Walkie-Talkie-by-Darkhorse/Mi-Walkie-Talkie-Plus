.class public Lpl/droidsonroids/relinker/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/relinker/b$a;,
        Lpl/droidsonroids/relinker/b$b;,
        Lpl/droidsonroids/relinker/b$d;,
        Lpl/droidsonroids/relinker/b$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lpl/droidsonroids/relinker/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/b$c;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/b$c;)V
    .locals 1

    new-instance v0, Lpl/droidsonroids/relinker/c;

    invoke-direct {v0}, Lpl/droidsonroids/relinker/c;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lpl/droidsonroids/relinker/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/b$c;)V

    return-void
.end method
