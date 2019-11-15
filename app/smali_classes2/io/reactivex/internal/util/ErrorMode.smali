.class public final enum Lio/reactivex/internal/util/ErrorMode;
.super Ljava/lang/Enum;
.source "ErrorMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/reactivex/internal/util/ErrorMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/reactivex/internal/util/ErrorMode;

.field public static final enum b:Lio/reactivex/internal/util/ErrorMode;

.field public static final enum c:Lio/reactivex/internal/util/ErrorMode;

.field private static final synthetic d:[Lio/reactivex/internal/util/ErrorMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lio/reactivex/internal/util/ErrorMode;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/util/ErrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/util/ErrorMode;->a:Lio/reactivex/internal/util/ErrorMode;

    new-instance v0, Lio/reactivex/internal/util/ErrorMode;

    const-string v1, "BOUNDARY"

    invoke-direct {v0, v1, v3}, Lio/reactivex/internal/util/ErrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/util/ErrorMode;->b:Lio/reactivex/internal/util/ErrorMode;

    new-instance v0, Lio/reactivex/internal/util/ErrorMode;

    const-string v1, "END"

    invoke-direct {v0, v1, v4}, Lio/reactivex/internal/util/ErrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/util/ErrorMode;->c:Lio/reactivex/internal/util/ErrorMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/internal/util/ErrorMode;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->a:Lio/reactivex/internal/util/ErrorMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->b:Lio/reactivex/internal/util/ErrorMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->c:Lio/reactivex/internal/util/ErrorMode;

    aput-object v1, v0, v4

    sput-object v0, Lio/reactivex/internal/util/ErrorMode;->d:[Lio/reactivex/internal/util/ErrorMode;

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

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/util/ErrorMode;
    .locals 1

    const-class v0, Lio/reactivex/internal/util/ErrorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/util/ErrorMode;

    return-object v0
.end method

.method public static values()[Lio/reactivex/internal/util/ErrorMode;
    .locals 1

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->d:[Lio/reactivex/internal/util/ErrorMode;

    invoke-virtual {v0}, [Lio/reactivex/internal/util/ErrorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/util/ErrorMode;

    return-object v0
.end method
