.class public final Landroidx/core/app/RemoteInput;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/RemoteInput$EditChoicesBeforeSending;,
        Landroidx/core/app/RemoteInput$Source;
    }
.end annotation


# direct methods
.method static a(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    new-instance v0, Landroid/app/RemoteInput$Builder;

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->a()Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method

.method static a([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    new-array v1, v1, [Landroid/app/RemoteInput;

    const/4 v2, 0x0

    array-length v3, p0

    if-gtz v3, :cond_1

    return-object v1

    :cond_1
    aget-object p0, p0, v2

    invoke-static {p0}, Landroidx/core/app/RemoteInput;->a(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    const p0, 0x0

    throw p0
.end method
