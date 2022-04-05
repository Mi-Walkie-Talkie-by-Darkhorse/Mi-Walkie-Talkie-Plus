.class public abstract Lmiui/net/IXiaomiAuthService$a;
.super Landroid/os/Binder;

# interfaces
.implements Lmiui/net/IXiaomiAuthService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/IXiaomiAuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/IXiaomiAuthService$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lmiui/net/IXiaomiAuthService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "miui.net.IXiaomiAuthService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/net/IXiaomiAuthService;

    if-eqz v1, :cond_1

    check-cast v0, Lmiui/net/IXiaomiAuthService;

    return-object v0

    :cond_1
    new-instance v0, Lmiui/net/IXiaomiAuthService$a$a;

    invoke-direct {v0, p0}, Lmiui/net/IXiaomiAuthService$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
