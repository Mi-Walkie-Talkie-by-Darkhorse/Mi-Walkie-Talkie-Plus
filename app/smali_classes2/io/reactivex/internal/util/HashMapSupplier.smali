.class public final enum Lio/reactivex/internal/util/HashMapSupplier;
.super Ljava/lang/Enum;
.source "HashMapSupplier.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/reactivex/internal/util/HashMapSupplier;",
        ">;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/reactivex/internal/util/HashMapSupplier;

.field private static final synthetic b:[Lio/reactivex/internal/util/HashMapSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lio/reactivex/internal/util/HashMapSupplier;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/util/HashMapSupplier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/util/HashMapSupplier;->a:Lio/reactivex/internal/util/HashMapSupplier;

    const/4 v0, 0x1

    new-array v0, v0, [Lio/reactivex/internal/util/HashMapSupplier;

    sget-object v1, Lio/reactivex/internal/util/HashMapSupplier;->a:Lio/reactivex/internal/util/HashMapSupplier;

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/internal/util/HashMapSupplier;->b:[Lio/reactivex/internal/util/HashMapSupplier;

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
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/util/HashMapSupplier;->a:Lio/reactivex/internal/util/HashMapSupplier;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/util/HashMapSupplier;
    .locals 1

    const-class v0, Lio/reactivex/internal/util/HashMapSupplier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/util/HashMapSupplier;

    return-object v0
.end method

.method public static values()[Lio/reactivex/internal/util/HashMapSupplier;
    .locals 1

    sget-object v0, Lio/reactivex/internal/util/HashMapSupplier;->b:[Lio/reactivex/internal/util/HashMapSupplier;

    invoke-virtual {v0}, [Lio/reactivex/internal/util/HashMapSupplier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/util/HashMapSupplier;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/util/HashMapSupplier;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
