.class public final enum Lio/reactivex/internal/util/EmptyComponent;
.super Ljava/lang/Enum;
.source "EmptyComponent.java"

# interfaces
.implements Lio/reactivex/b;
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/f;
.implements Lio/reactivex/h;
.implements Lio/reactivex/q;
.implements Lio/reactivex/t;
.implements Lorg/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/reactivex/internal/util/EmptyComponent;",
        ">;",
        "Lio/reactivex/b;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/f",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/h",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/q",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/t",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/a/c;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/reactivex/internal/util/EmptyComponent;

.field private static final synthetic b:[Lio/reactivex/internal/util/EmptyComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lio/reactivex/internal/util/EmptyComponent;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/util/EmptyComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/util/EmptyComponent;->a:Lio/reactivex/internal/util/EmptyComponent;

    const/4 v0, 0x1

    new-array v0, v0, [Lio/reactivex/internal/util/EmptyComponent;

    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->a:Lio/reactivex/internal/util/EmptyComponent;

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/internal/util/EmptyComponent;->b:[Lio/reactivex/internal/util/EmptyComponent;

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

.method public static b()Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/q",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/util/EmptyComponent;->a:Lio/reactivex/internal/util/EmptyComponent;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/util/EmptyComponent;
    .locals 1

    const-class v0, Lio/reactivex/internal/util/EmptyComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/util/EmptyComponent;

    return-object v0
.end method

.method public static values()[Lio/reactivex/internal/util/EmptyComponent;
    .locals 1

    sget-object v0, Lio/reactivex/internal/util/EmptyComponent;->b:[Lio/reactivex/internal/util/EmptyComponent;

    invoke-virtual {v0}, [Lio/reactivex/internal/util/EmptyComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/util/EmptyComponent;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/a/c;)V
    .locals 0

    invoke-interface {p1}, Lorg/a/c;->a()V

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 0

    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    return-void
.end method
