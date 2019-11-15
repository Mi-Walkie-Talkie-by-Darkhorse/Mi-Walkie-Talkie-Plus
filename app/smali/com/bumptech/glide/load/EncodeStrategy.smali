.class public final enum Lcom/bumptech/glide/load/EncodeStrategy;
.super Ljava/lang/Enum;
.source "EncodeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/load/EncodeStrategy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bumptech/glide/load/EncodeStrategy;

.field public static final enum b:Lcom/bumptech/glide/load/EncodeStrategy;

.field public static final enum c:Lcom/bumptech/glide/load/EncodeStrategy;

.field private static final synthetic d:[Lcom/bumptech/glide/load/EncodeStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bumptech/glide/load/EncodeStrategy;

    const-string v1, "SOURCE"

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/EncodeStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/EncodeStrategy;->a:Lcom/bumptech/glide/load/EncodeStrategy;

    new-instance v0, Lcom/bumptech/glide/load/EncodeStrategy;

    const-string v1, "TRANSFORMED"

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/load/EncodeStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/EncodeStrategy;->b:Lcom/bumptech/glide/load/EncodeStrategy;

    new-instance v0, Lcom/bumptech/glide/load/EncodeStrategy;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/load/EncodeStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/EncodeStrategy;->c:Lcom/bumptech/glide/load/EncodeStrategy;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bumptech/glide/load/EncodeStrategy;

    sget-object v1, Lcom/bumptech/glide/load/EncodeStrategy;->a:Lcom/bumptech/glide/load/EncodeStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/EncodeStrategy;->b:Lcom/bumptech/glide/load/EncodeStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/load/EncodeStrategy;->c:Lcom/bumptech/glide/load/EncodeStrategy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bumptech/glide/load/EncodeStrategy;->d:[Lcom/bumptech/glide/load/EncodeStrategy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/EncodeStrategy;
    .locals 1

    const-class v0, Lcom/bumptech/glide/load/EncodeStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/EncodeStrategy;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/load/EncodeStrategy;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/EncodeStrategy;->d:[Lcom/bumptech/glide/load/EncodeStrategy;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/EncodeStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/EncodeStrategy;

    return-object v0
.end method
