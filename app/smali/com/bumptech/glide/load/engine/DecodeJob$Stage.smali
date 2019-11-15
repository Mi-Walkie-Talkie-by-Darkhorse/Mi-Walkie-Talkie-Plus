.class final enum Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
.super Ljava/lang/Enum;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/load/engine/DecodeJob$Stage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field public static final enum b:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field public static final enum c:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field public static final enum d:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field public static final enum e:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field public static final enum f:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field private static final synthetic g:[Lcom/bumptech/glide/load/engine/DecodeJob$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    const-string v1, "INITIALIZE"

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->a:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    const-string v1, "RESOURCE_CACHE"

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->b:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    const-string v1, "DATA_CACHE"

    invoke-direct {v0, v1, v5}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->c:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    const-string v1, "SOURCE"

    invoke-direct {v0, v1, v6}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->d:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    const-string v1, "ENCODE"

    invoke-direct {v0, v1, v7}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->e:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    const-string v1, "FINISHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->f:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->a:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->b:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->c:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->d:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->e:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->f:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->g:[Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
    .locals 1

    const-class v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->g:[Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    return-object v0
.end method
