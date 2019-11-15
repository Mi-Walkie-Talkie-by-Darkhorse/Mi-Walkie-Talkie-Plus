.class public final enum Lio/reactivex/internal/util/ArrayListSupplier;
.super Ljava/lang/Enum;
.source "ArrayListSupplier.java"

# interfaces
.implements Lio/reactivex/b/g;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/reactivex/internal/util/ArrayListSupplier;",
        ">;",
        "Lio/reactivex/b/g",
        "<",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;>;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/reactivex/internal/util/ArrayListSupplier;

.field private static final synthetic b:[Lio/reactivex/internal/util/ArrayListSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lio/reactivex/internal/util/ArrayListSupplier;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/util/ArrayListSupplier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/util/ArrayListSupplier;->a:Lio/reactivex/internal/util/ArrayListSupplier;

    const/4 v0, 0x1

    new-array v0, v0, [Lio/reactivex/internal/util/ArrayListSupplier;

    sget-object v1, Lio/reactivex/internal/util/ArrayListSupplier;->a:Lio/reactivex/internal/util/ArrayListSupplier;

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/internal/util/ArrayListSupplier;->b:[Lio/reactivex/internal/util/ArrayListSupplier;

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

.method public static a()Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/util/ArrayListSupplier;->a:Lio/reactivex/internal/util/ArrayListSupplier;

    return-object v0
.end method

.method public static b()Lio/reactivex/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/b/g",
            "<TO;",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/util/ArrayListSupplier;->a:Lio/reactivex/internal/util/ArrayListSupplier;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/util/ArrayListSupplier;
    .locals 1

    const-class v0, Lio/reactivex/internal/util/ArrayListSupplier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/util/ArrayListSupplier;

    return-object v0
.end method

.method public static values()[Lio/reactivex/internal/util/ArrayListSupplier;
    .locals 1

    sget-object v0, Lio/reactivex/internal/util/ArrayListSupplier;->b:[Lio/reactivex/internal/util/ArrayListSupplier;

    invoke-virtual {v0}, [Lio/reactivex/internal/util/ArrayListSupplier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/util/ArrayListSupplier;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/internal/util/ArrayListSupplier;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/util/ArrayListSupplier;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
