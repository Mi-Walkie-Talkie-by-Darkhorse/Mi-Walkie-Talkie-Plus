.class public Lde/greenrobot/event/util/ErrorDialogManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;
    }
.end annotation


# static fields
.field public static a:Lde/greenrobot/event/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/event/util/b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected static a(Lde/greenrobot/event/util/c;)V
    .locals 2

    sget-object v0, Lde/greenrobot/event/util/ErrorDialogManager;->a:Lde/greenrobot/event/util/b;

    iget-object v0, v0, Lde/greenrobot/event/util/b;->a:Lde/greenrobot/event/util/a;

    iget-boolean v1, v0, Lde/greenrobot/event/util/a;->a:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lde/greenrobot/event/util/a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lde/greenrobot/event/c;->p:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lde/greenrobot/event/util/c;->a:Ljava/lang/Throwable;

    const-string v1, "Error dialog manager received exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method static synthetic a(Ljava/lang/Object;Lde/greenrobot/event/util/c;)Z
    .locals 0

    invoke-static {p0, p1}, Lde/greenrobot/event/util/ErrorDialogManager;->b(Ljava/lang/Object;Lde/greenrobot/event/util/c;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/Object;Lde/greenrobot/event/util/c;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Lde/greenrobot/event/util/c;->a()Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method
