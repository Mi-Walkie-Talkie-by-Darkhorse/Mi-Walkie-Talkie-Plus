.class public final enum Lio/reactivex/internal/util/NotificationLite;
.super Ljava/lang/Enum;
.source "NotificationLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/util/NotificationLite$DisposableNotification;,
        Lio/reactivex/internal/util/NotificationLite$ErrorNotification;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/reactivex/internal/util/NotificationLite;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/reactivex/internal/util/NotificationLite;

.field private static final synthetic b:[Lio/reactivex/internal/util/NotificationLite;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lio/reactivex/internal/util/NotificationLite;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/util/NotificationLite;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/util/NotificationLite;->a:Lio/reactivex/internal/util/NotificationLite;

    const/4 v0, 0x1

    new-array v0, v0, [Lio/reactivex/internal/util/NotificationLite;

    sget-object v1, Lio/reactivex/internal/util/NotificationLite;->a:Lio/reactivex/internal/util/NotificationLite;

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/internal/util/NotificationLite;->b:[Lio/reactivex/internal/util/NotificationLite;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->a:Lio/reactivex/internal/util/NotificationLite;

    return-object v0
.end method

.method public static a(Lio/reactivex/disposables/b;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;

    invoke-direct {v0, p0}, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;-><init>(Lio/reactivex/disposables/b;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    invoke-direct {v0, p0}, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lio/reactivex/q;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lio/reactivex/q",
            "<-TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    sget-object v1, Lio/reactivex/internal/util/NotificationLite;->a:Lio/reactivex/internal/util/NotificationLite;

    if-ne p0, v1, :cond_0

    invoke-interface {p1}, Lio/reactivex/q;->onComplete()V

    :goto_0
    return v0

    :cond_0
    instance-of v1, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    if-eqz v1, :cond_1

    check-cast p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    iget-object v1, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;->a:Ljava/lang/Throwable;

    invoke-interface {p1, v1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->a:Lio/reactivex/internal/util/NotificationLite;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;Lio/reactivex/q;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lio/reactivex/q",
            "<-TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lio/reactivex/internal/util/NotificationLite;->a:Lio/reactivex/internal/util/NotificationLite;

    if-ne p0, v2, :cond_0

    invoke-interface {p1}, Lio/reactivex/q;->onComplete()V

    :goto_0
    return v0

    :cond_0
    instance-of v2, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    if-eqz v2, :cond_1

    check-cast p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    iget-object v1, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;->a:Ljava/lang/Throwable;

    invoke-interface {p1, v1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;

    if-eqz v0, :cond_2

    check-cast p0, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;

    iget-object v0, p0, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;->a:Lio/reactivex/disposables/b;

    invoke-interface {p1, v0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {p1, p0}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method public static c(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    return v0
.end method

.method public static d(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;

    return v0
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p0
.end method

.method public static f(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    check-cast p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    iget-object v0, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;->a:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static g(Ljava/lang/Object;)Lio/reactivex/disposables/b;
    .locals 1

    check-cast p0, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;

    iget-object v0, p0, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;->a:Lio/reactivex/disposables/b;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/util/NotificationLite;
    .locals 1

    const-class v0, Lio/reactivex/internal/util/NotificationLite;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/util/NotificationLite;

    return-object v0
.end method

.method public static values()[Lio/reactivex/internal/util/NotificationLite;
    .locals 1

    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->b:[Lio/reactivex/internal/util/NotificationLite;

    invoke-virtual {v0}, [Lio/reactivex/internal/util/NotificationLite;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/util/NotificationLite;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NotificationLite.Complete"

    return-object v0
.end method
