.class final enum Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;
.super Ljava/lang/Enum;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RunReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

.field public static final enum b:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

.field public static final enum c:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

.field private static final synthetic d:[Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    const-string v1, "INITIALIZE"

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->a:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    const-string v1, "SWITCH_TO_SOURCE_SERVICE"

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->b:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    const-string v1, "DECODE_DATA"

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->c:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->a:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->b:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->c:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->d:[Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;
    .locals 1

    const-class v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->d:[Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    return-object v0
.end method
