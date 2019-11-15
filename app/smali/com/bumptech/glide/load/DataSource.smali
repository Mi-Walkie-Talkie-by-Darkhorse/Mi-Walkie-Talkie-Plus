.class public final enum Lcom/bumptech/glide/load/DataSource;
.super Ljava/lang/Enum;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/load/DataSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bumptech/glide/load/DataSource;

.field public static final enum b:Lcom/bumptech/glide/load/DataSource;

.field public static final enum c:Lcom/bumptech/glide/load/DataSource;

.field public static final enum d:Lcom/bumptech/glide/load/DataSource;

.field public static final enum e:Lcom/bumptech/glide/load/DataSource;

.field private static final synthetic f:[Lcom/bumptech/glide/load/DataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bumptech/glide/load/DataSource;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/DataSource;->a:Lcom/bumptech/glide/load/DataSource;

    new-instance v0, Lcom/bumptech/glide/load/DataSource;

    const-string v1, "REMOTE"

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/load/DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/DataSource;->b:Lcom/bumptech/glide/load/DataSource;

    new-instance v0, Lcom/bumptech/glide/load/DataSource;

    const-string v1, "DATA_DISK_CACHE"

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/load/DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/DataSource;->c:Lcom/bumptech/glide/load/DataSource;

    new-instance v0, Lcom/bumptech/glide/load/DataSource;

    const-string v1, "RESOURCE_DISK_CACHE"

    invoke-direct {v0, v1, v5}, Lcom/bumptech/glide/load/DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/DataSource;->d:Lcom/bumptech/glide/load/DataSource;

    new-instance v0, Lcom/bumptech/glide/load/DataSource;

    const-string v1, "MEMORY_CACHE"

    invoke-direct {v0, v1, v6}, Lcom/bumptech/glide/load/DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/DataSource;->e:Lcom/bumptech/glide/load/DataSource;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bumptech/glide/load/DataSource;

    sget-object v1, Lcom/bumptech/glide/load/DataSource;->a:Lcom/bumptech/glide/load/DataSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/DataSource;->b:Lcom/bumptech/glide/load/DataSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/load/DataSource;->c:Lcom/bumptech/glide/load/DataSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bumptech/glide/load/DataSource;->d:Lcom/bumptech/glide/load/DataSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bumptech/glide/load/DataSource;->e:Lcom/bumptech/glide/load/DataSource;

    aput-object v1, v0, v6

    sput-object v0, Lcom/bumptech/glide/load/DataSource;->f:[Lcom/bumptech/glide/load/DataSource;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/DataSource;
    .locals 1

    const-class v0, Lcom/bumptech/glide/load/DataSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/load/DataSource;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/DataSource;->f:[Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/DataSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method
