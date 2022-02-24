.class Landroidx/media/c;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi23.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/c$a;,
        Landroidx/media/c$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroidx/media/c$b;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media/c$a;

    invoke-direct {v0, p0, p1}, Landroidx/media/c$a;-><init>(Landroid/content/Context;Landroidx/media/c$b;)V

    return-object v0
.end method
