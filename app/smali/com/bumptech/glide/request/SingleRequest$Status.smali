.class final enum Lcom/bumptech/glide/request/SingleRequest$Status;
.super Ljava/lang/Enum;
.source "SingleRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/SingleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/request/SingleRequest$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bumptech/glide/request/SingleRequest$Status;

.field public static final enum b:Lcom/bumptech/glide/request/SingleRequest$Status;

.field public static final enum c:Lcom/bumptech/glide/request/SingleRequest$Status;

.field public static final enum d:Lcom/bumptech/glide/request/SingleRequest$Status;

.field public static final enum e:Lcom/bumptech/glide/request/SingleRequest$Status;

.field public static final enum f:Lcom/bumptech/glide/request/SingleRequest$Status;

.field public static final enum g:Lcom/bumptech/glide/request/SingleRequest$Status;

.field public static final enum h:Lcom/bumptech/glide/request/SingleRequest$Status;

.field private static final synthetic i:[Lcom/bumptech/glide/request/SingleRequest$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->a:Lcom/bumptech/glide/request/SingleRequest$Status;

    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->b:Lcom/bumptech/glide/request/SingleRequest$Status;

    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$Status;

    const-string v1, "WAITING_FOR_SIZE"

    invoke-direct {v0, v1, v5}, Lcom/bumptech/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->c:Lcom/bumptech/glide/request/SingleRequest$Status;

    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$Status;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v6}, Lcom/bumptech/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->d:Lcom/bumptech/glide/request/SingleRequest$Status;

    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$Status;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcom/bumptech/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->e:Lcom/bumptech/glide/request/SingleRequest$Status;

    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$Status;

    const-string v1, "CANCELLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->f:Lcom/bumptech/glide/request/SingleRequest$Status;

    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$Status;

    const-string v1, "CLEARED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->g:Lcom/bumptech/glide/request/SingleRequest$Status;

    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$Status;

    const-string v1, "PAUSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->h:Lcom/bumptech/glide/request/SingleRequest$Status;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->a:Lcom/bumptech/glide/request/SingleRequest$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->b:Lcom/bumptech/glide/request/SingleRequest$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->c:Lcom/bumptech/glide/request/SingleRequest$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->d:Lcom/bumptech/glide/request/SingleRequest$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->e:Lcom/bumptech/glide/request/SingleRequest$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->f:Lcom/bumptech/glide/request/SingleRequest$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->g:Lcom/bumptech/glide/request/SingleRequest$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->h:Lcom/bumptech/glide/request/SingleRequest$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->i:[Lcom/bumptech/glide/request/SingleRequest$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/request/SingleRequest$Status;
    .locals 1

    const-class v0, Lcom/bumptech/glide/request/SingleRequest$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/SingleRequest$Status;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/request/SingleRequest$Status;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->i:[Lcom/bumptech/glide/request/SingleRequest$Status;

    invoke-virtual {v0}, [Lcom/bumptech/glide/request/SingleRequest$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/request/SingleRequest$Status;

    return-object v0
.end method
