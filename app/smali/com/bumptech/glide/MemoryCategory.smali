.class public final enum Lcom/bumptech/glide/MemoryCategory;
.super Ljava/lang/Enum;
.source "MemoryCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/MemoryCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bumptech/glide/MemoryCategory;

.field public static final enum b:Lcom/bumptech/glide/MemoryCategory;

.field public static final enum c:Lcom/bumptech/glide/MemoryCategory;

.field private static final synthetic e:[Lcom/bumptech/glide/MemoryCategory;


# instance fields
.field private d:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bumptech/glide/MemoryCategory;

    const-string v1, "LOW"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v3, v2}, Lcom/bumptech/glide/MemoryCategory;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/bumptech/glide/MemoryCategory;->a:Lcom/bumptech/glide/MemoryCategory;

    new-instance v0, Lcom/bumptech/glide/MemoryCategory;

    const-string v1, "NORMAL"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v4, v2}, Lcom/bumptech/glide/MemoryCategory;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/bumptech/glide/MemoryCategory;->b:Lcom/bumptech/glide/MemoryCategory;

    new-instance v0, Lcom/bumptech/glide/MemoryCategory;

    const-string v1, "HIGH"

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1, v5, v2}, Lcom/bumptech/glide/MemoryCategory;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/bumptech/glide/MemoryCategory;->c:Lcom/bumptech/glide/MemoryCategory;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bumptech/glide/MemoryCategory;

    sget-object v1, Lcom/bumptech/glide/MemoryCategory;->a:Lcom/bumptech/glide/MemoryCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/MemoryCategory;->b:Lcom/bumptech/glide/MemoryCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bumptech/glide/MemoryCategory;->c:Lcom/bumptech/glide/MemoryCategory;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bumptech/glide/MemoryCategory;->e:[Lcom/bumptech/glide/MemoryCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bumptech/glide/MemoryCategory;->d:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/MemoryCategory;
    .locals 1

    const-class v0, Lcom/bumptech/glide/MemoryCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/MemoryCategory;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/MemoryCategory;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/MemoryCategory;->e:[Lcom/bumptech/glide/MemoryCategory;

    invoke-virtual {v0}, [Lcom/bumptech/glide/MemoryCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/MemoryCategory;

    return-object v0
.end method
