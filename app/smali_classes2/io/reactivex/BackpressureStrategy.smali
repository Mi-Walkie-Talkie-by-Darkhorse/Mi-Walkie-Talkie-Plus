.class public final enum Lio/reactivex/BackpressureStrategy;
.super Ljava/lang/Enum;
.source "BackpressureStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/reactivex/BackpressureStrategy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/reactivex/BackpressureStrategy;

.field public static final enum b:Lio/reactivex/BackpressureStrategy;

.field public static final enum c:Lio/reactivex/BackpressureStrategy;

.field public static final enum d:Lio/reactivex/BackpressureStrategy;

.field public static final enum e:Lio/reactivex/BackpressureStrategy;

.field private static final synthetic f:[Lio/reactivex/BackpressureStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lio/reactivex/BackpressureStrategy;

    const-string v1, "MISSING"

    invoke-direct {v0, v1, v2}, Lio/reactivex/BackpressureStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/BackpressureStrategy;->a:Lio/reactivex/BackpressureStrategy;

    new-instance v0, Lio/reactivex/BackpressureStrategy;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lio/reactivex/BackpressureStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/BackpressureStrategy;->b:Lio/reactivex/BackpressureStrategy;

    new-instance v0, Lio/reactivex/BackpressureStrategy;

    const-string v1, "BUFFER"

    invoke-direct {v0, v1, v4}, Lio/reactivex/BackpressureStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/BackpressureStrategy;->c:Lio/reactivex/BackpressureStrategy;

    new-instance v0, Lio/reactivex/BackpressureStrategy;

    const-string v1, "DROP"

    invoke-direct {v0, v1, v5}, Lio/reactivex/BackpressureStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/BackpressureStrategy;->d:Lio/reactivex/BackpressureStrategy;

    new-instance v0, Lio/reactivex/BackpressureStrategy;

    const-string v1, "LATEST"

    invoke-direct {v0, v1, v6}, Lio/reactivex/BackpressureStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/BackpressureStrategy;->e:Lio/reactivex/BackpressureStrategy;

    const/4 v0, 0x5

    new-array v0, v0, [Lio/reactivex/BackpressureStrategy;

    sget-object v1, Lio/reactivex/BackpressureStrategy;->a:Lio/reactivex/BackpressureStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lio/reactivex/BackpressureStrategy;->b:Lio/reactivex/BackpressureStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lio/reactivex/BackpressureStrategy;->c:Lio/reactivex/BackpressureStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lio/reactivex/BackpressureStrategy;->d:Lio/reactivex/BackpressureStrategy;

    aput-object v1, v0, v5

    sget-object v1, Lio/reactivex/BackpressureStrategy;->e:Lio/reactivex/BackpressureStrategy;

    aput-object v1, v0, v6

    sput-object v0, Lio/reactivex/BackpressureStrategy;->f:[Lio/reactivex/BackpressureStrategy;

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

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/BackpressureStrategy;
    .locals 1

    const-class v0, Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/reactivex/BackpressureStrategy;

    return-object v0
.end method

.method public static values()[Lio/reactivex/BackpressureStrategy;
    .locals 1

    sget-object v0, Lio/reactivex/BackpressureStrategy;->f:[Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v0}, [Lio/reactivex/BackpressureStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/BackpressureStrategy;

    return-object v0
.end method
